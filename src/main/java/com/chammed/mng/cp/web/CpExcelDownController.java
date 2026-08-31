package com.chammed.mng.cp.web;

import com.chammed.mng.cp.service.CpMngService;
import com.chammed.mng.cp.service.CpSearchVO;
import com.chammed.mng.cp.service.CpVO;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 기존 CpController에 메서드를 합치거나, 동일 URL 매핑으로 등록하세요.
 *
 * RequestMapping 예시:
 * @RequestMapping("/mng/cp")
 */
@Controller
@RequestMapping("/mng/cp")
public class CpExcelDownController {

    @Resource(name = "cpMngService")
    private CpMngService cpMngService;

    @PostMapping("/cpExcelDown")
    public void cpExcelDown(
            @RequestParam(value = "downloadAll", defaultValue = "N") String downloadAll,
            @RequestParam(value = "cpIdxs", required = false) String cpIdxs,
            @RequestParam(value = "schCondition", required = false) String schCondition,
            @RequestParam(value = "schKeyWord", required = false) String schKeyWord,
            @RequestParam(value = "cpGubun", required = false) String cpGubun,
            HttpServletResponse response
    ) throws Exception {
        CpSearchVO searchVO = new CpSearchVO();
        searchVO.setSchCondition(schCondition);
        searchVO.setSchKeyWord(schKeyWord);
        searchVO.setCpGubun(cpGubun);

        List<CpVO> resultList;
        if ("Y".equalsIgnoreCase(downloadAll)) {
            resultList = cpMngService.selectCpExcelList(searchVO);
        } else {
            if (!StringUtils.hasText(cpIdxs)) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "선택된 항목이 없습니다.");
                return;
            }
            List<String> idxList = Arrays.stream(cpIdxs.split(","))
                    .map(String::trim)
                    .filter(StringUtils::hasText)
                    .collect(Collectors.toList());
            resultList = cpMngService.selectCpExcelListByIds(idxList);
        }

        String fileName = "실사참여수집현황_" + new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date()) + ".xlsx";
        String encodedFileName = URLEncoder.encode(fileName, StandardCharsets.UTF_8.name()).replaceAll("\\+", "%20");

        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + encodedFileName + "\"; filename*=UTF-8''" + encodedFileName);

        try (SXSSFWorkbook workbook = new SXSSFWorkbook(100)) {
            Sheet sheet = workbook.createSheet("실사참여");
            String[] headers = {
                    "No", "회사구분", "회사명", "참메드 담당자명", "사업자번호", "대표자명",
                    "담당자 성명", "연락처", "이메일", "등록일시", "실사내용"
            };

            Row headerRow = sheet.createRow(0);
            for (int i = 0; i < headers.length; i++) {
                Cell cell = headerRow.createCell(i);
                cell.setCellValue(headers[i]);
            }

            int rowNum = 1;
            for (CpVO vo : resultList) {
                Row row = sheet.createRow(rowNum);
                int col = 0;
                row.createCell(col++).setCellValue(rowNum);
                row.createCell(col++).setCellValue(nvl(vo.getCpGubun()));
                row.createCell(col++).setCellValue(nvl(vo.getCpName()));
                row.createCell(col++).setCellValue(nvl(vo.getCpChammedUser()));
                row.createCell(col++).setCellValue(nvl(vo.getCpBiznum()));
                row.createCell(col++).setCellValue(nvl(vo.getCpCeo()));
                row.createCell(col++).setCellValue(nvl(vo.getCpUser()));
                row.createCell(col++).setCellValue(nvl(vo.getCpTel()));
                row.createCell(col++).setCellValue(nvl(vo.getCpEmail()));
                row.createCell(col++).setCellValue(nvl(vo.getRegDate()));
                row.createCell(col++).setCellValue(nvl(vo.getCpStepSummary()));
                rowNum++;
            }

            workbook.write(response.getOutputStream());
            workbook.dispose();
        }
    }

    private String nvl(String value) {
        return value == null ? "" : value;
    }
}
