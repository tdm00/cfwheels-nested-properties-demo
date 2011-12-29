<cfcomponent extends="Controller" output="false">
	<cffunction name="init" >
			
	</cffunction>	

	<cffunction name="index" >
		<cfset contacts = model("Contact").findAll(order="updatedat DESC")>
	</cffunction>

	<cffunction name="show" >
		<cfset contact = model("Contact").findByKey(key=params.key)>
		<cfset locations = contact.locations(order="type ASC") >
	</cffunction>

	<!--- This is the action we call to create a new contact --->
	<cffunction name="new" >
		<!--- Each contact can have three different addresses.  
		These are nested properties in a one-to-many relationship, which means they're held in memory as an array.  
		Here we will create this array structure and populate it with the first record for the Home location --->
		<cfset var newLocations = [ model("Location").new(type="Home") ]>
		<!--- Now add another row to the array for the Work location --->
		<cfset ArrayAppend(newLocations, model("Location").new(type="Other"))>
		<!--- Finally add another row to the array for the Other location --->
		<cfset ArrayAppend(newLocations, model("Location").new(type="Work"))>
		<!--- Create a contact object based on the Contact model and include the location array we created above --->
		<cfset contact = model("Contact").new(locations=newLocations)>
	</cffunction>

	<cffunction name="create" >
		<!--- Create a new contact model using the values from the form field ---> 
		<cfset contact = model("Contact").new(params.contact)>
		
		<!--- Verify that the contact creates successfully --->
		<cfif contact.save()>
			<cfset flashInsert(success="Well done!  The contact was created successfully.")>
            		<cfset redirectTo(controller="contacts", action="show", key=contact.id)>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="Oh snap!  There was an error adding the contact.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>

	<cffunction name="edit" >
		<!--- Create a contact object based on the Contact model and populate it with the record values in the database based on the key value passed through the URL parameters.  Make sure to include our locations. --->
		<cfset contact = model("Contact").findByKey(key=params.key, include="locations")>
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
			<cfset redirectTo(controller="contacts", action="show", key=contact.id)>
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