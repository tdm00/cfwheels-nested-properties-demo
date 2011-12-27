<cfparam name="contact">
<cfparam name="action" type="string" default="create">

<cfoutput>
	#includePartial(partial="/shared/status", objectError="#errorMessagesFor("contact")#")#
	<div class="row">
		<div class="span12">
			#startFormTag(controller="contacts", action="#action#", id="contactform", spamProtection=true)#
				<fieldset>
					<cfif action EQ "create">
						<legend>Add New Contact</legend>
					<cfelse>
						<legend>Edit Contact</legend>
						#hiddenField(objectName="contact", property="id")#
					</cfif>
					<div class="clearfix">
						<label for="contact-firstname">First Name:</label>
						<div class="input">
							#textField(objectName='contact', property='firstname', label="", minlength="1", maxlength="255", size="50", class="", autofocus="autofocus")#
							<span class="help-block">
								First, or given name, of the contact
							</span>
						</div>
					</div><!-- /clearfix -->
					<div class="clearfix">
						<label for="contact-lastname">Last Name:</label>
						<div class="input">
							#textField(objectName='contact', property='lastname', label="", minlength="1", maxlength="255", size="50", class="")#
							<span class="help-block">
								Last, or family name, of the contact
							</span>
						</div>
					</div><!-- /clearfix -->
					<div class="clearfix">
						<label for="contact-organization">Organization:</label>
						<div class="input">
							#textField(objectName='contact', property='company', label="", minlength="1", maxlength="255", size="50", class="")#
							<span class="help-block">
								Name of the company or organization the contact works for
							</span>
						</div>
					</div><!-- /clearfix -->
					<div class="clearfix">
						<label for="contact-title">Title:</label>
						<div class="input">
							#textField(objectName='contact', property='title', label="", minlength="1", maxlength="255", size="50", class="")#
							<span class="help-block">
								Job title the contact holds as the organization entered above
							</span>
						</div>
					</div><!-- /clearfix -->
					<div class="clearfix">
						<label for="contact-email">E-mail Address:</label>
						<div class="input">
							#textField(objectName='contact', property='email', label="", minlength="1", maxlength="255", size="50", class="")#
							<span class="help-block">
								Email address used by the contact
							</span>
						</div>
					</div><!-- /clearfix -->

					<div class="actions">
						<input type="submit" class="btn primary" value="Save changes">
						&nbsp;
						#linkTo(text="Cancel", controller="contacts", action="index", class="btn")#
						<cfif action EQ "update">
							#linkTo(text="Delete", controller="contacts", action="delete", key="#contact.id#", class="btn danger", confirm="Are you sure?")#
						</cfif>
					</div>
				</fieldset>
			#endFormTag()#
		</div>
	</div><!-- /row -->
</cfoutput>