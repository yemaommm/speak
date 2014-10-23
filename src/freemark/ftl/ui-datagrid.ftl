<table id="${id}" name="${name}" class="table table-striped datagrid">
	<tr class="datagrid_header">
		<#list columns as column>
			<td class="${column}" name="${column}">
				<#if column=="_check">
					<input type='checkbox' id="${id}checkAll" onchange='checkAll(this)'/>
				<#elseif column=='_radio'>
					
				<#elseif column=='_seq'>
					
				<#elseif column=='_action'>
					操作
				<#else>
					${titles[column_index]}
				</#if>
			</td>
		</#list>
	</tr>
</table>

<div id="${id}PageCtrl"></div>