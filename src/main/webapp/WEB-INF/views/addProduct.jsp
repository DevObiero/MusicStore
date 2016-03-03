<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<h1>Add Product</h1>
<p class="lead">Fill the fom below to add a product</p>
<form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method="post"
           commandName="product" enctype="multipart/form-data">
    <div class="form-group">
        <label for="name">Name</label>
        <form:input path="productName" id="name" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="category">Category</label>
        <label class="checkbox-inline">
            <form:radiobutton path="productCategory" value="instrument"></form:radiobutton>
            Instrument
        </label>
        <label class="checkbox-inline">
            <form:radiobutton path="productCategory" value="record"></form:radiobutton>
            Record
        </label>
        <label class="checkbox-inline">
            <form:radiobutton path="productCategory" value="accessory"></form:radiobutton>
            Accessory
        </label>
    </div>
    <div class="form-group">
        <label for="name">Description</label>
        <form:input path="productDescription" id="description" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="name">Price</label>
        <form:textarea path="productPrice" id="description" class="form-control"/>
    </div>
    <div class="form-group">
        <label for="category">Condition</label>
        <label class="checkbox-inline">
            <form:radiobutton path="productCondition" value="new"></form:radiobutton>
            New
        </label>
        <label class="checkbox-inline">
            <form:radiobutton path="productCondition" value="used"></form:radiobutton>
            Used
        </label>
    </div>
    <div class="form-group">
        <label class="control-label" for="productImage">Upload Picture</label>
        <form:input path="productImage" id="productImage" type="file" class="form:input-large"/>

    </div>
    <input type="submit" value="Submit" class="button btn-primary">
    <a href="<c:url value="/admin/productInventory" />">Cancel</a>
</form:form>


<%@ include file="/WEB-INF/views/template/footer.jsp"%>
