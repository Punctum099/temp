<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@include file="/WEB-INF/jsp/_cmm/directives.jsp" %>

<script type="text/javascript">
    let nowNumber = undefined;
    $(function () {
        $("#pageUnit").on("change", function () {
            goSearch(1);
        });
        $('#cpGubun').addItem({"1":"납품업체","2":"에이전시","3":"학술지,언론사","4":"CSO","5":"CRO","6":"도매상","7":"대리점","8":"간납사","9":"금융기관","10":"파트너사","11":"회계·법무 특허 등","12":"대행사","13":"수출입","14":"공공기관","15":"공직자","16":"요양기관","17":"기타"});

        <c:set var="paramSt" value="${param}"/>
        var param = {};
        <c:forEach var="str" items="${param}" varStatus="vs">
        param['${str.key}']='${str.value}';

        if('${str.key}'=='cpGubun'){
            $('#schCtgCondition').val('${str.value}')
        }

        </c:forEach>
    });

    goSearch = function (page) {
        $('#pageIndex').val(page);
        $('#listForm').attr('action', '/mng/cp/cpList');
        $('#listForm').submit();
    }

    function fnPopupView(popupClass, param, mode) {
        if (popupClass == '.pop01') {
            let data = {}
            param['mode'] = mode;
            plus.formSubmit('/mng/cp/cpDetail',param,{method:'get'});
            return ;
            $('#faiIdx').val('');
            $('#favOriginalFileName').val('');
            $('#cpGubun').addItem({"1":"납품업체","2":"에이전시","3":"학술지,언론사","4":"CSO","5":"CRO","6":"도매상","7":"대리점","8":"간납사","9":"금융기관","10":"파트너사","11":"회계·법무 특허 등","12":"대행사","13":"수출입","14":"공공기관","15":"공직자","16":"요양기관","17":"기타"});

            if (mode == 'U') {
                commonUtil.post('/mng/cp/cpDetailAjax', param, function (r) {
                    let data = (new DataMap(r['data'])).map;
                    let file = (new DataMap(r['file'])).map;
                    dataBind.dataBind(r['data'], popupClass);
                    dataBind.dataBind(r['file'], popupClass);
                    nowNumber = Number(data['bmiOrder']);

                    var stepJson = {};
                    $.each(r['dataStep'],function(k,v){

                        console.log(v['cpsY'],'@@@@@@',v['cpsText']);
                        if($.trim(r['cpsText']).indexOf(',')>-1){
                            stepJson[v['cpsY']] = $.trim(r['cpsText']).split(',');
                        } else {
                            stepJson[v['cpsY']] = r['cpsText'];
                        }


                    });
                    dataBind.dataBind(stepJson, '.contents-block');
                    $( '.contents-block input').prop('disabled',true);
                })
                $(popupClass).find('.del').show();
                $(popupClass).find('.download').show();
            } else {
                let map = dataBind.paramDataKeys(popupClass, true);
                dataBind.dataBind(map, popupClass);
                $(popupClass).find('.del').hide();
                $(popupClass).find('.download').hide();
                nowNumber = undefined;
            }
            $('#mode').val(mode);
            $('#ownerType').val("CP");

            if ($('#faiIdx').val() != '') {
                $('.thumb_img img').attr("src", "<c:url value='/frame/fileDown'/>?atchFileId=" + $('#faiIdx').val());
                $('.thumb_img img').show();
            } else {
                $('.thumb_img img').hide();
            }

        }
        pop_open(popupClass);
    }

    function fnDownload() {
        let faiIdx = $('#faiIdx').val();
        location.href = "<c:url value='/frame/fileDown'/>?atchFileId=" + faiIdx;
    }

    function fnFileChange(element) {
        var str = element.value;
        $(element).siblings("input[name='favOriginalFileName']").val(element.value.substring(str.lastIndexOf("\\") + 1));
    }

    deletecp = function () {
        if (confirm('삭제된 자료는 복구되지 않습니다.\n해당 게시물을 삭제 하시겠습니까?')) {
            let mode = 'D';
            $('#mode').val(mode);
            commonUtil.multiPost('/mng/cp/cpSave', commonUtil.getFormData('.pop01', mode == 'I', ['cpIdx']), function (r) {
                if (r['code'] == '0000') {
                    alert('삭제 되었습니다.');
                    goSearch(1);
                } else {
                    alert('삭제에 실패했습니다.');
                }
            });
        }
    }

    savecp = function () {
        let mode = $("#mode").val();

        valid.reset();

        if (!valid.run(commonUtil.getParam('.pop01'))) {
            alert(valid.getMsg());
            return false;
        }

        if (confirm('저장 하시겠습니까?')) {
            commonUtil.multiPost('/mng/cp/cpSave', commonUtil.getFormData('.pop01', mode == 'I', ['clzbizId']), function (r) {
                if (r['code'] == '0000') {
                    alert('저장 되었습니다.');
                    goSearch(1);
                } else {
                    alert('저장에 실패했습니다.');
                }
            });
        }
    }

    /** 선택 항목 엑셀 다운로드 */
    fnCpExcelDown = function (selector, url) {
        var ids = [];
        $(selector).find('.checkbox-unit:checked').each(function () {
            var val = $(this).val();
            if (val) {
                ids.push(val);
            }
        });

        if (ids.length === 0) {
            alert('다운로드할 항목을 선택해 주세요.');
            return;
        }

        fnCpExcelSubmit(url, {
            cpIdxs: ids.join(','),
            downloadAll: 'N'
        });
    }

    /** 검색 조건 기준 전체 엑셀 다운로드 */
    fnCpExcelDownAll = function (url) {
        if (!confirm('현재 검색 조건의 전체 내역을 다운로드 하시겠습니까?')) {
            return;
        }

        fnCpExcelSubmit(url, {
            downloadAll: 'Y',
            schCondition: $('#schCondition').val(),
            schKeyWord: $('input[name=schKeyWord]').val(),
            cpGubun: $('#schCtgCondition').val()
        });
    }

    fnCpExcelSubmit = function (url, params) {
        var $form = $('<form>').attr({
            method: 'post',
            action: url
        }).appendTo('body');

        $.each(params, function (key, value) {
            $form.append($('<input>', {type: 'hidden', name: key, value: value || ''}));
        });

        $form.submit();
        $form.remove();
    }
