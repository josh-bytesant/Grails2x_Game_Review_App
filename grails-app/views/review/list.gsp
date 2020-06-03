
<%@ page import="gamereview.Review" %>
<!DOCTYPE html>
<html>
	<head>
	</head>
	<body>
		<h3>Game Review List</h3>
		<div id="list-review" class="content scaffold-list" role="main">
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="reviewText" title="Review Text" />
					
						<g:sortableColumn property="reviewDate" title="Review Date" />
										
					</tr>
				</thead>
				<tbody>
				<g:each in="${reviewsList}" status="i" var="reviewInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${reviewInstance.reviewText.encodeAsHTML()}</td>
					
						<td>${reviewInstance.reviewDate}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
		</div>
	</body>
</html>
