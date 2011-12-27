<!---
    |----------------------------------------------------------------------------------------------|
	| Parameter  | Required | Type    | Default | Description                                      |
    |----------------------------------------------------------------------------------------------|
	| name       | Yes      | string  |         | table name, in pluralized form                   |
	| force      | No       | boolean | false   | drop existing table of same name before creating |
	| id         | No       | boolean | true    | if false, defines a table with no primary key    |
	| primaryKey | No       | string  | id      | overrides default primary key name
    |----------------------------------------------------------------------------------------------|

    EXAMPLE:
      t = createTable(name='employees',force=false,id=true,primaryKey='empId');
      t.string(columnNames='name', default='', null=true, limit='255');
      t.text(columnNames='bio', default='', null=true);
      t.time(columnNames='lunchStarts', default='', null=true);
      t.datetime(columnNames='employmentStarted', default='', null=true);
      t.integer(columnNames='age', default='', null=true, limit='1');
      t.decimal(columnNames='hourlyWage', default='', null=true, precision='1', scale='2');
      t.date(columnNames='dateOfBirth', default='', null=true);
--->
<cfcomponent extends="np.plugins.dbmigrate.Migration" hint="create table to hold contact information">
  <cffunction name="up">
    <cfscript>
      t = createTable(name='tbl_Contact_Person', primaryKey='contact_id');
      t.string(columnNames='Fname', null=true, limit='255');
      t.string(columnNames='Lname', null=true, limit='255');
      t.string(columnNames='e_mail', null=true, limit='255');
      t.string(columnNames='job_title', null=true, limit='255');
      t.string(columnNames='company_name', null=true, limit='255');
      t.datetime(columnNames='created', default='', null=true);
      t.datetime(columnNames='updated', default='', null=true);
      t.datetime(columnNames='deleted', default='', null=true);
      t.create();
    </cfscript>
  </cffunction>
  <cffunction name="down">
    <cfscript>
      dropTable('tbl_contact_person');
    </cfscript>
  </cffunction>
</cfcomponent>