</script>

<div class="right_conts">
    <div class="top_location">
        <p><a href="javascript:">HOME</a> &gt;  <a href="javascript:">실사참여수집현황</a> &gt;
            <strong>실사참여</strong></p>
    </div>
    <h2 class="big_tit">실사참여</h2>

    <form id="listForm" name="listForm" method="get" action="">
        <div class="board_ty">
            <table>
                <colgroup>
                    <col span="1" style="width:11.5%;">
                    <col span="1" style="width:38.5%">
                    <col span="1" style="width:11.5%;">
                    <col span="1" style="width:38.5%">
                </colgroup>
                <tbody>
                <tr>
                    <th scope="row">검색어</th>
                    <td class="ta_l">
                        <div class="select_wrap">
                            <select id="schCondition" name="schCondition" class="select">
                                <option value="TITLE">회사명</option>
                            </select>
                            <input type="text" name="schKeyWord" style="width:70%"
                                   value="<c:out value="${param.schKeyWord}"/>"/>
                        </div>
                    </td>
                    <th scope="row">회사구분</th>
                    <td class="ta_l">
                        <div class="select_wrap">
                            <select class="select" id="schCtgCondition" name="cpGubun">
                                <option value="">전체</option>
                                <option value="납품업체">납품업체</option>
                              <option value="에이전시">에이전시</option>
                              <option value="학술지,언론사">학술지,언론사</option>
                              <option value="CSO">CSO</option>
                              <option value="CRO">CRO</option>
                              <option value="도매상">도매상</option>
                              <option value="대리점">대리점</option>
                              <option value="간납사">간납사</option>
                              <option value="금융기관">금융기관</option>
                              <option value="파트너사">파트너사</option>
                              <option value="회계·법무 특허 등">회계·법무 특허 등</option>
                              <option value="대행사">대행사</option>
                              <option value="수출입">수출입</option>
                              <option value="공공기관">공공기관</option>
                              <option value="공직자">공직자</option>
                              <option value="요양기관">요양기관</option>
                              <option value="기타">기타</option>
                            </select>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="btns">
          <button type="submit" class="btn btn_ty03"> 검색 </button>
          <a href="javascript:reset();" onclick="$('#schCtgCondition').val('')" class="btn btn_ty"> 초기화 </a>
        </div>

        <div class="solt_warp">
            <ul class="result_list">
                <li>전체</li>
                <li><em><fmt:formatNumber
                        value="${paginationInfo.totalRecordCount}" pattern="#,###" /></em>개
                </li>
            </ul>
            <div class="btns ta_r">
                <a href="javascript:fnCpExcelDown('.ds02', '/mng/cp/cpExcelDown');" class="btn_ty">선택 다운로드</a>
                <a href="javascript:fnCpExcelDownAll('/mng/cp/cpExcelDown');" class="btn_ty03">전체 다운로드</a>
                <a href="javascript:fnDelete('.ds02', '/mng/cp/cpDeletes');" class="btn_ty03 ">선택 삭제</a>
            </div>

        </div>

        <div class="board_ty ds02">
            <table>
                <colgroup>
                    <col style="width:5.5%">
                    <col style="width:10.5%">
                    <col style="width:10.5%">
                    <col style="width:10.5%">
                    <col style="width:10.5%">
                    <col style="width:5.5%">
                </colgroup>
                <thead>
                <tr>
                    <th><p><input type="checkbox" class="checkbox-unit" value=""/> </p></th>
                    <th>No.</th>
                    <th>회사구분</th>
                    <th>회사명</th>
                    <th>등록일/시간</th>
                    <th>실사내용보기</th>
                </tr>
                </thead>
                <tbody>
                <c:choose>
                    <c:when test="${empty resultList}">
                        <tr>
                            <td colspan="6">
                                <div class="result_notice">
                                    검색결과가 없습니다.
                                </div>
                            </td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="result" items="${resultList}" varStatus="vs">
                            <tr>
                                <td class="td bbCheck"><p><input type="checkbox" class="checkbox-unit" value="${result.cpIdx}"/> </p></td>
                                <td class="td"><p><fmt:formatNumber value="${paginationInfo.totalRecordCount+1 - ((param.pageIndex-1) * param.pageUnit + vs.count)}" pattern="#,###" /></p></td>
                                <td>
                                    <c:out value="${result.cpGubun}"/>
                                </td>

                                <td>
                                        <c:out value="${result.cpName}"/>
                                </td>
                                <td><c:out value="${fn:substring(result.regDate,0,10)}"/></td>
                                <td><a href="javascript:fnPopupView('.pop01',{cpIdx:'${result.cpIdx}', ownerType:'CP'},'U')">
                                        보기
                                    </a></td>
                            </tr>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
                </tbody>
            </table>


        </div>
        <div class="solt_warp">

            <div class="rigth_area">
                <div class="select_wrap">
                    <select class="select" id="pageUnit" name="pageUnit">
                        <option value="5" ${param.pageUnit eq '5' ? 'selected' : ''}>5</option>
                        <option value="10" ${param.pageUnit eq null || param.pageUnit eq '10' ? 'selected' : ''}>
                            10
                        </option>
                        <option value="20" ${param.pageUnit eq '20' ? 'selected' : ''}>20</option>
                        <option value="50" ${param.pageUnit eq '50' ? 'selected' : ''}>50</option>
                        <option value="100" ${param.pageUnit eq '100' ? 'selected' : ''}>100</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="paginate">
            <ui:pagination paginationInfo="${paginationInfo}" type="image"
                           jsFunction="goSearch"/>
            <input type="hidden" id="pageIndex" name="pageIndex"/>
        </div>
    </form>
</div>

<%@ include file="cpListPopup.jsp" %>
