package com.chammed.mng.cp.service;

import java.util.List;

public interface CpMngService {

    List<CpVO> selectCpExcelList(CpSearchVO searchVO) throws Exception;

    List<CpVO> selectCpExcelListByIds(List<String> cpIdxList) throws Exception;
}
