
<%@ page import="gamereview.Review" %>
<!DOCTYPE html>
<html>
	<head>
	</head>
	<body>
		<h3>Add Game Review</h3>
		<div id="add-review" class="content scaffold-list" role="main">
			<g:form name="addReviewForm" url="[controller:'review', action:'save']">
				<g:textField name="reviewText" value="${reviewInstance?.reviewText}"/>
				<g:submitButton name="Add Review"/>
			</g:form>
		</div>
	</body>
</html>
