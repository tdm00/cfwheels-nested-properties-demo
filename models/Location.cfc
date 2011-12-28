<cfcomponent extends="Model" output="false">
	<cffunction name="init" >
		<!--- Object Property Definitions --->

		<!--- Tell Wheels to use the `tbl_contact_person` table in the database for the `contact` model instead of the default (which would be `contacts`) --->
		<cfset table("tblContactLocations")>
		<!--- Tell Wheels that when we are referring to `id` in the CFML code, it should translate to the `locationid` column when interacting with the database instead of the default (which would be the `id` column) --->
		<cfset property(name="id", column="locationid")>		
		<!--- Tell Wheels that when we are referring to `contactid` in the CFML code, it should translate to the `ContactIdFk` column when interacting with the database instead of the default (which would be the `contactid` column) --->
		<cfset property(name="contactid", column="ContactIdFk")>		
		<!--- Tell Wheels that when we are referring to `address1` in the CFML code, it should translate to the `location_address_1` column when interacting with the database instead of the default (which would be the `address1` column) --->
		<cfset property(name="address1", column="location_address_1")>		
		<!--- Tell Wheels that when we are referring to `address2` in the CFML code, it should translate to the `location_address_2` column when interacting with the database instead of the default (which would be the `address2` column) --->
		<cfset property(name="address2", column="location_address_2")>		
		<!--- Tell Wheels that when we are referring to `address3` in the CFML code, it should translate to the `location_address_3` column when interacting with the database instead of the default (which would be the `address3` column) --->
		<cfset property(name="address3", column="location_address_3")>		
		<!--- Tell Wheels that when we are referring to `city` in the CFML code, it should translate to the `location_city` column when interacting with the database instead of the default (which would be the `city` column) --->
		<cfset property(name="city", column="location_city")>		
		<!--- Tell Wheels that when we are referring to `state` in the CFML code, it should translate to the `location_state` column when interacting with the database instead of the default (which would be the `state` column) --->
		<cfset property(name="state", column="location_state")>		
		<!--- Tell Wheels that when we are referring to `zip` in the CFML code, it should translate to the `location_zip` column when interacting with the database instead of the default (which would be the `zip` column) --->
		<cfset property(name="zip", column="location_zip")>		
		<!--- Tell Wheels that when we are referring to `phone` in the CFML code, it should translate to the `location_phone` column when interacting with the database instead of the default (which would be the `phone` column) --->
		<cfset property(name="phone", column="location_phone")>		
		<!--- Tell Wheels that when we are referring to `fax` in the CFML code, it should translate to the `location_fax` column when interacting with the database instead of the default (which would be the `fax` column) --->
		<cfset property(name="fax", column="location_fax")>		
		<!--- Tell Wheels that when we are referring to `url` in the CFML code, it should translate to the `location_website_url` column when interacting with the database instead of the default (which would be the `url` column) --->
		<cfset property(name="url", column="location_website_url")>		
		<!--- Tell Wheels that when we are referring to `createdat` in the CFML code, it should translate to the `created` column when interacting with the database instead of the default (which would be the `createdat` column) --->
		<cfset property(name="createdat", column="created")>		
		<!--- Tell Wheels that when we are referring to `updatedat` in the CFML code, it should translate to the `updated` column when interacting with the database instead of the default (which would be the `updatedat` column) --->
		<cfset property(name="updatedat", column="updated")>		
		<!--- Tell Wheels that when we are referring to `deletedat` in the CFML code, it should translate to the `deleted` column when interacting with the database instead of the default (which would be the `deletedat` column) --->
		<cfset property(name="deletedat", column="deleted")>		

		<!--- Associations --->
		<!--- Tell Wheels that a location is associated with a contact --->
		<cfset belongsTo(name="contact") >
	</cffunction>	

</cfcomponent>