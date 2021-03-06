<cfcomponent extends="Model" output="false">
	<cffunction name="init" >
		<!--- Object Property Definitions --->

		<!--- Tell Wheels to use the `tbl_contact_person` table in the database for the `contact` model instead of the default (which would be `contacts`) --->
		<cfset table("tbl_contact_person")>
		<!--- Tell Wheels that when we are referring to `id` in the CFML code, it should translate to the `contact_id` column when interacting with the database instead of the default (which would be the `id` column) --->
		<cfset property(name="id", column="contact_id")>		
		<!--- Tell Wheels that when we are referring to `firstname` in the CFML code, it should translate to the `Fname` column when interacting with the database instead of the default (which would be the `firstname` column) --->
		<cfset property(name="firstname", column="Fname")>		
		<!--- Tell Wheels that when we are referring to `lastname` in the CFML code, it should translate to the `Lname` column when interacting with the database instead of the default (which would be the `lastname` column) --->
		<cfset property(name="lastname", column="Lname")>		
		<!--- Tell Wheels that when we are referring to `email` in the CFML code, it should translate to the `e-mail` column when interacting with the database instead of the default (which would be the `email` column) --->
		<cfset property(name="email", column="e_mail")>		
		<!--- Tell Wheels that when we are referring to `title` in the CFML code, it should translate to the `job_title` column when interacting with the database instead of the default (which would be the `title` column) --->
		<cfset property(name="title", column="job_title")>		
		<!--- Tell Wheels that when we are referring to `company` in the CFML code, it should translate to the `company_name` column when interacting with the database instead of the default (which would be the `company` column) --->
		<cfset property(name="company", column="company_name")>		
		<!--- Tell Wheels that when we are referring to `createdat` in the CFML code, it should translate to the `created` column when interacting with the database instead of the default (which would be the `createdat` column) --->
		<cfset property(name="createdat", column="created")>		
		<!--- Tell Wheels that when we are referring to `updatedat` in the CFML code, it should translate to the `updated` column when interacting with the database instead of the default (which would be the `updatedat` column) --->
		<cfset property(name="updatedat", column="updated")>		
		<!--- Tell Wheels that when we are referring to `deletedat` in the CFML code, it should translate to the `deleted` column when interacting with the database instead of the default (which would be the `deletedat` column) --->
		<cfset property(name="deletedat", column="deleted")>		

		<!--- Associations --->
		<!--- Tell Wheels that a contact can have one or more locations, that if the contact is deleted to delete the locations associated with this contact, and to display the contact information even if they don't have any locations assocaited --->
		<cfset hasMany(name="locations", dependent="delete", joinType="outer") >

		<!--- Nested Properties --->
		<!--- Tell Wheels that the contact model will have nested properties for the locations associated with this contact --->
		<cfset nestedProperties(associations="locations", allowDelete=true)>
	</cffunction>	

</cfcomponent>