<cfoutput>
	<fieldset>
		<legend>#contact.locations[#arguments.current#].type# Location</legend>
			#hiddenField(objectName="contact", association="locations", position=arguments.current, property="type", label="")#
		<div class="clearfix">
			<label for="contact-locations-#arguments.current#-address1">Address 1:</label>
			<div class="input">
				#textField(objectName="contact", association="locations", position=arguments.current, property="address1", label="")#
				<span class="help-block">
					First line of the mailing address
				</span>
			</div>
		</div><!-- /clearfix -->
		<div class="clearfix">
			<label for="contact-locations-#arguments.current#-address2">Address 2:</label>
			<div class="input">
				#textField(objectName="contact", association="locations", position=arguments.current, property="address2", label="")#
				<span class="help-block">
					Second line of the mailing address
				</span>
			</div>
		</div><!-- /clearfix -->
		<div class="clearfix">
			<label for="contact-locations-#arguments.current#-address3">Address 3:</label>
			<div class="input">
				#textField(objectName="contact", association="locations", position=arguments.current, property="address3", label="")#
				<span class="help-block">
					Third line of the mailing address
				</span>
			</div>
		</div><!-- /clearfix -->
		<div class="clearfix">
			<label for="contact-locations-#arguments.current#-city">City:</label>
			<div class="input">
				#textField(objectName="contact", association="locations", position=arguments.current, property="city", label="")#
				<span class="help-block">
					City of the mailing address
				</span>
			</div>
		</div><!-- /clearfix -->
		<div class="clearfix">
			<label for="contact-locations-#arguments.current#-state">State:</label>
			<div class="input">
				#textField(objectName="contact", association="locations", position=arguments.current, property="state", label="")#
				<span class="help-block">
					State of the mailing address
				</span>
			</div>
		</div><!-- /clearfix -->
		<div class="clearfix">
			<label for="contact-locations-#arguments.current#-zip">Zip:</label>
			<div class="input">
				#textField(objectName="contact", association="locations", position=arguments.current, property="zip", label="")#
				<span class="help-block">
					Zip code of the mailing address
				</span>
			</div>
		</div><!-- /clearfix -->
		<div class="clearfix">
			<label for="contact-locations-#arguments.current#-phone">Phone:</label>
			<div class="input">
				#textField(objectName="contact", association="locations", position=arguments.current, property="phone", label="")#
				<span class="help-block">
					Phone number to reach the contact at this location
				</span>
			</div>
		</div><!-- /clearfix -->
		<div class="clearfix">
			<label for="contact-locations-#arguments.current#-fax">Fax:</label>
			<div class="input">
				#textField(objectName="contact", association="locations", position=arguments.current, property="fax", label="")#
				<span class="help-block">
					Fax number to send documents to the contact at this location
				</span>
			</div>
		</div><!-- /clearfix -->
		<div class="clearfix">
			<label for="contact-locations-#arguments.current#-url">Website Address:</label>
			<div class="input">
				#textField(objectName="contact", association="locations", position=arguments.current, property="url", label="")#
				<span class="help-block">
					Internet website address for this location
				</span>
			</div>
		</div><!-- /clearfix -->
	</fieldset>
</cfoutput>