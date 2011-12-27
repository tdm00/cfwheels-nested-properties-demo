<cfcomponent extends="Model" output="false">
	<cffunction name="init" >
		<!--- Object Property Definitions --->

		<!--- Tell Wheels to use the `tbl_contact_person` table in the database for the `contact` model instead of the default (which would be `contacts`) --->
		<cfset table("tbl_contact_person")>
		<!--- Tell Wheels that when we are referring to `firstname` in the CFML code, it should translate to the `Fname` column when interacting with the database instead of the default (which would be the `firstname` column) --->
		<cfset property(name="firstname", column="Fname")>		
		<!--- Tell Wheels that when we are referring to `lastname` in the CFML code, it should translate to the `Lname` column when interacting with the database instead of the default (which would be the `lastname` column) --->
		<cfset property(name="lastname", column="Lname")>		
		<!--- Tell Wheels that when we are referring to `email` in the CFML code, it should translate to the `e-mail` column when interacting with the database instead of the default (which would be the `email` column) --->
		<cfset property(name="email", column="e-mail")>		
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

	</cffunction>	

</cfcomponent>