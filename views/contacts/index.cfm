<cfparam name="contacts" type="query"  />

<div class="page-header">
	<h1>Contact List</h1>
</div>
<cfoutput>
	#includePartial(partial="/shared/status")#
</cfoutput>
<div class="row">
	<div class="span10">
		<table class="bordered-table zebra-striped condensed-table">
			<thead>
				<tr>
					<th></th>
					<th>Name</th>
					<th>Company</th>
					<th>Title</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<cfoutput query="contacts">
					<tr>
						<th>#contacts.currentRow#</th>
						<td>#linkTo(controller="contacts", action="show", key="#id#", text="#IIf(Len(Trim(firstname)) GT 0, DE('#firstname# #lastname#'), DE('#lastname#'))#")#</td>
						<td>#company#</td>
						<td>#title#</td>
						<td>#IIf(Len(Trim(email)) GT 0, DE('#linkTo(text="#email#", href="mailto:#email#")#'), DE(''))#</td>
					</tr>
				</cfoutput>
			</tbody>
		</table>
	</div>
	<div class="span4">
		<cfoutput>
			#linkTo(controller="contacts", action="new", text="Add New Contact", class="btn large primary pull-right")#
		</cfoutput>
	</div>
</div>