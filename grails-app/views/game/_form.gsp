<%@ page import="gamereview.Game" %>



<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="game.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${gameInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="game.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${gameInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gameInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="game.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: gameInstance, field: 'price')}" required=""/>
</div>

