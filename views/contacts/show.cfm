<cfparam name="contact">

<cfoutput>
	#includePartial(partial="/shared/status", objectError="#errorMessagesFor("contact")#")#
	<div class="row">
		<div class="span2">
			<img src="http://www.gravatar.com/avatar/#lcase(Hash(lcase(contact.email)))#?r=R&d=http#IIF(cgi.server_port EQ 443,DE('s'),DE(''))#://#cgi.server_name##Left(CGI.SCRIPT_NAME,Find('/',CGI.SCRIPT_NAME,2))#images/contact.jpg" alt="#contact.firstname# #contact.lastname#'s Gravatar" class="pull-right" width="80" height="80" />
		</div>
		<div class="span10">
			<h3>#contact.firstname# #contact.lastname# </h3>
			<cfif Len(Trim(contact.company)) GT 0>
				<cfif Len(Trim(contact.title))>
					#contact.title# with #contact.company#
				<cfelse>
					<h4>#contact.company#</h4>
				</cfif>
			<cfelse>
				<h4>#contact.title#</h4>
			</cfif>
			<cfif Len(Trim(contact.email)) GT 0>
				<p>
					#linkTo(text="#contact.email#", href="mailto:#contact.email#")#
				</p>
			</cfif>
			<div class="row">
				<cfoutput query="locations">
					<div class="span3">
						<address>
							<strong>#type#</strong><br />
							<cfif Len(Trim(address1)) GT 0>
								#address1#<br />
							</cfif>
							<cfif Len(Trim(address2)) GT 0>
								#address2#<br />
							</cfif>
							<cfif Len(Trim(address3)) GT 0>
								#address3#<br />
							</cfif>
							<cfif Len(Trim(city)) GT 0>
								<cfif Len(Trim(state)) GT 0 Or Len(Trim(zip)) GT 0>
									#city#,
								<cfelse>
									#city#
								</cfif>
							</cfif>
							#state# #zip#<br />
							<cfif Len(Trim(phone)) GT 0>
								<abbr title="Phone">P:</abbr> #phone#
							</cfif>
							<cfif Len(Trim(fax)) GT 0>
								<abbr title="Fax">F:</abbr> #fax#
							</cfif>
						</address>
					</div>
				</cfoutput>
				<div class="span1">
					
				</div>
			</div>
		</div>
		<div class="span2">
			#linkTo(controller="contacts", action="edit", key="#contact.id#", text="Edit", class="btn")#
		</div>
	</div>
</cfoutput>