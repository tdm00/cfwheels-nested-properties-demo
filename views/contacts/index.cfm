<cfparam name="contacts" type="query"  />

<div class="page-header">
	<h1>Contact List</h1>
</div>
<div class="row">
	<div class="span10">
		<table class="bordered-table zebra-striped condensed-table">
			<thead>
				<tr>
					<th></th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Organization</th>
					<th>Title</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<cfoutput query="contacts">
					<tr>
						<th>#contacts.currentRow#</th>
						<td>#firstname#</td>
						<td>#lastname#</td>
						<td>#oroganization#</td>
						<td>#title#</td>
						<td>#email#</td>
					</tr>
				</cfoutput>
			</tbody>
		</table>
	</div>
	<div class="span4">
		<cfoutput>
			#linkTo(controller="contacts", action="new", text="Add New Contact", class="btn large primary")#
		</cfoutput>
	</div>
</div>
