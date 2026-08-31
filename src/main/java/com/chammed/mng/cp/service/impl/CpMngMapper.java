package com.chammed.mng.cp.service.impl;

import com.chammed.mng.cp.service.CpSearchVO;
import com.chammed.mng.cp.service.CpVO;
import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import java.util.List;

@Mapper("cpMngMapper")
public interface CpMngMapper {

    List<CpVO> selectCpExcelList(CpSearchVO searchVO);

    List<CpVO> selectCpExcelListByIds(List<String> cpIdxList);
}
