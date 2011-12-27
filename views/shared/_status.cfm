<cfparam name="arguments.objectError" type="string" default="">
<div class="row">
	<div class="span14">
		<cfif IsDefined("session.flash") And StructIsEmpty(session.flash) EQ False OR Len(arguments.objectError) GT 0>
			<cfoutput>
				<cfif flashKeyExists("success")>
					<div class="alert-message success">
						#flash("success")#
					</div>
				<cfelseif Len(arguments.objectError) GT 0>
					<div class="alert-message block-message error">
						<p><strong>Oh snap!</strong> You got an error!</p>
						<ul>
							#arguments.objectError#
						</ul>
					</div>
				<cfelseif flashKeyExists("error")>
					<div class="alert-message error"> 
						<p><strong>Oh snap!</strong> #flash("error")#</p>
					</div>
				</cfif>
			</cfoutput>
		</cfif>
	</div>
</div>