<cfcomponent extends="Controller" output="false">
	<cffunction name="init" >
			
	</cffunction>	

	<cffunction name="index" >
		<cfset contacts = model("Contact").findAll()>
	</cffunction>	

</cfcomponent>