<%-- 
    Document   : campoData
    Created on : 07/01/2017, 02:55:15
    Author     : gilvan
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="id" required="true" %>

<%-- any content can be specified here e.g.: --%>
<input type="text" id="${id}" name="${id}" />
<script type="text/javascript">
    $("#${id}").datepicker({dateFormat: 'dd/mm/yy'});
</script>