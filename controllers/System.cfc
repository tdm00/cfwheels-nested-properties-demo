<cfcomponent extends="Controller" output="false" >
	<cffunction name="init" >
		
	</cffunction>

	<cffunction name="update" >
		<cfexecute name = "/tmp/update.sh" outputFile = "/var/log/cfexecute.log"></cfexecute>
		<cfset redirectTo(controller="contacts", action="index")>
	</cffunction>
</cfcomponent>