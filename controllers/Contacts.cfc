<cfcomponent extends="Controller" output="false">
	<cffunction name="init" >
			
	</cffunction>	

	<cffunction name="index" >
		<cfset contacts = model("Contact").findAll()>
	</cffunction>

	<cffunction name="show" >
		<cfset contact = model("Contact").findByKey(key=params.key)>
		<cfset locations = contact.locations(order="type ASC") >
	</cffunction>

	<cffunction name="new" >
		<cfset contact = model("Contact").new()>
	</cffunction>

	<cffunction name="create" >
		<!--- Create a new contact model using the values from the form field ---> 
		<cfset contact = model("Contact").new(params.contact)>
		
		<!--- Verify that the contact creates successfully --->
		<cfif contact.save()>
			<cfset flashInsert(success="Well done!  The contact was created successfully.")>
            		<cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="Oh snap!  There was an error adding the contact.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>

	<cffunction name="edit" >
		<cfset contact = model("Contact").findByKey(key=params.key)>
	</cffunction>

	<cffunction name="update" >
		<cfset contact = model("Contact").findByKey(key=params.contact.id)>
		<cfset contact.update(params.contact)>
		<cfset contact.save() >

		<cfif contact.hasErrors()>
			<cfset action="update">
			<cfset flashInsert(error="Problem saving changes!")>
			<cfset renderPage(action="form")>
		<cfelse>
			<cfset flashInsert(success="Updates saved successfully!")>
			<cfset redirectTo(controller="contacts", action="index")>
		</cfif>
	</cffunction>

	<cffunction name="delete" >
		<cfset contact = model("Contact").findByKey(key=params.key)>
		<cfif contact.delete()>
			<cfset flashInsert(success="Contact deleted successfully!")>
			<cfset redirectTo(controller="contacts", action="index")>
		<cfelse>
			<cfset action="update">
			<cfset flashInsert(error="Problem deleting contact!")>
			<cfset renderPage(action="form")>
		</cfif>
	</cffunction>

</cfcomponent>