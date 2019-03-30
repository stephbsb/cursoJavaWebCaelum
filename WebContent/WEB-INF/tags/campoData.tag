<%@ attribute name="id" required="true" %>

<input type="text" id="${id}" name="${id}" />
<script>

	$("#${id}").datepicker({dateFormat:'dd/mm/yy', changeMonth:true, yearRange:"1900:2019", changeYear:true });

</script>