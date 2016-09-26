<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<script type="text/javascript" language="javascript"
	src="http://www.technicalkeeda.com/js/javascripts/plugin/jquery.js"></script>
<script type="text/javascript"
	src="http://www.technicalkeeda.com/js/javascripts/plugin/json2.js"></script>
<script type="text/javascript"	src="js/vmqb.file.js"></script>
<head>
<title>VMetrix QueryBuilder&reg; Builder Screen</title>
<style type="text/css">
body {
	background-image: url('');
}
#resultsField {
    overflow:scroll;
}

</style>
</head>
<body>
	<h2 align="center">VMetrix QueryBuilder&reg; Builder Screen</h2>

<script type="text/javascript">

	var tablesFields = createArray(${tableList.size()});

	<c:forEach var="table" items="${tableList}" varStatus="loopTable">
		tablesFields[${loopTable.index}] = createArray( ${table.getFields().size()} );
		<c:forEach var="fieldName" items="${table.getFields()}" varStatus="loopField">
			tablesFields[${loopTable.index}][${loopField.index}] = '${table.getTableName()}.${fieldName}';
		</c:forEach>
	</c:forEach>

</script>

	
	<c:url var="addAction" value="/vmqbListResults" ></c:url>
	<!-- <form:form action="${addAction}" >  commandName="notices" -->
	
		<table id="tablesDetails" border="0" width="100%">
			<tr>
				<td colspan="3">Tables: <select  id="tableField" onchange="selectTable(this.value)">
						<option value="">--Select a table--</option>
						<c:if test="${not empty tableList}">
							<c:forEach var="listValue" items="${tableList}">
								<option value="${listValue.getTableName()}">${listValue.getTableName()}</option>
							</c:forEach>
						</c:if>
					</select>
					
				</td>
			</tr>
	
			<tr>
				<td colspan="3">
					Fields: <button id="addBtn" onclick="addFields()">Add Field</button>
					<br>
					<select id="fieldsField" multiple  style="width: 100%"></select>
				</td>
			</tr>
	
			<tr>
				<td colspan="3">&nbsp;</td>
			</tr>
			
			<tr>
				<td width="50%">Selected Tables</td>
				<td width="50%">Selected Fields</td>
				<td width="15%">Options</td>
			</tr>
			
			<tr>
				<td><select id="selectedTablesField" multiple  style="width: 100%"></select></td>
				<td><select id="selectedfieldsField" multiple  style="width: 100%"></select></td>
				<td>
					<button id="addBtn" onclick="addJoin()">Add Join</button>
				</td>
			</tr>
	
			<tr>
				<td colspan="3">&nbsp;</td>
			</tr>
	
			<tr>
				<td colspan="3">Joins</td>
			</tr>
			
			<tr>
				<td width="*" colspan="3"><select id="selectedJoinsField" multiple  style="width: 100%"></td>
			</tr>		
			<tr>
				<td colspan="3" align="center"><br><br> <button id="generate" onclick="generateQuery()">Generate Query</button></td>
			</tr>
	
			<tr>
				<td colspan="3">Generated Query</td>
			</tr>
			
	
			<tr>
				<td width="*" colspan="3"><textarea id="queryField" rows="10" style="width: 100%"></textarea></td>
			</tr>
	
			<tr>
				<td colspan="3" align="center"><br><br> <button id="generateResults" onclick="generateResults()">Generate Results</button></td>
			</tr>
	
			<tr>
				<td colspan="3">Results</td>
			</tr>
			
	
			<tr>
				<td width="*" colspan="3">
					<!-- <textarea id="resultsField" rows="10" style="width: 100%"></textarea> -->
					<div id="resultsField"  style="border-width: 1px; overflow:auto ;  border-style: ridge;text-align:center;">
						<p></p>
					</div>
					
				</td>
			</tr>
	
	
	
		</table>
		<!-- 
	</form:form>
-->
	<br></br>
	<br></br>



</body>
</html>