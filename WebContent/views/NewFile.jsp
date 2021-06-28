<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">

function total(){

	var price1 = document.form1.item.selectedIndex * 100; 

	document.form1.field1.value = price1; 

	var total = price1;
	
	document.form1.field_total.value = total; 
	
}

</script> 

<form action="#" name="form1">

<table>
<tr>

</tr>
<tr>
<td align="right">100円</td>
<td><select name="item" onChange="total()">
<option>0</option>
<option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>
</select></td>
<td><input type="text" name="field1" size="8" value="0"> 円</td>
</tr>

<tr>
<td align="right" colspan="3"><strong>合計</strong></td>
<td><input type="text" name="field_total" size="8" value="0"> 円</td>
</tr>
</table>

</form>

