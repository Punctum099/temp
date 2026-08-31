<!-- 레이어실사참여 -->
<div class="lypop_wrap pop01" id="lypop01">
    <input type="hidden" name="mode" id="mode"/>
    <input type="hidden" id="ownerType" name="ownerType"/>
    <input type="hidden" id="atchFileChng" name="atchFileChng"/>
    <input type="hidden" id="faiIdx" name="faiIdx"/>
    <input type="hidden" id="fileIdDel" name="fileIdDel"/>
    <div class="sm_con" style="width:900px;">
        <div class="pop_top">
            <h2>실사참여 등록/수정</h2>
            <a href="javascript:void(0);" class="pop_close"></a>
        </div>
        <div class="pop_cont">
            <p class="pop_desc"><em></em></p>
            <div class="board_ty ds02">
                <table>
                    <colgroup>
                        <col width="20%">
                        <col width="30%">
                        <col width="20%">
                        <col width="30%">
                    </colgroup>
                    <tbody>
                    <tr>
                        <th>참메드 담당자명 <em class="ootc">*</em></th>
                        <td colspan="3">
                            <input type="text" id="cpChammedUser" name="cpChammedUser" placeholder="참메드 담당자명" class="w_full">
                        </td>
                    </tr>
                    <tr>
                        <th>회사구분</th>
                        <td>
                            <div class="select_wrap">
                                <select class="select w_full inp" id="cpGubun" name="cpGubun" type="select">

                                </select>
                            </div>
                        </td>
                        <th>회사명</th>
                        <td >
                            <div class="select_wrap">
                                <input type="text" id="cpName" name="cpName" placeholder="회사명" class="w_full">
                            </div>
                        </td>
                    </tr>
                    <tr>

                        <th>사업자번호</th>
                        <td>
                            <div class="select_wrap">
                                <input type="text" id="cpBiznum" name="cpBiznum" placeholder="담당자 성명" class="w_full">
                            </div>
                        </td>
                        <th>대표자명</th>
                        <td>
                            <div class="select_wrap">
                                <input type="text" id="cpCeo" name="cpCeo" placeholder="대표자명" class="w_full">
                            </div>
                        </td>
                    </tr>
                    <tr>

                        <th>담당자 성명</th>
                        <td>
                            <div class="select_wrap">
                                <input type="text" id="cpUser" name="cpUser" placeholder="담당자 성명" class="w_full">
                            </div>
                        </td>
                        <th>연락처</th>
                        <td>
                            <div class="select_wrap">
                                <input type="text" id="cpTel" name="cpTel" placeholder="회사명" class="w_full">
                            </div>
                        </td>
                    </tr>
                    <tr>

                        <th>이메일</th>
                        <td colspan="3">
                            <div class="select_wrap">
                                <input type="text" id="cpEmail" name="cpEmail" placeholder="이메일" class="w_full">
                            </div>
                        </td>

                    </tr>

                    </tbody>
                </table>


            <section class="cp-step-wrap" style="overflow-y: scroll;height:500px;">
              <div class="box-type_shadow">
                <div class="contents-block">
                  <h3 class="heading-h3">협력업체 등 사업관계자 부패리스크 평가 실사표</h3>
                  <!-- question 1 -->
                  <div class="compliance-qa">
                    <h4>1. 계약관계</h4>
                    <ol class="compliance-qa-list">
                      <li>
                        <div class="q">1. 자사와 계약 체결되었거나 진행중이며, 계약서가 존재합니까?</div>
                        <div class="radio-group hasoption" role="group" data-index="1">
                          <div class="radio-unit"><input type="radio" name="select1_1" id="r0101_1" value="Y"><label for="r0101_1">Y</label></div>
                          <div class="radio-unit"><input type="radio" name="select1_1" id="r0101_2" value="N"><label for="r0101_2">N</label></div>
                        </div>
                        <div class="q_addition">
                          <p>Y : 계약서 존재<br>
                          N : 계약서 존재하지 않는 이유 기재하고, 현황 관계 설명 가능한 문서 제출</p>
                          <!-- N 선택시 활성 -->
                          <div class="form-unit">
                            <div class="element-group">
                              <input type="text" id="text1_1" name="text1_1" title="계약서가 존재하지 않는 이유">
                            </div>
                          </div>
                        </div>
                      </li>
                      <li>
                        <div class="q">2. 귀사의 계약서 내에 부패방지 관련 조항이 포함되어 있거나, 관련 내용을 포함한 별도의 내규가 존재합니까?</div>
                        <div class="radio-group" role="group">
                          <div class="radio-unit"><input type="radio" name="select1_2" id="r0102_1" value="Y"><label for="r0102_1">Y</label></div>
                          <div class="radio-unit"><input type="radio" name="select1_2" id="r0102_2" value="N"><label for="r0102_2">N</label></div>
                        </div>
                      </li>
                    </ol>
                  </div>

                  <!-- question 2 -->
                  <div class="compliance-qa">
                    <h4>2. 사업관계자 적합 여부</h4>
                    <ol class="compliance-qa-list">
                      <li>
                        <div class="q">1. 해당 거래 또는 계약을 위한 사업관계자로서 적합합니까?</div>
                        <div class="radio-group hasoption" role="group" data-index="0">
                          <div class="radio-unit"><input type="radio" name="select2_1" id="r0201_1" value="Y"><label for="r0201_1">Y</label></div>
                          <div class="radio-unit"><input type="radio" name="select2_1" id="r0201_2" value="N"><label for="r0201_2">N</label></div>
                        </div>
                        <div class="q_addition type2">
                          <p class="red">* Y 인 경우 아래 중 필수선택, 중복 선택 가능</p>
                          <div class="checkbox-group">
                            <div class="checkbox-unit">
                              <input type="checkbox" id="checkbox2_1" name="checkbox2_1" value="1"><label for="checkbox2_1">거래관련 허가증보유(ex. 전문의약품 거래허가증, 의약품도매상허가증, 의료인 면허증 등)</label>
                            </div>
                            <div class="checkbox-unit">
                              <input type="checkbox" id="c0201_2" name="checkbox2_1" value="2"><label for="c0201_2">해당 거래와 관련된 업계 경력 또는 동아참메드와의 거래 경력이 있음</label>
                            </div>
                            <div class="checkbox-unit">
                              <input type="checkbox" id="c0201_3" name="checkbox2_1" value="3"><label for="c0201_3">해당 거래를 위한 적격업체로서의 판정을 받음(ex. KGSP 적격업체)</label>
                            </div>
                            <div class="checkbox-unit">
                              <input type="checkbox" id="c0201_4" name="checkbox2_1" value="4"><label for="c0201_4">해당 거래와 관련된 교육을 외부기관으로부터 받은 적이 있거나 자체적으로 시행중</label>
                            </div>
                          </div>
                        </div>
                      </li>
                    </ol>
                  </div>

                  <!-- question 3 -->
                  <div class="compliance-qa">
                    <h4>3. 이해 상충 여부</h4>
                    <ol class="compliance-qa-list">
                      <li>
                        <div class="q">1. 해당 사업관계자의 주주, 소유자, 주된 종업원이 동아참메드의 임원 또는 주요 사업과 관련이 있습니까?</div>
                        <div class="radio-group" role="group">
                          <div class="radio-unit"><input type="radio" name="select3_1" id="r0301_1" value="Y"><label for="r0301_1">Y</label></div>
                          <div class="radio-unit"><input type="radio" name="select3_1" id="r0301_2" value="N"><label for="r0301_2">N</label></div>
                        </div>
                      </li>
                    </ol>
                  </div>

                  <!-- question 4 -->
                  <div class="compliance-qa">
                    <h4>4. 추천인 확인</h4>
                    <ol class="compliance-qa-list">
                      <!-- question 4-1 -->
                      <li>
                        <div class="q">1. 자사에서 해당 사업관계자를 추천 또는 권유한 사람이 있습니까?</div>
                        <div class="radio-group hasoption" role="group" data-index="0">
                          <div class="radio-unit"><input type="radio" name="select4_1" id="r0401_1" value="Y"><label for="r0401_1">Y</label></div>
                          <div class="radio-unit"><input type="radio" name="select4_1" id="r0401_2" value="N"><label for="r0401_2">N</label></div>
                        </div>
                        <div class="q_addition type2">
                          <p class="red">* Y 인 경우 필수입력, 추천인 성명 기재</p>
                          <!-- Y 선택시 활성 -->
                          <div class="form-unit">
                            <div class="element-group">
                              <input type="text" id="text4_1" name="text4_1" title="추천인 성명">
                            </div>
                          </div>
                        </div>
                      </li>
                      <!-- question 4-2 -->
                      <li>
                        <div class="q">2. 해당 사업관계자가 뇌물수수 또는 유사한 범죄행위로 인해 조사, 유죄판결, 처벌 또는 박탈을 받은 적이 있거나, 해당 사업자와 관련된 뇌물수수, 사기, 부정 또는 유사한 부정행위에 대한 소문이 있는가?</div>
                        <div class="radio-group hasoption" role="group" data-index="0">
                          <div class="radio-unit"><input type="radio" name="select4_2" id="r0402_1" value="Y"><label for="r0402_1">Y</label></div>
                          <div class="radio-unit"><input type="radio" name="select4_2" id="r0402_2" value="N"><label for="r0402_2">N</label></div>
                        </div>
                        <div class="q_addition type2">
                          <p class="red">* Y 인 경우 필수입력, 구체적으로 내용 기재</p>
                          <!-- Y 선택시 활성 -->
                          <div class="form-unit">
                            <div class="element-group">
                              <input type="text" id="text4_2" name="text4_2" title="추천인 성명">
                            </div>
                          </div>
                        </div>
                      </li>
                    </ol>
                  </div>

                  <!-- question 5 -->
                  <div class="compliance-qa">
                    <h4>5. 공무원 등과의 관계</h4>
                    <ol class="compliance-qa-list type2">
                      <li>
                        <div class="q">1. 해당 사업관계자가 현재 공무원이거나 1년 이내에 공무원이었다.</div>
                        <div class="radio-group" role="group">
                          <div class="radio-unit"><input type="radio" name="select5_1" id="r0501_1" value="Y"><label for="r0501_1">Y</label></div>
                          <div class="radio-unit"><input type="radio" name="select5_1" id="r0501_2" value="N"><label for="r0501_2">N</label></div>
                        </div>
                      </li>
                      <li>
                        <div class="q">2. 해당 사업관계자의 가족 중 공무원이 있다.</div>
                        <div class="radio-group" role="group">
                          <div class="radio-unit"><input type="radio" name="select5_2" id="r0502_1" value="Y"><label for="r0502_1">Y</label></div>
                          <div class="radio-unit"><input type="radio" name="select5_2" id="r0502_2" value="N"><label for="r0502_2">N</label></div>
                        </div>
                      </li>
                      <li>
                        <div class="q">3. 해당 사업관계자에 현재 공무원인 자 또는 1년 이내에 공무원이었던 자를 고용하고 있다.</div>
                        <div class="radio-group" role="group">
                          <div class="radio-unit"><input type="radio" name="select5_3" id="r0503_1" value="Y"><label for="r0503_1">Y</label></div>
                          <div class="radio-unit"><input type="radio" name="select5_3" id="r0503_2" value="N"><label for="r0503_2">N</label></div>
                        </div>
                      </li>
                    </ol>
                  </div>

                  <!-- question 6 -->
                  <div class="compliance-qa">
                    <h4>6. 부패방지 관리 여부</h4>
                    <ol class="compliance-qa-list">
                      <li>
                        <div class="q noindent">해당 사업관계자의 부패방지 관리 여부에 따라 다음 항목을 작성해 주십시오.</div>
                        <div class="fullw">
                          <!-- question 6-1 -->
                          <div class="qa-yn-case">
                            <div class="checkbox-group">
                              <div class="checkbox-unit"><input type="radio" name="select6" id="select6_1" value="1"><label for="select6_1"><strong>부패방지 관리를 시행하고 있는 경우</strong></label></div>
                            </div>
                            <!-- r06_1 선택시 라디오버튼 활성 -->
                            <div class="box-type_bg type2">
                              <ol class="compliance-qa-list">
                                <li>
                                  <div class="q">1. 부패방지경영시스템(ISO 37001)을 시행하고 있다.</div>
                                  <div class="radio-group" role="group">
                                    <div class="radio-unit"><input type="radio" name="select6_1_1" id="r060101_1" value="Y" disabled><label for="r060101_1">Y</label></div>
                                    <div class="radio-unit"><input type="radio" name="select6_1_1" id="r060101_2" value="N" disabled><label for="r060101_2">N</label></div>
                                  </div>
                                </li>
                                <li>
                                  <div class="q">2. 부패방지선언(의지표명)을 하였다.</div>
                                  <div class="radio-group" role="group">
                                    <div class="radio-unit"><input type="radio" name="select6_1_2" id="r060102_1" value="Y" disabled><label for="r060102_1">Y</label></div>
                                    <div class="radio-unit"><input type="radio" name="select6_1_2" id="r060102_2" value="N" disabled><label for="r060102_2">N</label></div>
                                  </div>
                                </li>
                                <li>
                                  <div class="q">3. 부패방지 방침(정책)을 가지고 있다.</div>
                                  <div class="radio-group" role="group">
                                    <div class="radio-unit"><input type="radio" name="select6_1_3" id="r060103_1" value="Y" disabled><label for="r060103_1">Y</label></div>
                                    <div class="radio-unit"><input type="radio" name="select6_1_3" id="r060103_2" value="N" disabled><label for="r060103_2">N</label></div>
                                  </div>
                                </li>
                                <li>
                                  <div class="q">4. 부패방지 관련 교육을 실시하고 있다.</div>
                                  <div class="radio-group" role="group">
                                    <div class="radio-unit"><input type="radio" name="select6_1_4" id="r060104_1" value="Y" disabled><label for="r060104_1">Y</label></div>
                                    <div class="radio-unit"><input type="radio" name="select6_1_4" id="r060104_2" value="N" disabled><label for="r060104_2">N</label></div>
                                  </div>
                                </li>
                                <li>
                                  <div class="q">5. 해당 사업관계자가 시행하는 부패방지 관리 방법이 리스크를 경감하는데 효과가 있다고 생각합니까?</div>
                                  <div class="radio-group hasoption" role="group" data-index="0">
                                    <div class="radio-unit"><input type="radio" name="select6_1_5" id="r060105_1" value="Y" disabled><label for="r060105_1">Y</label></div>
                                    <div class="radio-unit"><input type="radio" name="select6_1_5" id="r060105_2" value="N" disabled><label for="r060105_2">N</label></div>
                                  </div>
                                  <div class="q_addition type2">
                                    <p class="red">* Y 인 경우 답변에 대한 이유 아래 중 필수 선택, 중복 가능</p>
                                    <div class="checkbox-group">
                                      <div class="checkbox-unit">
                                        <input type="checkbox" id="checkbox6_1_5" name="checkbox6_1_5" value="1" disabled><label for="checkbox6_1_5">조직 내 부패방지 의식 고취</label>
                                      </div>
                                      <div class="checkbox-unit">
                                        <input type="checkbox" id="c060105_2" name="checkbox6_1_5" value="2" disabled><label for="c060105_2">부패에 관련된 노출 빈도를 높임으로 경각심 향상</label>
                                      </div>
                                      <div class="checkbox-unit">
                                        <input type="checkbox" id="c060105_3" name="checkbox6_1_5" value="3" disabled><label for="c060105_3">리스크 발생을 인지하고 인지 가능</label>
                                      </div>
                                    </div>
                                  </div>
                                </li>
                              </ol>
                            </div>
                          </div>
                          <!-- question 6-2 -->
                          <div class="qa-yn-case">
                            <div class="checkbox-group">
                              <div class="checkbox-unit"><input type="radio" name="select6" id="select6_2" value="2"><label for="select6_2"><strong>부패방지 관리를 시행하고 있지 않은 경우</strong></label></div>
                            </div>
                            <!-- r06_2 선택시 라디오버튼 활성 -->
                            <div class="box-type_bg type2">
                              <ol class="compliance-qa-list">
                                <li>
                                  <div class="q">1. 현재 부패방지 관리를 시행하고 있지 않으나 가까운 시일 내에 실시할 계획이다.</div>
                                  <div class="radio-group hasoption" role="group" data-index="0">
                                    <div class="radio-unit"><input type="radio" name="select6_2_1" id="r060201_1" value="Y" disabled><label for="r060201_1">Y</label></div>
                                    <div class="radio-unit"><input type="radio" name="select6_2_1" id="r060201_2" value="N" disabled><label for="r060201_2">N</label></div>
                                  </div>
                                  <div class="q_addition type2">
                                    <p class="red">* Y 인 경우 실시 계획 중인 관리책을 아래 중 필수선택, 중복 가능</p>
                                    <div class="checkbox-group">
                                      <div class="checkbox-unit">
                                        <input type="checkbox" id="checkbox6_2_1" name="checkbox6_2_1" value="1" disabled><label for="checkbox6_2_1">부패방지 관련 선언(의지표명)</label>
                                      </div>
                                      <div class="checkbox-unit">
                                        <input type="checkbox" id="c060201_2" name="checkbox6_2_1" value="2" disabled><label for="c060201_2">부패방지 관련 내부 사규 또는 방침을 정하거나 관련 교육 실시</label>
                                      </div>
                                      <div class="checkbox-unit">
                                        <input type="checkbox" id="c060201_3" name="checkbox6_2_1" value="3" disabled><label for="c060201_3">부패방지 관련 시스템을 운영 (ex. CP등급평가, ISO37001 등)</label>
                                      </div>
                                    </div>
                                  </div>
                                </li>
                                <li>
                                  <div class="q">2. 자사에서 해당 사업관계자에 대해 부패방지 관리를 요청(요구)하는 것이 가능합니까?</div>
                                  <div class="radio-group" role="group">
                                    <div class="radio-unit"><input type="radio" name="select6_2_2" id="r060202_1" value="Y" disabled><label for="r060202_1">Y</label></div>
                                    <div class="radio-unit"><input type="radio" name="select6_2_2" id="r060202_2" value="N" disabled><label for="r060202_2">N</label></div>
                                  </div>
                                </li>
                                <li>
                                  <div class="q">3. 자사에서 해당 사업관계자에 대해 부패방지 관리 시행을 요청(요구)할 경우, 사업관계자가 이를 운영 할 인적, 물적 자원을 보유하고 있는 것으로 판단됩니까?</div>
                                  <div class="radio-group" role="group">
                                    <div class="radio-unit"><input type="radio" name="select6_2_3" id="r060203_1" value="Y" disabled><label for="r060203_1">Y</label></div>
                                    <div class="radio-unit"><input type="radio" name="select6_2_3" id="r060203_2" value="N" disabled><label for="r060203_2">N</label></div>
                                  </div>
                                </li>
                              </ol>
                            </div>
                          </div>
                        </div>
                      </li>
                    </ol>
                  </div>

                  <!-- question 7 -->
                  <div class="compliance-qa">
                    <h4>7. 부패방지 관리 여부</h4>
                    <ol class="compliance-qa-list">
                      <li>
                        <div class="q">1. 자사의 부패방지 방침을 전달받았다.</div>
                        <div class="radio-group" role="group">
                          <div class="radio-unit"><input type="radio" name="select7_1" id="r0701_1" value="Y"><label for="r0701_1">Y</label></div>
                          <div class="radio-unit"><input type="radio" name="select7_1" id="r0701_2" value="N"><label for="r0701_2">N</label></div>
                        </div>
                      </li>
                    </ol>
                  </div>

                </div>
              </div>
            </section>
            </div>
            <div class="btns">
                <a href="javascript:pop_close('#lypop01');" class="btn_ty02 p_cancle">취소</a>
                <a href="javascript:deletecp();" class="btn_ty del">삭제</a>
            </div>
        </div>
    </div>
    <div class="dim"></div>
