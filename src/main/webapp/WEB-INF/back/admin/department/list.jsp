<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="/WEB-INF/back/commons/head.jsp"/>
<script type="text/javascript">
$(function(){
	$("#orgid").treeSelect({
		url:"/admin/org/tree.do",
		values:["${query.search['orgid']}"]
	});
});
</script>
<title>部门</title>
</head>
<body>
<jsp:include page="/WEB-INF/back/commons/show_message.jsp"/>
<div class="areaTitle">
    <div class="key">部门管理列表</div>
</div>
<s:form action="list.do" method="post" modelAttribute="query">
<div class="areaContent">
	<div class="searchArea">
    	<table border="0" cellspacing="5" cellpadding="0">
         <thead>
          <tr>
          	<th>机构：</th>
            <td>
            	<s:select id="orgid" path="search['orgid']" />
            </td>
          	<th>部门名称：</th>
            <td>
            	<div class="inputDiv">
            	<s:input path="search['name']" />
            	</div>
            </td>
          	<th>负责人：</th>
            <td>
            	<div class="inputDiv">
            	<s:input path="search['header']" />
            	</div>
            </td>
          	<th>邮箱：</th>
            <td>
            	<div class="inputDiv">
            	<s:input path="search['email']" />
            	</div>
            </td>
            <td>
            	<input type="submit" value=" 搜  索 " class="searchAreaSubBtn" />
            </td>
          </tr>
          </thead>
        </table>
  </div>
  <div class="editButtonsArea">
  	<shiro:hasPermission name="admin:department:add">
	<div class="add"><a href="add.do">新增</a></div>
	<div class="cope"><a href="javascript:$.href('add.do?id=');">复制</a></div>
	</shiro:hasPermission>
	<shiro:hasPermission name="admin:department:view">
	<div class="look"><a href="javascript:$.href('view.do?id=');">查看</a></div>
	</shiro:hasPermission>
	<shiro:hasPermission name="admin:department:alter">
	<div class="edit"><a href="javascript:$.href('alter.do?id=');">修改</a></div>
	</shiro:hasPermission>
	<shiro:hasPermission name="admin:department:remove">
	<div class="delete"><a href="javascript:$.remove();">删除</a></div>
	</shiro:hasPermission>
  </div>
  <div class="listNews">
  	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="listNewsTable">
      <thead>
      <tr>
        <th width="3%" align="center"><input type="checkbox" id="allBox"/></th>
	    <th><span class="ls-sort" pagesort="name">部门名称</span></th>
	    <th><span class="ls-sort" pagesort="header">负责人</span></th>
	    <th><span class="ls-sort" pagesort="phone">联系电话</span></th>
	    <th><span class="ls-sort" pagesort="fax">传真</span></th>
	    <th><span class="ls-sort" pagesort="email">邮箱</span></th>
	    <th><span class="ls-sort" pagesort="SORT_NUM">排序</span></th>
        <th width="15%">编辑</th>
      </tr>
      </thead>
      <tbody>
	  <c:forEach var="bean" varStatus="s" items="${pageNav.list}">
	  <tr class="${s.index%2==0?'normal1':'normal2' }">
	    <td align="center"><input type="checkbox" name="id" value="${bean.id}"/></td>
	    <td align="left">
	    	${bean.name}
	    </td>
	    <td align="center">
	    	${bean.header}
	    </td>
	    <td align="center">
	    	${bean.phone}
	    </td>
	    <td align="center">
	    	${bean.fax}
	    </td>
	    <td align="center">
	    	${bean.email}
	    </td>
	    <td align="center">
	    	${bean.sortNum}
	    </td>
	  <td align="center" class="listEditTd">
		<shiro:hasPermission name="admin:department:view">
		<a class="ls-opt" href="view.do?id=${bean.id}">查看</a>
		</shiro:hasPermission>
		<shiro:hasPermission name="admin:department:alter">
		<a class="ls-opt" href="alter.do?id=${bean.id}">修改</a>
		</shiro:hasPermission>
		<shiro:hasPermission name="admin:department:remove">
		<a class="ls-opt" href="javascript:$.remove('${bean.id}');">删除</a>
		</shiro:hasPermission>
	  </td>
	  </tr>
	  </c:forEach>
	  <%-- <c:if test="${fn:length(pageNav.list) le 0}"> 
		<div class="ls-norecord margin-top5">没有相关的数据!!</div>
	  </c:if> --%>
      </tbody>
      <tfoot>
      <tr>
        <td colspan="7">${pageNav.view}</td>
      </tr>
      </tfoot>
    </table>
  </div>
</div>
<div class="pagesort">
<c:forEach var="bean" varStatus="s" items="${query.collates}">
<span>
	<input type="hidden" name="collates[${s.index}].sortField" value="${bean.sortField}"/>
	<input type="hidden" name="collates[${s.index}].sortType" value="${bean.sortType}"/>
</span>
</c:forEach>
</div>
</s:form>
</body>
</html>
