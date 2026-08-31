package com.chammed.mng.cp.service.impl;

import com.chammed.mng.cp.service.CpMngService;
import com.chammed.mng.cp.service.CpSearchVO;
import com.chammed.mng.cp.service.CpVO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.List;

@Service("cpMngService")
public class CpMngServiceImpl implements CpMngService {

    @Resource(name = "cpMngMapper")
    private CpMngMapper cpMngMapper;

    @Override
    public List<CpVO> selectCpExcelList(CpSearchVO searchVO) throws Exception {
        return cpMngMapper.selectCpExcelList(searchVO);
    }

    @Override
    public List<CpVO> selectCpExcelListByIds(List<String> cpIdxList) throws Exception {
        if (cpIdxList == null || cpIdxList.isEmpty()) {
            return Collections.emptyList();
        }
        return cpMngMapper.selectCpExcelListByIds(cpIdxList);
    }
}