</div>
<!-- //레이어실사참여 -->
<style>
.heading-h3 {font-size: 1.6rem;margin-bottom: 2rem;margin-top:1rem;}
.radio-group {display: flex;align-items: center;}
.radio-unit {display: inline-flex;}
.radio-unit label {padding-left:10px;position: relative;display: inline-block;line-height:0.9rem;}
.radio-unit label:before {content:"";position: absolute;left:0;top:0;background-color: #fff;}
.radio-unit input:disabled + label:before {background-color: var(--bg);}
.radio-unit input:checked + label:before {border-width:.6rem;border-color:var(--clr4)}
.radio-group > .radio-unit:last-of-type {margin-right:0;}
.radio-box label {position:relative;display: flex;align-items: center;height:6.4rem;border-radius: .8rem;font-size:2.0rem;border:solid 1px #ccc;padding:0 3.0rem;color:#A0A0A0;}
.radio-box input:checked + label {color:var(--tclr2);border-color:var(--clr4);font-weight:500;border-width:2px;}
.radio-box label:before {content:"";width:2.4rem;height:2.4rem;border:solid 2px #EEEEEE;border-radius: 50%;position: absolute;right:2.3rem;top:50%;background-color: #fff;transform: translateY(-50%);}
.radio-box input:checked + label:before {border-width:.6rem;border-color:var(--clr4);right:2.2rem;}

.checkbox-unit + .checkbox-unit {margin-top:0.8rem;}
.checkbox-unit label {padding-left:1rem;position: relative;display: inline-block;}
.checkbox-unit label:before {content:"";height:2.4rem;position: absolute;left:0;top:0;background-color: #fff;}
.checkbox-unit input:disabled + label:before {background-color: var(--bg);}
.checkbox-unit input:checked + label:before {border-color:var(--clr4);background: var(--clr4) url("data:image/svg+xml,%3Csvg viewBox='0 0 15 11' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M1 5L5.33333 9.33333L13.6667 1' stroke='%23fff' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'/%3E%3C/svg%3E%0A") no-repeat 50% 50%/1.6rem;}

.compliance-qa h4 {font-weight:500;font-size:1.4rem;margin:2rem 0;color:#000;line-height:1.17;}
.compliance-qa + .compliance-qa {margin-top:20px;border-top:solid 1px #e5e5e5;}
.compliance-qa-list > li {display: flex;justify-content: space-between;flex-wrap: wrap;font-size:1rem;}
.compliance-qa-list > li .q {color:var(--tclr2);width:calc(100% - min(calc(25%),26rem));padding-left:.85em;}
.compliance-qa-list > li .q.noindent {padding:0;text-indent: 0;}
.compliance-qa-list > li .radio-group {width:5%;padding:0 4rem;justify-content: flex-end;}
.compliance-qa-list > li .radio-group .radio-unit + .radio-unit {margin-left:1.0rem}
.compliance-qa-list > li .q_addition {padding-left:.85em;margin-top:1.0rem;}
.compliance-qa-list > li .q_addition input[type=text] {margin-top:.8rem;}
.compliance-qa-list > li .q_addition.type2 {margin-top:0;}
.compliance-qa-list > li .q_addition .red {color:#E02D3C;}
.compliance-qa-list > li .q_addition .checkbox-group {margin-top:1.6rem;margin-bottom:20px;}
.compliance-qa-list > li  + li {margin-top:20px;}
.compliance-qa-list > li li + li {margin-top:10px;}
.compliance-qa-list > li label strong {font-weight:600;}
.compliance-qa-list.type2 > li + li {margin-top:1.2rem;}
</style>