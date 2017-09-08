INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'userProfileTypes', 'User Profile Types Definitions', '<?xml version="1.0" encoding="UTF-8"?>
<profiletypes>
	<profiletype typecode="PFL" typedescr="Default user profile">
		<attributes>
			<attribute name="fullname" attributetype="Monotext" description="Full Name" searchable="true">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>userprofile:fullname</role>
				</roles>
			</attribute>
			<attribute name="email" attributetype="Monotext" description="Email" searchable="true">
				<validations>
					<required>true</required>
					<regexp><![CDATA[.+@.+.[a-z]+]]></regexp>
				</validations>
				<roles>
					<role>userprofile:email</role>
				</roles>
			</attribute>
		</attributes>
	</profiletype>
</profiletypes>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'imageDimensions', 'Definition of the resized image dimensions', '<Dimensions>
	<Dimension>
		<id>1</id>
		<dimx>90</dimx>
		<dimy>90</dimy>
	</Dimension>
	<Dimension>
		<id>2</id>
		<dimx>130</dimx>
		<dimy>130</dimy>
	</Dimension>
	<Dimension>
		<id>3</id>
		<dimx>150</dimx>
		<dimy>150</dimy>
	</Dimension>
</Dimensions>
');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'langs', 'Definition of the system languages', '<?xml version="1.0" encoding="UTF-8"?>
<Langs>
  <Lang>
    <code>en</code>
    <descr>English</descr>
    <default>true</default>
  </Lang>
  <Lang>
    <code>it</code>
    <descr>Italian</descr>
  </Lang>
</Langs>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'contentTypes', 'Definition of the Content Types', '<?xml version="1.0" encoding="UTF-8"?>
<contenttypes>
	<contenttype typecode="ANN" typedescr="Announcement" viewpage="announcements_read" listmodel="10051" defaultmodel="10005">
		<attributes>
			<attribute name="Title" attributetype="Longtext" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="StartDate" attributetype="Date" description="Start Date" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="EndDate" attributetype="Date" description="End Date" searcheable="true">
				<validations>
					<required>true</required>
					<rangestart attribute="StartDate" />
				</validations>
			</attribute>
			<attribute name="Summary" attributetype="Hypertext" indexingtype="TEXT" />
			<list name="Documents" attributetype="Monolist">
				<nestedtype>
					<attribute name="Documents" attributetype="Attach" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="CNG" typedescr="Generic Content" viewpage="announcements_read" listmodel="10011" defaultmodel="10001">
		<attributes>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Hypertext" indexingtype="TEXT" />
			<attribute name="MainBody" attributetype="Hypertext" description="Main Body" indexingtype="TEXT" />
			<attribute name="Picture" attributetype="Image" />
			<attribute name="Caption" attributetype="Text" indexingtype="TEXT" />
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
			</list>
			<list name="Attaches" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attaches" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="DLD" typedescr="Download Card" viewpage="download" listmodel="10031" defaultmodel="10003">
		<attributes>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="File" attributetype="Attach">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="ShortDescr" attributetype="Hypertext" description="Short Description" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="LongDescr" attributetype="Hypertext" description="Long Description" indexingtype="TEXT" />
			<attribute name="Picture" attributetype="Image" />
			<attribute name="Caption" attributetype="Text" indexingtype="TEXT" />
		</attributes>
	</contenttype>
	<contenttype typecode="NWS" typedescr="News" viewpage="news_read" listmodel="10021" defaultmodel="10002">
		<attributes>
			<attribute name="Date" attributetype="Date" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Hypertext" indexingtype="TEXT" />
			<attribute name="MainBody" attributetype="Hypertext" description="Main Body" indexingtype="TEXT">
				<validations />
			</attribute>
			<attribute name="Picture" attributetype="Image" />
			<attribute name="Caption" attributetype="Text" indexingtype="TEXT" />
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
			</list>
			<list name="Attaches" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attaches" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="RSL" typedescr="Resolution" viewpage="resolutions_read" listmodel="10041" defaultmodel="10004">
		<attributes>
			<attribute name="Number" attributetype="Number" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Date" attributetype="Date" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Title" attributetype="Longtext" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Summary" attributetype="Hypertext" indexingtype="TEXT" />
			<list name="Documents" attributetype="Monolist">
				<nestedtype>
					<attribute name="Documents" attributetype="Attach" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
</contenttypes>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'params', 'Configuration params.', '<?xml version="1.0" encoding="UTF-8"?>
<Params>
	<Param name="urlStyle">breadcrumbs</Param>
	<Param name="hypertextEditor">fckeditor</Param>
	<Param name="treeStyle_page">classic</Param>
	<Param name="treeStyle_category">classic</Param>
	<Param name="startLangFromBrowser">false</Param>
	<Param name="firstTimeMessages">false</Param>
        <Param name="useJsessionId">false</Param>
	<Param name="baseUrl">request</Param>
	<Param name="baseUrlContext">true</Param>
	<SpecialPages>
		<Param name="notFoundPageCode">notfound</Param>
		<Param name="homePageCode">homepage</Param>
		<Param name="errorPageCode">errorpage</Param>
		<Param name="loginPageCode">login</Param>
	</SpecialPages>
	<FeaturesOnDemand>
		<Param name="groupsOnDemand">true</Param>
		<Param name="categoriesOnDemand">true</Param>
		<Param name="contentTypesOnDemand">true</Param>
		<Param name="contentModelsOnDemand">true</Param>
		<Param name="apisOnDemand">true</Param>
		<Param name="resourceArchivesOnDemand">true</Param>
	</FeaturesOnDemand>
	<ExtendendPrivacyModule>
		<Param name="extendedPrivacyModuleEnabled">false</Param>
		<Param name="maxMonthsSinceLastAccess">6</Param>
		<Param name="maxMonthsSinceLastPasswordChange">3</Param>
	</ExtendendPrivacyModule>
</Params>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'license', 'License', '<?xml version="1.0" encoding="UTF-8"?>
<license>
  <key></key>
</license>
');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'subIndexDir', 'Name of the sub-directory containing content indexing files', 'indexdir20140703142340');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'entandoComponentsReport', 'The component installation report', '<?xml version="1.0" encoding="UTF-8"?>
<reports status="OK">
	<creation>2015-02-12 10:06:34</creation>
	<lastupdate>2015-02-12 10:07:04</lastupdate>
	<components>
		<component code="entandoCore" date="2015-02-12 10:06:34" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="OK">
					<table name="authgroups" />
					<table name="authpermissions" />
					<table name="authroles" />
					<table name="authrolepermissions" />
					<table name="authusers" />
					<table name="authusergrouprole" />
					<table name="api_oauth_consumers" />
					<table name="api_oauth_tokens" />
					<table name="apicatalog_methods" />
					<table name="apicatalog_services" />
					<table name="authuserprofiles" />
					<table name="authuserprofilesearch" />
					<table name="authuserprofileattrroles" />
					<table name="actionlogrecords" />
					<table name="actionlogrelations" />
				</datasource>
				<datasource name="portDataSource" status="OK">
					<table name="sysconfig" />
					<table name="categories" />
					<table name="localstrings" />
					<table name="pagemodels" />
					<table name="pages" />
					<table name="widgetcatalog" />
					<table name="guifragment" />
					<table name="widgetconfig" />
					<table name="uniquekeys" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jacms" date="2015-02-12 10:06:53" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="OK">
					<table name="contentmodels" />
					<table name="contents" />
					<table name="resources" />
					<table name="resourcerelations" />
					<table name="contentrelations" />
					<table name="contentsearch" />
					<table name="contentattributeroles" />
					<table name="workcontentrelations" />
					<table name="workcontentsearch" />
					<table name="workcontentattributeroles" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-html5-essentials" date="2015-02-12 10:06:57" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-content-announcement" date="2015-02-12 10:06:57" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-content-news" date="2015-02-12 10:06:57" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-login_form" date="2015-02-12 10:06:57" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-content-download" date="2015-02-12 10:06:57" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-less" date="2015-02-12 10:06:57" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-bootstrap" date="2015-02-12 10:06:57" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-language_choose" date="2015-02-12 10:06:57" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-navigation_menu" date="2015-02-12 10:06:57" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-search_form" date="2015-02-12 10:06:57" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-navigation_bar" date="2015-02-12 10:06:57" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-navigation_breadcrumbs" date="2015-02-12 10:06:57" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-page-2columns-left" date="2015-02-12 10:06:57" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-admin-console" date="2015-02-12 10:06:57" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="OK">
					<table name="authusershortcuts" />
					<table name="actionloglikerecords" />
					<table name="actionlogcommentrecords" />
				</datasource>
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-content-resolution" date="2015-02-12 10:06:58" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-content-generic" date="2015-02-12 10:06:58" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-page-bootstrap-hero" date="2015-02-12 10:06:58" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-jquery" date="2015-02-12 10:06:58" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="portalexample_card" date="2015-02-12 10:06:58" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="OK">
					<table name="portalexample_cards" />
				</datasource>
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-portal-ui" date="2015-02-12 10:06:58" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
	</components>
</reports>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'dataTypeDefinitions', 'Definition of the Type Types', '<datatypes />');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'dataobjectsubdir', 'Name of the sub-directory containing dataobject indexing files', 'index');


INSERT INTO categories (catcode, parentcode, titles) VALUES ('home', 'home', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="it">Generale</property>
<property key="en">All</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('resolutions', 'home', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Resolutions</property>
<property key="it">Delibere</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('resolutions_council', 'resolutions', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Council Resolutions</property>
<property key="it">Delibere di Consiglio</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('resolutions_giunta', 'resolutions', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Giunta Resolutions</property>
<property key="it">Delibere di Giunta</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('downloads', 'home', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Downloads</property>
<property key="it">Download</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('documents', 'downloads', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Documents</property>
<property key="it">Documenti</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('selcf_certifications', 'downloads', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Self Certifications</property>
<property key="it">Autocertificazioni</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('citizen_registry', 'documents', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Citizen Registry</property>
<property key="it">Anagrafe</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('taxes', 'documents', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Taxes</property>
<property key="it">Tributi</property>
</properties>

');



INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jacms_CONTENT_PREVIEW', 'en', 'Content Preview');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jacms_CONTENT_PREVIEW', 'it', 'Anteprima contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jacms_BACK_TO_EDIT_CONTENT', 'en', 'Back to content editing');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jacms_BACK_TO_EDIT_CONTENT', 'it', 'Ritorna in redazione contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PFL_list', 'en', 'list');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PFL_boolean', 'en', 'Boolean');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PFL_cbox', 'en', 'Checkbox');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PFL_hytext', 'en', 'Hypertext');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PFL_threesta', 'en', 'Threestate attribute');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PFL_monolist', 'en', 'monolist');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PFL_cposite', 'en', 'composite');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PFL_ltext', 'en', 'Longtext');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PFL_mlist', 'en', 'monolist');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PFL_date', 'en', 'Exact Date');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PFL_number', 'en', 'Number');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE', 'en', 'page');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE', 'it', 'pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE_MODEL', 'en', 'page model');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE_MODEL', 'it', 'modello pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE_TITLE', 'en', 'page title');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE_TITLE', 'it', 'titolo pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NOT_ALLOWED', 'en', 'User not allowed');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NOT_ALLOWED', 'it', 'Utente non autorizzato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_BASIC', 'it', 'Normale');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_BASIC', 'en', 'Normal');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_MINT', 'it', 'Avanzata');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_MINT', 'en', 'Advanced');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_BASIC_GOTO', 'it', 'Accedi con client normale');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_BASIC_GOTO', 'en', 'Go to the administration with normal client');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_MINT_GOTO', 'it', 'Accedi con client avanzato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_MINT_GOTO', 'en', 'Go to the administration with advanced client');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DATE_FROM', 'en', 'From');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DATE_FROM', 'it', 'Da');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DATE_TO', 'en', 'To');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DATE_TO', 'it', 'A');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('TEXT', 'en', 'Text');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('TEXT', 'it', 'Testo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ALL', 'en', 'All');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ALL', 'it', 'Tutte');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NUMBER_FROM', 'en', 'From');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NUMBER_FROM', 'it', 'Da');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NUMBER_TO', 'en', 'To');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NUMBER_TO', 'it', 'A');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCES', 'it', 'Risorse API');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCES', 'en', 'API Resources');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_ERROR', 'it', 'Errore');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_ERROR', 'en', 'Errors');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE', 'it', 'Risorsa');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE', 'en', 'Resource');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_DESCRIPTION', 'it', 'Descrizione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_DESCRIPTION', 'en', 'Description');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_GOTO_DETAILS', 'it', 'Vai al dettaglio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_GOTO_DETAILS', 'en', 'Go to details');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_OFF', 'it', 'Non Attivo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_OFF', 'en', 'Not Active');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_FREE', 'it', 'Attivo, Accesso Libero');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_FREE', 'en', 'Active, Free Access');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_AUTH', 'it', 'Attivo, Utenti Registrati');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_AUTH', 'en', 'Active, Registered Users');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_LOCK', 'it', 'Metodo Attivo, Utenti Registrati con Autorizzazione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_LOCK', 'en', 'Active, Registered Users with Permission');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_NA', 'it', 'Metodo Non Disponibile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_NA', 'en', 'Method Not Available');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_NO_RESOURCES', 'it', 'Non ci sono Risorse API disponibili.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_NO_RESOURCES', 'en', 'No API Resources available at the moment.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_TABLE_SUMMARY', 'it', 'La tabella elenaca le Risorse API disponibile nel sistema. Nome della risorsa, la sua descrizione e lo stato di ciascun metodo.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_TABLE_SUMMARY', 'en', 'The table lists the API Resources available in the system. Method name, description, group and the status of each method.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE_NAME', 'it', 'Nome');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE_NAME', 'en', 'Name');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE_NAMESPACE', 'it', 'Namespace');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE_NAMESPACE', 'en', 'Namespace');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE_SOURCE', 'it', 'Sorgente');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE_SOURCE', 'en', 'Source');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE_URI', 'it', 'URI');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE_URI', 'en', 'URI');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_EXTENSION', 'it', 'Estensione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_EXTENSION', 'en', 'Extension');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_EXTENSION_NOTE', 'it', '''.xml'' per la risposta in formato xml e ''.json'' per la risposta in formato json.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_EXTENSION_NOTE', 'en', '''.xml'' for response in xml format and ''.json'' for json.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_KO', 'it', 'Non disponibile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_KO', 'en', 'Not available');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD', 'it', 'Metodo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD', 'en', 'Method');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_OK', 'it', 'Disponibile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_OK', 'en', 'Available');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_AUTHORIZATION', 'it', 'Autorizzazione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_AUTHORIZATION', 'en', 'Authorization');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_AUTH_FREE', 'it', 'Nessuna, questo metodo è pubblico');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_AUTH_FREE', 'en', 'None, this method is public');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_AUTH_WITH_PERM', 'it', 'Utenti registrati con permesso');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_AUTH_WITH_PERM', 'en', 'Registered users with permission');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_AUTH_SIMPLE', 'it', 'Utenti registrati');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_AUTH_SIMPLE', 'en', 'Registered users');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_SCHEMAS', 'it', 'Schema XML');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_SCHEMAS', 'en', 'XML Schemas');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_SCHEMA_REQ', 'it', 'Richiesta');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_SCHEMA_REQ', 'en', 'Request');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_SCHEMA_RESP', 'it', 'Risposta');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_SCHEMA_RESP', 'en', 'Response');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_PARAMS_SUMM', 'it', 'Questa tabella mostra i parametri per la richiesta del metodo. Per ciascuno di essi ci sono tre colonne: il nome del parametro, la descrizione del parametro e l''indicazione di obbligatorietà.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_PARAMS_SUMM', 'en', 'This table shows the request parameters for this method. For each of them there are three columns: the parameter name, the parameter description and whether if it''s mandatory or not.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_REQUEST_PARAMS', 'it', 'Parametri');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_REQUEST_PARAMS', 'en', 'Parameters');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_PARAM_NAME', 'it', 'Nome');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_PARAM_NAME', 'en', 'Name');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_PARAM_DESCRIPTION', 'it', 'Descrizione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_PARAM_DESCRIPTION', 'en', 'Description');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_PARAM_REQUIRED', 'it', 'Obbligatorio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_PARAM_REQUIRED', 'en', 'Mandatory');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('YES', 'it', 'Si');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('YES', 'en', 'Yes');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NO', 'it', 'No');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NO', 'en', 'No');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_GOTO_LIST', 'it', 'Lista delle Risorse API');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_GOTO_LIST', 'en', 'API Resource List');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ANN_FROM', 'en', 'from');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ANN_FROM', 'it', 'da');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ANN_TO', 'en', 'to');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ANN_TO', 'it', 'a');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ANN_DOCUMENTS', 'en', 'Documents');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ANN_DOCUMENTS', 'it', 'Documenti');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DLD_CATEGORIES', 'en', 'Tags');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DLD_CATEGORIES', 'it', 'Tag');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CNG_ATTACHMENTS', 'en', 'Attachments');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CNG_ATTACHMENTS', 'it', 'Allegati');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CNG_LINKS', 'en', 'Links');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CNG_LINKS', 'it', 'Link');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NWS_ATTACHMENTS', 'en', 'Attachments');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NWS_ATTACHMENTS', 'it', 'Allegati');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NWS_LINKS', 'en', 'Links');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NWS_LINKS', 'it', 'Link');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('RSL_DOCUMENTS', 'en', 'Documents');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('RSL_DOCUMENTS', 'it', 'Documenti');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLC_LANGUAGE', 'en', 'Language');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLC_LANGUAGE', 'it', 'Lingua');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLC_LANG_it', 'en', 'Italiano');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLC_LANG_it', 'it', 'Italiano');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLC_LANG_en', 'en', 'English');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLC_LANG_en', 'it', 'English');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLF_WELCOME', 'en', 'Hello');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLF_WELCOME', 'it', 'Ciao');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLF_ADMINISTRATION', 'en', 'Administration');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLF_ADMINISTRATION', 'it', 'Amministrazione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLF_SIGNOUT', 'en', 'Sign out');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLF_SIGNOUT', 'it', 'Esci');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLF_SIGNIN', 'en', 'Sign in');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLF_SIGNIN', 'it', 'Accedi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLF_USER_STATUS_EXPIRED', 'en', 'Your account has expired!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLF_USER_STATUS_EXPIRED', 'it', 'Credenziali scadute!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLF_USER_STATUS_CREDENTIALS_INVALID', 'en', 'Wrong username or password!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLF_USER_STATUS_CREDENTIALS_INVALID', 'it', 'Le credenziali non sono corrette!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLF_PROFILE_CONFIGURATION', 'en', 'Edit profile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLF_PROFILE_CONFIGURATION', 'it', 'Modifica profilo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLF_USERNAME', 'en', 'Username');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLF_USERNAME', 'it', 'Utente');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLF_PASSWORD', 'en', 'Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESLF_PASSWORD', 'it', 'Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESNB_YOU_ARE_HERE', 'en', 'You are here');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESNB_YOU_ARE_HERE', 'it', 'Sei qui');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESSF_SEARCH', 'en', 'Search');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ESSF_SEARCH', 'it', 'Cerca');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAM_DEFAULT_VALUE', 'it', 'Default');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAM_DEFAULT_VALUE', 'en', 'Default');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAM_NAME', 'it', 'Nome');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAM_NAME', 'en', 'Name');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAM_DESCRIPTION', 'it', 'Descrizione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAM_DESCRIPTION', 'en', 'Description');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAM_REQUIRED', 'it', 'Obbligatorio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAM_REQUIRED', 'en', 'Required');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_SCHEMAS', 'it', 'XML Schema');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_SCHEMAS', 'en', 'XML Schema');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_SCHEMA_RESP', 'it', 'Risposta');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_SCHEMA_RESP', 'en', 'Response');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAMETERS_SUMMARY', 'it', 'Summary..');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAMETERS_SUMMARY', 'en', 'Summary..');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('EDIT_THIS_CONTENT', 'en', 'Edit');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('EDIT_THIS_CONTENT', 'it', 'Modifica');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PORTAL_TITLE', 'en', 'Entando Town');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PORTAL_TITLE', 'it', 'Entando Town');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CNG_READ_MORE', 'en', 'View details');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CNG_READ_MORE', 'it', 'Continua');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NWS_READ_MORE', 'en', 'View details');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NWS_READ_MORE', 'it', 'Continua');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ANN_READ_MORE', 'en', 'View details');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ANN_READ_MORE', 'it', 'Dettagli');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH', 'en', 'Search');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH', 'it', 'Cerca');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LIST_VIEWER_EMPTY', 'en', 'No result found. Broaden your search and try again!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LIST_VIEWER_EMPTY', 'it', 'Nessun risultato trovato. Imposta dei parametri meno stringenti e prova ancora!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_RESULTS', 'en', 'Search Result');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_RESULTS', 'it', 'Risultati della Ricerca');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCHED_FOR', 'en', 'You searched for');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCHED_FOR', 'it', 'Hai cercato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_NOTHING_FOUND', 'en', 'No result found. Try another search term!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_NOTHING_FOUND', 'it', 'Nessun risultato trovato. Prova a cercare un altro termine!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_RESULTS_INTRO', 'en', 'Found');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_RESULTS_INTRO', 'it', 'Sono stati trovati');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_RESULTS_OUTRO', 'en', 'results. Showing:');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_RESULTS_OUTRO', 'it', 'risultati. Mostrati:');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DLD_DOWNLOAD', 'en', 'Get it now');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DLD_DOWNLOAD', 'it', 'Scarica');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DLD_GET_INFO', 'en', 'View details');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DLD_GET_INFO', 'it', 'Dettagli');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CARD_HOLDER', 'en', 'Holder');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CARD_HOLDER', 'it', 'Titolare');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_CARDS', 'en', 'Search Cards');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_CARDS', 'it', 'Cerca Scheda');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CARDS_NUMBER', 'en', 'Number Cards');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CARDS_NUMBER', 'it', 'Numero Schede');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('VIEW_CARD', 'en', 'Details');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('VIEW_CARD', 'it', 'Dettagli');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CARD_NOTE', 'en', 'Note');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CARD_NOTE', 'it', 'Note');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CARD_DESCRIPTION', 'en', 'Area Pass');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CARD_DESCRIPTION', 'it', 'Zona Pass');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CARD_CREATION_DATE', 'en', 'Release Date');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CARD_CREATION_DATE', 'it', 'Data Rilascio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('BACK_TO_CARDS_LIST', 'en', 'Back to the list');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('BACK_TO_CARDS_LIST', 'it', 'Torna alla lista');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('RESERVED_AREA', 'en', 'Please sign in');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('RESERVED_AREA', 'it', '? necessario autenticarsi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USERNAME', 'en', 'Username');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USERNAME', 'it', 'Utente');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PASSWORD', 'en', 'Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PASSWORD', 'it', 'Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SIGNIN', 'en', 'Sign in');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SIGNIN', 'it', 'Entra');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME', 'en', 'Welcome');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME', 'it', 'Benvenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DATE_CREATION', 'en', 'Creation date');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DATE_CREATION', 'it', 'Data creazione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DATE_ACCESS_LAST', 'en', 'Last access');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DATE_ACCESS_LAST', 'it', 'Ultimo accesso');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DATE_PASSWORD_CHANGE_LAST', 'en', 'Last change');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DATE_PASSWORD_CHANGE_LAST', 'it', 'Ultimo cambio password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LOGOUT', 'en', 'Logout');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LOGOUT', 'it', 'Logout');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE_NOT_FOUND', 'en', 'Error 404: Page not found.<br />You could try that sporty search form up there in the navigation bar.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE_NOT_FOUND', 'it', 'Error 404: Pagina non trovata.<br />Prova a usare il form di ricerca lassù nella barra di navigazione.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('GENERIC_ERROR', 'en', '500: Generic Error.<br />
This wasn''t supposed to happen. Try again in a few minutes.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('GENERIC_ERROR', 'it', '500: Errore Generico.<br />
Questo non sarebbe dovuto accedere. Prova di nuovo tra qualche minuto.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_GOTO_SERVICE_LIST', 'en', 'Service List');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_GOTO_SERVICE_LIST', 'it', 'Elenco Servizi API');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE', 'en', 'Service');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE', 'it', 'Servizio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_NO_SERVICES', 'en', 'No API Services available.<br />The system administrator is able to create new API Services.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_NO_SERVICES', 'it', 'Non è disponibile alcun Servizio API.<br />L''amministratore di sistema può crearne.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGER_PREV', 'en', 'Previous');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGER_PREV', 'it', 'Indietro');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGER_NEXT', 'en', 'Next');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGER_NEXT', 'it', 'Ancora');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGER_FIRST', 'en', 'Start');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGER_FIRST', 'it', 'Inizio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGER_LAST', 'en', 'End');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGER_LAST', 'it', 'Fine');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGER_STEP_BACKWARD', 'en', 'Previous');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGER_STEP_BACKWARD', 'it', 'Indietro di');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGER_STEP_FORWARD', 'en', 'Next');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGER_STEP_FORWARD', 'it', 'Avanti di');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CATEGORY', 'en', 'Category');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CATEGORY', 'it', 'Categoria');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('IGNORE', 'en', 'Ignore');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('IGNORE', 'it', 'Ignora');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('BOTH', 'en', 'Both');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('BOTH', 'it', 'Entrambi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_FILTERS_BUTTON', 'en', 'Narrow your search');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_FILTERS_BUTTON', 'it', 'Filtra ulteriormente');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ERRORS', 'en', 'Whoops! You''re doing it wrong!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ERRORS', 'it', 'Oops! Hai sbagliato qualcosa!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jacms_LIST_VIEWER_FIELD', 'en', 'The value for field');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jacms_LIST_VIEWER_FIELD', 'it', 'Il valore del campo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jacms_LIST_VIEWER_INVALID_FORMAT', 'en', 'is invalid');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jacms_LIST_VIEWER_INVALID_FORMAT', 'it', 'non è corretto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jacms_LIST_VIEWER_INVALID_RANGE', 'en', 'generates an invalid range');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jacms_LIST_VIEWER_INVALID_RANGE', 'it', 'genera un range non valido');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('COPYRIGHT', 'en', 'Copyright &copy; Entando 2015');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('COPYRIGHT', 'it', 'Copyright &copy; Entando 2015');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_CONFIGURATION', 'it', 'Configura il profile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_CONFIGURATION', 'en', 'Edit profile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_CONFIRM_NEWPASS', 'it', 'Conferma nuova password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_CONFIRM_NEWPASS', 'en', 'Confirm new password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_EDITPASSWORD', 'it', 'Modifica Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_EDITPASSWORD', 'en', 'Edit Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_EDITPASSWORD_TITLE', 'it', 'Modifica Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_EDITPASSWORD_TITLE', 'en', 'Edit Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_EDITPROFILE_TITLE', 'it', 'Modifica profilo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_EDITPROFILE_TITLE', 'en', 'Edit Profile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_MOVEUP', 'it', 'Sposta su');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_MOVEUP', 'en', 'Move up');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_MOVEUP_IN', 'it', 'Sposta su in posizione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_MOVEUP_IN', 'en', 'Move at position');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_MOVEDOWN', 'it', 'Sposta giu');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_MOVEDOWN', 'en', 'Move down');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_MOVEDOWN_IN', 'it', 'Sposta giu in posizione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_MOVEDOWN_IN', 'en', 'Move down at position');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_REMOVE', 'it', 'Rimuovi dalla lista');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_REMOVE', 'en', 'Remove from list');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_MESSAGE_TITLE_FIELDERRORS', 'it', 'Attenzione, si sono verificati i seguenti errori nella compilazione del modulo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_MESSAGE_TITLE_FIELDERRORS', 'en', 'Warning, please check the module');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_NEWPASS', 'it', 'Nuova password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_NEWPASS', 'en', 'New password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_OLDPASSWORD', 'it', 'Vecchia password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_OLDPASSWORD', 'en', 'Old password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PASSWORD_UPDATED', 'it', 'La password è stata aggiornata correttamente.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PASSWORD_UPDATED', 'en', 'Your password updated successfully.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PLEASE_LOGIN', 'it', 'E'' necessario effettuare l''accesso');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PLEASE_LOGIN', 'en', 'Please login');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PLEASE_LOGIN_AGAIN', 'it', 'E'' necessario riloggarsi.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PLEASE_LOGIN_AGAIN', 'en', 'Please logout and login again.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PLEASE_LOGIN_TO_EDIT_PASSWORD', 'it', 'E'' necessario effettuare l''accesso per cambiare la password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PLEASE_LOGIN_TO_EDIT_PASSWORD', 'en', 'Please login in order to change your password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PROFILE_UPDATED', 'it', 'Profilo aggiornato correttamente.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PROFILE_UPDATED', 'en', 'Your profile is now updated.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_SAVE_PASSWORD', 'it', 'Salva password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_SAVE_PASSWORD', 'en', 'Save password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_SAVE_PROFILE', 'it', 'Salva il profilo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_SAVE_PROFILE', 'en', 'Save profile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ADDITEM_LIST', 'it', 'Aggiungi nuovo elemento alla lista');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ADDITEM_LIST', 'en', 'Add an element to the list');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_YES', 'it', 'Si');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_YES', 'en', 'Yes');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_NO', 'it', 'No');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_NO', 'en', 'No');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_BOTH_YES_AND_NO', 'it', 'Indifferente');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_BOTH_YES_AND_NO', 'en', 'Both');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MANDATORY_SHORT', 'it', '*');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MANDATORY_SHORT', 'en', '*');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MANDATORY_FULL', 'it', 'Obbligatorio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MANDATORY_FULL', 'en', 'Mandatory');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MINLENGTH_SHORT', 'it', 'Min');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MINLENGTH_SHORT', 'en', 'Min');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MINLENGTH_FULL', 'it', 'Lunghezza Minima');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MINLENGTH_FULL', 'en', 'Minimum length');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MAXLENGTH_SHORT', 'it', 'Max');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MAXLENGTH_SHORT', 'en', 'Max');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MAXLENGTH_FULL', 'it', 'Lunghezza Massima');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ENTITY_ATTRIBUTE_MAXLENGTH_FULL', 'en', 'Maximum length');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_CURRENT_USER_WITHOUT_PROFILE', 'it', 'Utente corrente senza profilo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_CURRENT_USER_WITHOUT_PROFILE', 'en', 'Current user without profile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_KEY', 'en', 'Key');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_KEY', 'it', 'Id');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARENT_API', 'en', 'Parent API');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARENT_API', 'it', 'API Padre');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTHORIZATION', 'en', 'Authorization');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTHORIZATION', 'it', 'Autorizzazione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTH_FREE', 'en', 'Free');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTH_FREE', 'it', 'Accesso Libero');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_URI', 'en', 'URI');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_URI', 'it', 'URI');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAMETERS', 'en', 'Parameters');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAMETERS', 'it', 'Parametri');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PFL_fullname', 'en', 'Full Name');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PFL_email', 'en', 'Email');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PFL_enum', 'en', 'Enumerator');


INSERT INTO pagemodels (code, descr, frames, plugincode, templategui) VALUES ('service', 'Service Page', '<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>Sample Frame</descr>
	</frame>
</frames>

', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<title><@wp.currentPage param="title" /></title>
</head>
<body>
<h1><@wp.currentPage param="title" /></h1>
<a href="<@wp.url page="homepage" />" >Home</a><br>
<div><@wp.show frame=0 /></div>
</body>
</html>');
INSERT INTO pagemodels (code, descr, frames, plugincode, templategui) VALUES ('entando-page-2columns-left', '2 Columns - Left', '<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>Navbar 1</descr>
		<defaultWidget code="entando-widget-language_choose" />
	</frame>
	<frame pos="1">
		<descr>Navbar 2</descr>
		<defaultWidget code="entando-widget-navigation_bar">
			<properties>
				<property key="navSpec">code(homepage)</property>
			</properties>
		</defaultWidget>
	</frame>
	<frame pos="2">
		<descr>Navbar 3</descr>
		<defaultWidget code="entando-widget-search_form" />
	</frame>
	<frame pos="3">
		<descr>Navbar 4</descr>
		<defaultWidget code="entando-widget-login_form" />
	</frame>
	<frame pos="4">
		<descr>Toolbar 1</descr>
		<defaultWidget code="entando-widget-navigation_breadcrumbs" />
	</frame>
	<frame pos="5">
		<descr>Left 1</descr>
		<defaultWidget code="entando-widget-navigation_menu">
			<properties>
				<property key="navSpec">code(homepage).subtree(1)</property>
			</properties>
		</defaultWidget>
	</frame>
	<frame pos="6">
		<descr>Left 2</descr>
	</frame>
	<frame pos="7">
		<descr>Left 3</descr>
	</frame>
	<frame pos="8">
		<descr>Left 4</descr>
	</frame>
	<frame pos="9">
		<descr>Left 5</descr>
	</frame>
	<frame pos="10">
		<descr>Toolbar 2</descr>
	</frame>
	<frame pos="11" main="true">
		<descr>Top Story</descr>
	</frame>
	<frame pos="12">
		<descr>Box 1</descr>
	</frame>
	<frame pos="13">
		<descr>Box 2</descr>
	</frame>
	<frame pos="14">
		<descr>Box 3</descr>
	</frame>
	<frame pos="15">
		<descr>Side 1</descr>
	</frame>
	<frame pos="16">
		<descr>Side 2</descr>
	</frame>
	<frame pos="17">
		<descr>Side 3</descr>
	</frame>
	<frame pos="18">
		<descr>Side 4</descr>
	</frame>
	<frame pos="19">
		<descr>Content 1</descr>
	</frame>
	<frame pos="20">
		<descr>Content 2</descr>
	</frame>
	<frame pos="21">
		<descr>Content 3</descr>
	</frame>
	<frame pos="22">
		<descr>Content 4</descr>
	</frame>
	<frame pos="23">
		<descr>Content 5</descr>
	</frame>
	<frame pos="24">
		<descr>Side 5</descr>
	</frame>
	<frame pos="25">
		<descr>Side 6</descr>
	</frame>
	<frame pos="26">
		<descr>Side 7</descr>
	</frame>
	<frame pos="27">
		<descr>Side 8</descr>
	</frame>
	<frame pos="28">
		<descr>Footer 1</descr>
	</frame>
	<frame pos="29">
		<descr>Footer 2</descr>
	</frame>
	<frame pos="30">
		<descr>Footer 3</descr>
	</frame>
	<frame pos="31">
		<descr>Footer 4</descr>
	</frame>
	<frame pos="32">
		<descr>Footer 5</descr>
	</frame>
</frames>

', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>
		<@wp.currentPage param="title" /> - <@wp.i18n key="PORTAL_TITLE" />
	</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="" />
	<meta name="author" content="" />
		<link rel="icon" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />
		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
			<script src="<@wp.resourceURL />static/js/entando-misc-html5-essentials/html5shiv.js"></script>
		<![endif]-->
		<@wp.fragment code="models-lesscss-active" escapeXml=false />
        <@wp.fragment code="models-common-utils" escapeXml=false />
	</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="#"><img src="<@wp.imgURL />entando-logo.png" alt="Entando - Access. Build. Connect." /></a>
				<div class="nav-collapse collapse">
					<@wp.show frame=0 />
					<@wp.show frame=1 />
					<@wp.show frame=2 />
					<@wp.show frame=3 />
				</div><!-- /.nav-collapse -->
			</div>
		</div><!-- /navbar-inner -->
	</div>

	<div class="container">

		<div class="row">
			<div class="span12">
				<@wp.show frame=4 />
			</div>
		</div>

		<div class="row">
			<div class="span3">
				<@wp.show frame=5 />
				<@wp.show frame=6 />
				<@wp.show frame=7 />
				<@wp.show frame=8 />
				<@wp.show frame=9 />
			</div>
			<div class="span9">

				<div class="row">
					<div class="span9">
						<@wp.show frame=10 />
					</div>
				</div>

				<div class="row">
					<div class="span9">
						<@wp.show frame=11 />
					</div>
				</div>
				<div class="row">
					<div class="span3">
						<@wp.show frame=12 />
					</div>
					<div class="span3">
						<@wp.show frame=13 />
					</div>
					<div class="span3">
						<@wp.show frame=14 />
					</div>
				</div>
				<div class="row">
					<div class="span4">
						<@wp.show frame=15 />
					</div>
					<div class="span4 offset1">
						<@wp.show frame=16 />
					</div>
				</div>
				<div class="row">
					<div class="span4">
						<@wp.show frame=17 />
					</div>
					<div class="span4 offset1">
						<@wp.show frame=18 />
					</div>
				</div>
				<div class="row">
					<div class="span9">
						<@wp.show frame=19 />
					</div>
				</div>
				<div class="row">
					<div class="span9">
						<@wp.show frame=20 />
					</div>
				</div>
				<div class="row">
					<div class="span9">
						<@wp.show frame=21 />
					</div>
				</div>
				<div class="row">
					<div class="span9">
						<@wp.show frame=22 />
					</div>
				</div>
				<div class="row">
					<div class="span9">
						<@wp.show frame=23 />
					</div>
				</div>
				<div class="row">
					<div class="span4">
						<@wp.show frame=24 />
					</div>
					<div class="span4 offset1">
						<@wp.show frame=25 />
					</div>
				</div>
				<div class="row">
					<div class="span4">
						<@wp.show frame=26 />
					</div>
					<div class="span4 offset1">
						<@wp.show frame=27 />
					</div>
				</div>
			</div>
		</div>
	</div> <!-- /container -->

	<footer class="padding-medium-top">
		<div class="container">
			<div class="row margin-medium-bottom">
				<div class="span12">
					<@wp.show frame=28 />
					<@wp.show frame=29 />
				</div>
			</div>
			<div class="row margin-medium-bottom">
				<div class="span4">
					<@wp.show frame=30 />
				</div>
				<div class="span4">
					<@wp.show frame=31 />
				</div>
				<div class="span4">
					<@wp.show frame=32 />
				</div>
			</div>
			<div class="row">
				<p class="span12 text-center margin-medium-top"><@wp.i18n key="COPYRIGHT" escapeXml=false /> - Powered by <a href="http://www.entando.com/">Entando - Access. Build. Connect.</a></p>
			</div>
		</div>
	</footer>

</body>
</html>');
INSERT INTO pagemodels (code, descr, frames, plugincode, templategui) VALUES ('home', 'Home Page', NULL, NULL, NULL);
INSERT INTO pagemodels (code, descr, frames, plugincode, templategui) VALUES ('entando-page-bootstrap-hero', 'Bootstrap - Hero Unit', '<?xml version="1.0" encoding="UTF-8"?>
<frames>
	<frame pos="0">
		<descr>Navbar 1</descr>
		<defaultWidget code="entando-widget-language_choose" />
	</frame>
	<frame pos="1">
		<descr>Navbar 2</descr>
		<defaultWidget code="entando-widget-navigation_bar">
			<properties>
				<property key="navSpec">code(homepage)</property>
			</properties>
		</defaultWidget>
	</frame>
	<frame pos="2">
		<descr>Navbar 3</descr>
		<defaultWidget code="entando-widget-search_form" />
	</frame>
	<frame pos="3">
		<descr>Navbar 4</descr>
		<defaultWidget code="entando-widget-login_form" />
	</frame>
	<frame pos="4">
		<descr>Toolbar 1</descr>
	</frame>
	<frame pos="5">
		<descr>Hero Unit</descr>
	</frame>
	<frame pos="6">
		<descr>Toolbar 2</descr>
	</frame>
	<frame pos="7">
		<descr>Top Story</descr>
	</frame>
	<frame pos="8">
		<descr>Box 1</descr>
	</frame>
	<frame pos="9">
		<descr>Box 2</descr>
	</frame>
	<frame pos="10">
		<descr>Box 3</descr>
	</frame>
	<frame pos="11">
		<descr>Side 1</descr>
	</frame>
	<frame pos="12">
		<descr>Side 2</descr>
	</frame>
	<frame pos="13">
		<descr>Side 3</descr>
	</frame>
	<frame pos="14">
		<descr>Side 4</descr>
	</frame>
	<frame pos="15" main="true">
		<descr>Content 1</descr>
	</frame>
	<frame pos="16">
		<descr>Content 2</descr>
	</frame>
	<frame pos="17">
		<descr>Content 3</descr>
	</frame>
	<frame pos="18">
		<descr>Content 4</descr>
	</frame>
	<frame pos="19">
		<descr>Content 5</descr>
	</frame>
	<frame pos="20">
		<descr>Side 5</descr>
	</frame>
	<frame pos="21">
		<descr>Side 6</descr>
	</frame>
	<frame pos="22">
		<descr>Side 7</descr>
	</frame>
	<frame pos="23">
		<descr>Side 8</descr>
	</frame>
	<frame pos="24">
		<descr>Footer 1</descr>
	</frame>
	<frame pos="25">
		<descr>Footer 2</descr>
	</frame>
	<frame pos="26">
		<descr>Footer 3</descr>
	</frame>
	<frame pos="27">
		<descr>Footer 4</descr>
	</frame>
	<frame pos="28">
		<descr>Footer 5</descr>
	</frame>
</frames>

', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>
		<@wp.currentPage param="title" /> - <@wp.i18n key="PORTAL_TITLE" />
	</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="" />
	<meta name="author" content="" />
		<link rel="icon" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />
		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
			<script src="<@wp.resourceURL />static/js/entando-misc-html5-essentials/html5shiv.js"></script>
		<![endif]-->
		<@wp.fragment code="models-lesscss-active" escapeXml=false />
        <@wp.fragment code="models-common-utils" escapeXml=false />
		<link href="http://fonts.googleapis.com/css?family=Open+Sans|Rambla|Calligraffitti" rel="stylesheet" type="text/css" />
	</head>
<body>

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="#"><img src="<@wp.imgURL />entando-logo.png" alt="Entando - Access. Build. Connect." /></a>
				<div class="nav-collapse collapse">
					<@wp.show frame=0 />
					<@wp.show frame=1 />
					<@wp.show frame=2 />
					<@wp.show frame=3 />
				</div><!-- /.nav-collapse -->
			</div>
		</div><!-- /navbar-inner -->
	</div>

	<div class="container">

		<div class="row">
			<div class="span12">
				<@wp.show frame=4 />
			</div>
		</div>

		<!-- Main hero unit for a primary marketing message or call to action -->
		<div class="row">
			<@wp.show frame=5 />
		</div>

		<div class="row">
			<div class="span12">
				<@wp.show frame=6 />
			</div>
		</div>

		<div class="row">
			<div class="span12">
				<@wp.show frame=7 />
			</div>
		</div>

		<!-- Example row of columns -->
		<div class="row">
			<div class="span4">
				<@wp.show frame=8 />
			</div>
			<div class="span4">
				<@wp.show frame=9 />
			</div>
			<div class="span4">
				<@wp.show frame=10 />
			</div>
		</div>

		<div class="row">
			<div class="span6">
				<@wp.show frame=11 />
			</div>
			<div class="span6">
				<@wp.show frame=12 />
			</div>
		</div>
		<div class="row">
			<div class="span6">
				<@wp.show frame=13 />
			</div>
			<div class="span6">
				<@wp.show frame=14 />
			</div>
		</div>

		<div class="row">
			<div class="span12">
				<@wp.show frame=15 />
			</div>
		</div>
		<div class="row">
			<div class="span12">
				<@wp.show frame=16 />
			</div>
		</div>
		<div class="row">
			<div class="span12">
				<@wp.show frame=17 />
			</div>
		</div>
		<div class="row">
			<div class="span12">
				<@wp.show frame=18 />
			</div>
		</div>
		<div class="row">
			<div class="span12">
				<@wp.show frame=19 />
			</div>
		</div>

		<div class="row">
			<div class="span6">
				<@wp.show frame=20 />
			</div>
			<div class="span6">
				<@wp.show frame=21 />
			</div>
		</div>
		<div class="row">
			<div class="span6">
				<@wp.show frame=22 />
			</div>
			<div class="span6">
				<@wp.show frame=23 />
			</div>
		</div>

	</div> <!-- /container -->

		<footer class="padding-medium-top">

			<div class="container">
				<div class="row margin-medium-bottom">
					<div class="span12">
						<@wp.show frame=24 />
						<@wp.show frame=25 />
					</div>
				</div>
				<div class="row margin-medium-bottom">
					<div class="span4">
						<@wp.show frame=26 />
					</div>
					<div class="span4">
						<@wp.show frame=27 />
					</div>
					<div class="span4">
						<@wp.show frame=28 />
					</div>
				</div>
				<div class="row">
					<p class="span12 text-center margin-medium-top"><@wp.i18n key="COPYRIGHT" escapeXml=false /> - Powered by <a href="http://www.entando.com/">Entando - Access. Build. Connect.</a></p>
				</div>
			</div>
		</footer>
</body>
</html>');




INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('entando-widget-navigation_breadcrumbs', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation - Breadcrumbs</property>
<property key="it">Navigazione - Briciole di Pane</property>
</properties>

', NULL, NULL, NULL, NULL, 1, 'free');
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation - Bar</property>
<property key="it">Navigazione - Barra Orizzontale</property>
</properties>

', '<config>
	<parameter name="navSpec">Rules for the Page List auto-generation</parameter>
	<action name="navigatorConfig" />
</config>', NULL, NULL, NULL, 1, 'free');
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation - Vertical Menu</property>
<property key="it">Navigazione - Menù Verticale</property>
</properties>

', '<config>
	<parameter name="navSpec">Rules for the Page List auto-generation</parameter>
	<action name="navigatorConfig" />
</config>', NULL, NULL, NULL, 1, 'free');
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish a List of Contents</property>
<property key="it">Contenuti - Pubblica una Lista di Contenuti</property>
</properties>

', '<config>
	<parameter name="contentType">Content Type (mandatory)</parameter>
	<parameter name="modelId">Content Model</parameter>
	<parameter name="userFilters">Front-End user filter options</parameter>
	<parameter name="category">Content Category **deprecated**</parameter>
	<parameter name="categories">Content Category codes (comma separeted)</parameter>
	<parameter name="orClauseCategoryFilter" />
	<parameter name="maxElemForItem">Contents for each page</parameter>
	<parameter name="maxElements">Number of contents</parameter>
	<parameter name="filters" />
	<parameter name="title_{lang}">Widget Title in lang {lang}</parameter>
	<parameter name="pageLink">The code of the Page to link</parameter>
	<parameter name="linkDescr_{lang}">Link description in lang {lang}</parameter>
	<action name="listViewerConfig"/>
</config>', 'jacms', NULL, NULL, 1, 'free');
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('URP_Public_Relations_Office', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">URP - Public Relations Office</property>
<property key="it">URP - Ufficio Relazioni con il Pubblico</property>
</properties>', NULL, NULL, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="modelId">10001</property>
<property key="contentId">CNG40</property>
</properties>', 0, 'free');
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('ANN_Archive', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Announcements - Archive</property>
<property key="it">Bandi - Archivio</property>
</properties>', NULL, NULL, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">10</property>
<property key="title_it">Archivio Bandi</property>
<property key="userFilters">(attributeFilter=false;key=fulltext)+(attributeFilter=true;key=StartDate)+(attributeFilter=true;key=EndDate)</property>
<property key="filters">(order=DESC;attributeFilter=true;key=StartDate)</property>
<property key="title_en">Announcements Archive</property>
<property key="contentType">ANN</property>
<property key="modelId">10051</property>
</properties>', 0, 'free');
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('ANN_Latest', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Announcements - Latest Announcements</property>
<property key="it">Bandi - Ultimi Bandi</property>
</properties>

', NULL, NULL, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElements">3</property>
<property key="filters">(order=DESC;attributeFilter=true;key=StartDate)</property>
<property key="title_it">Bandi</property>
<property key="linkDescr_it">Archivio</property>
<property key="pageLink">announcements</property>
<property key="title_en">Announcements</property>
<property key="contentType">ANN</property>
<property key="modelId">10051</property>
<property key="linkDescr_en">Archive</property>
</properties>

', 0, 'free');
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('entando-widget-language_choose', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Choose a Language</property>
<property key="it">Choose a Language</property>
</properties>

', NULL, NULL, NULL, NULL, 1, 'free');
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('NWS_Archive', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News - Archive</property>
<property key="it">Notizie - Archivio</property>
</properties>', NULL, NULL, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">10</property>
<property key="title_it">Archivio Notizie</property>
<property key="userFilters">(attributeFilter=false;key=fulltext)+(attributeFilter=true;key=Date)</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="title_en">News Archive</property>
<property key="contentType">NWS</property>
<property key="modelId">10021</property>
</properties>', 0, 'free');
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('card_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Personal Cards - List</property>
<property key="it">Personal Card - Lista</property>
</properties>

', NULL, NULL, NULL, NULL, 1, 'free');
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('card_list_detail', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Personal Cards - List and Detail</property>
<property key="it">Personal Card - Lista e Dettagio</property>
</properties>', NULL, NULL, 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/FrontEnd/Card/list.action</property>
</properties>', 1, 'free');
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('NWS_Latest', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News - Latest News</property>
<property key="it">Notizie - Ultime Notizie</property>
</properties>', NULL, NULL, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElements">3</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="title_it">Notizie</property>
<property key="linkDescr_it">Archivio</property>
<property key="pageLink">news</property>
<property key="title_en">News</property>
<property key="contentType">NWS</property>
<property key="modelId">10021</property>
<property key="linkDescr_en">Archive</property>
</properties>', 0, 'free');
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('RSL_Latest', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Resolutions - Latest Resolutions</property>
<property key="it">Delibere - Ultime Delibere</property>
</properties>', NULL, NULL, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElements">3</property>
<property key="filters">(attributeFilter=true;order=DESC;key=Date)+(order=DESC;attributeFilter=true;key=Number)</property>
<property key="title_it">Delibere</property>
<property key="linkDescr_it">Archivio</property>
<property key="pageLink">resolutions</property>
<property key="title_en">Resolutions</property>
<property key="contentType">RSL</property>
<property key="modelId">10041</property>
<property key="linkDescr_en">Archive</property>
</properties>', 0, 'free');
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('userprofile_editCurrentUser', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit Current User</property>
<property key="it">Edita Utente Corrente</property>
</properties>', NULL, NULL, 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/CurrentUser/edit.action</property>
</properties>', 1, NULL);
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('userprofile_editCurrentUser_password', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit Current User Password</property>
<property key="it">Edita Password Utente Corrente</property>
</properties>', NULL, NULL, 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/CurrentUser/editPassword.action</property>
</properties>', 1, NULL);
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('userprofile_editCurrentUser_profile', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit Current User Profile</property>
<property key="it">Edita Profilo Utente Corrente</property>
</properties>', NULL, NULL, 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/CurrentUser/Profile/edit.action</property>
</properties>', 1, NULL);
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish a Content</property>
<property key="it">Contenuti - Pubblica un Contenuto</property>
</properties>

', '<config>
	<parameter name="contentId">
		Content ID
	</parameter>
	<parameter name="modelId">
		Content Model ID
	</parameter>
	<action name="viewerConfig"/>
</config>', 'jacms', NULL, NULL, 1, 'free');
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('messages_system', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">System Messages</property>
<property key="it">Messaggi di Sistema</property>
</properties>', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('search_result', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search - Search Result</property>
<property key="it">Ricerca - Risultati della Ricerca</property>
</properties>', NULL, 'jacms', NULL, NULL, 1, NULL);
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('login_form', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Login Form</property>
<property key="it">Form di Login</property>
</properties>

', NULL, NULL, NULL, NULL, 1, 'free');
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Internal Servlet</property>
<property key="it">Invocazione di una Servlet Interna</property>
</properties>', '<config>
	<parameter name="actionPath">
		Path to an action or to a JSP. You must prepend ''/ExtStr2'' to any Struts2 action path
	</parameter>
	<action name="configSimpleParameter"/>
</config>', NULL, NULL, NULL, 1, NULL);
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('entando_apis', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">APIs</property>
<property key="it">APIs</property>
</properties>

', NULL, NULL, 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/Api/Resource/list.action</property>
</properties>

', 1, 'free');
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('entando-widget-search_form', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search Form</property>
<property key="it">Search Form</property>
</properties>

', NULL, NULL, NULL, NULL, 1, 'free');
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('RSL_Archive', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Resolutions - Archive</property>
<property key="it">Delibere - Archivio</property>
</properties>', NULL, NULL, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">10</property>
<property key="title_it">Archivio Delibere</property>
<property key="userFilters">(attributeFilter=false;key=fulltext)+(attributeFilter=false;key=category;categoryCode=resolutions)+(attributeFilter=true;key=Number)+(attributeFilter=true;key=Date)</property>
<property key="filters">(attributeFilter=true;order=DESC;key=Number)+(order=DESC;attributeFilter=true;key=Date)</property>
<property key="title_en">Resolutions Archive</property>
<property key="contentType">RSL</property>
<property key="modelId">10041</property>
</properties>', 0, 'free');
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('entando-widget-login_form', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Dropdown Sign In</property>
<property key="it">Dropdown Sign In</property>
</properties>

', NULL, NULL, NULL, NULL, 1, 'free');
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('row_content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish Contents</property>
<property key="it">Contenuti - Pubblica Contenuti</property>
</properties>', '<config>
	<parameter name="contents">Contents to Publish (mandatory)</parameter>
	<parameter name="maxElemForItem">Contents for each page</parameter>
	<parameter name="title_{lang}">Widget Title in lang {lang}</parameter>
	<parameter name="pageLink">The code of the Page to link</parameter>
	<parameter name="linkDescr_{lang}">Link description in lang {lang}</parameter>
	<action name="rowListViewerConfig" />
</config>', 'jacms', NULL, NULL, 1, 'free');



INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('service', 'homepage', 5, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('login', 'service', 6, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('notfound', 'service', 4, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('errorpage', 'service', 5, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('municipality', 'homepage', 2, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('online_services', 'homepage', 4, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('homepage', 'homepage', -1, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('announcements', 'informations', 1, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('resolutions', 'informations', 2, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('news', 'informations', 3, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('search_result', 'service', 4, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('announcements_read', 'announcements', 1, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('resolutions_read', 'resolutions', 1, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('news_read', 'news', 1, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('contents_read', 'service', 5, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('mayor', 'municipality', 1, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('council', 'municipality', 2, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('municipal_council', 'municipality', 3, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('statute', 'municipality', 4, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('documents', 'online_services', 1, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('download', 'documents', 1, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('self_certifications', 'online_services', 2, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('old_town_traffic_pass', 'online_services', 3, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('old_town_traffic_pass_intservl', 'old_town_traffic_pass', 1, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('public_api', 'online_services', 4, 'free');
INSERT INTO pages (code, parentcode, pos, groupcode) VALUES ('informations', 'homepage', 3, 'free');



INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('service', 'service', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="it">Pagine di Servizio</property>
<property key="en">Service</property>
</properties>', 0, NULL, NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('login', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Sign In</property>
<property key="it">Autenticazione</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('notfound', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Page not found</property>
<property key="it">Pagina non trovata</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('errorpage', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">System Error</property>
<property key="it">Errore di Sistema</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('municipality', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Municipality</property>
<property key="it">Il Comune</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('online_services', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Online Services</property>
<property key="it">Servizi Online</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('homepage', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Home</property>
<property key="it">Home</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('announcements', 'entando-page-2columns-left', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Announcements</property>
<property key="it">Bandi</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('resolutions', 'entando-page-2columns-left', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Resolutions</property>
<property key="it">Delibere</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('news', 'entando-page-2columns-left', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News</property>
<property key="it">Notizie</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('search_result', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search Result</property>
<property key="it">Risultati della Ricerca</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('announcements_read', 'entando-page-2columns-left', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the Announcement</property>
<property key="it">Leggi il Bando</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('resolutions_read', 'entando-page-2columns-left', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the Resolution</property>
<property key="it">Leggi la Delibera</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('news_read', 'entando-page-2columns-left', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the News</property>
<property key="it">Leggi la Notizia</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('contents_read', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the Content</property>
<property key="it">Leggi il Contenuto</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('mayor', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Mayor</property>
<property key="it">Sindaco</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('council', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Council</property>
<property key="it">Giunta Comunale</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('municipal_council', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Municipal Council</property>
<property key="it">Consiglio Comunale</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('statute', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Statute</property>
<property key="it">Statuto</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('documents', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Documents</property>
<property key="it">Modulistica</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('download', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Download</property>
<property key="it">Scarica</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('self_certifications', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Self Certifications</property>
<property key="it">Autocertificazioni</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('old_town_traffic_pass', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Limited Traffic Zone Pass</property>
<property key="it">Pass ZTL</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('old_town_traffic_pass_intservl', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Limited Traffic Zone Pass - Internal Servlet</property>
<property key="it">Pass ZTL - Internal Servlet</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('public_api', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Public API</property>
<property key="it">API Pubblica</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_draft (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('informations', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Info</property>
<property key="it">Info</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>', NULL);



INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('service', 'service', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="it">Pagine di Servizio</property>
<property key="en">Service</property>
</properties>', 0, NULL, NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('login', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Sign In</property>
<property key="it">Autenticazione</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('notfound', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Page not found</property>
<property key="it">Pagina non trovata</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('errorpage', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">System Error</property>
<property key="it">Errore di Sistema</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('municipality', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Municipality</property>
<property key="it">Il Comune</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('online_services', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Online Services</property>
<property key="it">Servizi Online</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('homepage', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Home</property>
<property key="it">Home</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('announcements', 'entando-page-2columns-left', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Announcements</property>
<property key="it">Bandi</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('resolutions', 'entando-page-2columns-left', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Resolutions</property>
<property key="it">Delibere</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('news', 'entando-page-2columns-left', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News</property>
<property key="it">Notizie</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('search_result', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search Result</property>
<property key="it">Risultati della Ricerca</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('announcements_read', 'entando-page-2columns-left', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the Announcement</property>
<property key="it">Leggi il Bando</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('resolutions_read', 'entando-page-2columns-left', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the Resolution</property>
<property key="it">Leggi la Delibera</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('news_read', 'entando-page-2columns-left', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the News</property>
<property key="it">Leggi la Notizia</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('contents_read', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the Content</property>
<property key="it">Leggi il Contenuto</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('mayor', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Mayor</property>
<property key="it">Sindaco</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('council', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Council</property>
<property key="it">Giunta Comunale</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('municipal_council', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Municipal Council</property>
<property key="it">Consiglio Comunale</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('statute', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Statute</property>
<property key="it">Statuto</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('documents', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Documents</property>
<property key="it">Modulistica</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('download', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Download</property>
<property key="it">Scarica</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('self_certifications', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Self Certifications</property>
<property key="it">Autocertificazioni</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('old_town_traffic_pass', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Limited Traffic Zone Pass</property>
<property key="it">Pass ZTL</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('old_town_traffic_pass_intservl', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Limited Traffic Zone Pass - Internal Servlet</property>
<property key="it">Pass ZTL - Internal Servlet</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('public_api', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Public API</property>
<property key="it">API Pubblica</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

', NULL);
INSERT INTO pages_metadata_online (code, modelcode, titles, showinmenu, extraconfig, updatedat) VALUES ('informations', 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Info</property>
<property key="it">Info</property>
</properties>

', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

', NULL);


INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('news', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('news', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('news', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('news', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('news', 4, 'entando-widget-navigation_breadcrumbs', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('news', 11, 'NWS_Archive', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('homepage', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('homepage', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('homepage', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('homepage', 5, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG18</property>
<property key="modelId">10012</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('homepage', 24, 'URP_Public_Relations_Office', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('announcements', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('announcements', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('announcements', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('announcements', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('announcements', 4, 'entando-widget-navigation_breadcrumbs', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('announcements', 11, 'ANN_Archive', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('resolutions', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('resolutions', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('resolutions', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('resolutions', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('resolutions', 4, 'entando-widget-navigation_breadcrumbs', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('resolutions', 11, 'RSL_Archive', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('homepage', 9, 'RSL_Latest', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('search_result', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('search_result', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('search_result', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('search_result', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('search_result', 7, 'search_result', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('announcements_read', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('announcements_read', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('announcements_read', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('announcements_read', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('announcements_read', 4, 'entando-widget-navigation_breadcrumbs', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('announcements_read', 5, 'entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('announcements_read', 11, 'content_viewer', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('resolutions_read', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('resolutions_read', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('resolutions_read', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('resolutions_read', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('resolutions_read', 4, 'entando-widget-navigation_breadcrumbs', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('resolutions_read', 5, 'entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('resolutions_read', 11, 'content_viewer', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('news_read', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('news_read', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('news_read', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('news_read', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('news_read', 4, 'entando-widget-navigation_breadcrumbs', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('news_read', 5, 'entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('news_read', 11, 'content_viewer', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('contents_read', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('contents_read', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('contents_read', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('contents_read', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('contents_read', 5, 'content_viewer', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('mayor', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('mayor', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('mayor', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('mayor', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('mayor', 24, 'URP_Public_Relations_Office', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('council', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('mayor', 7, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG41</property>
<property key="modelId">10014</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('council', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('council', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('council', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('council', 24, 'URP_Public_Relations_Office', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('council', 7, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG43</property>
<property key="modelId">10001</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('municipal_council', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass', 7, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG55</property>
<property key="modelId">10001</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass_intservl', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass_intservl', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass_intservl', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass_intservl', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass_intservl', 24, 'URP_Public_Relations_Office', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass_intservl', 15, 'card_list_detail', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass_intservl', 7, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG56</property>
<property key="modelId">10001</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('login', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('login', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('login', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('login', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('login', 7, 'login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('notfound', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('notfound', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('notfound', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('notfound', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('notfound', 7, 'messages_system', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('errorpage', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('errorpage', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('errorpage', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('errorpage', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('errorpage', 7, 'messages_system', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('public_api', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('public_api', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('public_api', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('public_api', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('homepage', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('homepage', 10, 'NWS_Latest', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('homepage', 8, 'ANN_Latest', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('public_api', 16, 'entando_apis', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('public_api', 15, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG72</property>
<property key="modelId">10001</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('statute', 7, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG46</property>
<property key="modelId">10014</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('municipal_council', 7, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG44</property>
<property key="modelId">10014</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('municipal_council', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('municipal_council', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('municipal_council', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('municipal_council', 24, 'URP_Public_Relations_Office', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('statute', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('statute', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('statute', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('statute', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('statute', 24, 'URP_Public_Relations_Office', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('news', 5, 'entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(informations).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('announcements', 5, 'entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(informations).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('resolutions', 5, 'entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(informations).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('documents', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('documents', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('documents', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('documents', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('documents', 24, 'URP_Public_Relations_Office', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('download', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('download', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('download', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('download', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('download', 7, 'content_viewer', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('documents', 7, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">15</property>
<property key="title_it">Documenti</property>
<property key="categories">documents</property>
<property key="filters">(order=ASC;attributeFilter=true;key=Title)</property>
<property key="title_en">Documents</property>
<property key="contentType">DLD</property>
<property key="modelId">10031</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('self_certifications', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('self_certifications', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('self_certifications', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('self_certifications', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('self_certifications', 24, 'URP_Public_Relations_Office', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('self_certifications', 7, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">15</property>
<property key="title_it">Autocertificazioni</property>
<property key="categories">selcf_certifications</property>
<property key="filters">(order=ASC;attributeFilter=true;key=Title)</property>
<property key="title_en">Self Certifications</property>
<property key="contentType">DLD</property>
<property key="modelId">10031</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass', 24, 'URP_Public_Relations_Office', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass', 15, 'card_list', NULL);



INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('news', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('news', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('news', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('news', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('news', 4, 'entando-widget-navigation_breadcrumbs', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('news', 11, 'NWS_Archive', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('homepage', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('homepage', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('homepage', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('homepage', 5, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG18</property>
<property key="modelId">10012</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('homepage', 24, 'URP_Public_Relations_Office', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('announcements', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('announcements', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('announcements', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('announcements', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('announcements', 4, 'entando-widget-navigation_breadcrumbs', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('announcements', 11, 'ANN_Archive', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('resolutions', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('resolutions', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('resolutions', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('resolutions', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('resolutions', 4, 'entando-widget-navigation_breadcrumbs', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('resolutions', 11, 'RSL_Archive', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('homepage', 9, 'RSL_Latest', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('search_result', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('search_result', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('search_result', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('search_result', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('search_result', 7, 'search_result', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('announcements_read', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('announcements_read', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('announcements_read', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('announcements_read', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('announcements_read', 4, 'entando-widget-navigation_breadcrumbs', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('announcements_read', 5, 'entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('announcements_read', 11, 'content_viewer', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('resolutions_read', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('resolutions_read', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('resolutions_read', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('resolutions_read', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('resolutions_read', 4, 'entando-widget-navigation_breadcrumbs', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('resolutions_read', 5, 'entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('resolutions_read', 11, 'content_viewer', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('news_read', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('news_read', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('news_read', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('news_read', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('news_read', 4, 'entando-widget-navigation_breadcrumbs', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('news_read', 5, 'entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('news_read', 11, 'content_viewer', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('contents_read', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('contents_read', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('contents_read', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('contents_read', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('contents_read', 5, 'content_viewer', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('mayor', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('mayor', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('mayor', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('mayor', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('mayor', 24, 'URP_Public_Relations_Office', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('council', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('mayor', 7, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG41</property>
<property key="modelId">10014</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('council', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('council', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('council', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('council', 24, 'URP_Public_Relations_Office', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('council', 7, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG43</property>
<property key="modelId">10001</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('municipal_council', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass', 7, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG55</property>
<property key="modelId">10001</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass_intservl', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass_intservl', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass_intservl', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass_intservl', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass_intservl', 24, 'URP_Public_Relations_Office', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass_intservl', 15, 'card_list_detail', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass_intservl', 7, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG56</property>
<property key="modelId">10001</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('login', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('login', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('login', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('login', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('login', 7, 'login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('notfound', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('notfound', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('notfound', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('notfound', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('notfound', 7, 'messages_system', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('errorpage', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('errorpage', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('errorpage', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('errorpage', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('errorpage', 7, 'messages_system', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('public_api', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('public_api', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('public_api', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('public_api', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('homepage', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('homepage', 10, 'NWS_Latest', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('homepage', 8, 'ANN_Latest', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('public_api', 16, 'entando_apis', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('public_api', 15, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG72</property>
<property key="modelId">10001</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('statute', 7, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG46</property>
<property key="modelId">10014</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('municipal_council', 7, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG44</property>
<property key="modelId">10014</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('municipal_council', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('municipal_council', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('municipal_council', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('municipal_council', 24, 'URP_Public_Relations_Office', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('statute', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('statute', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('statute', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('statute', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('statute', 24, 'URP_Public_Relations_Office', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('news', 5, 'entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(informations).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('announcements', 5, 'entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(informations).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('resolutions', 5, 'entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(informations).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('documents', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('documents', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('documents', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('documents', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('documents', 24, 'URP_Public_Relations_Office', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('download', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('download', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('download', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('download', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('download', 7, 'content_viewer', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('documents', 7, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">15</property>
<property key="title_it">Documenti</property>
<property key="categories">documents</property>
<property key="filters">(order=ASC;attributeFilter=true;key=Title)</property>
<property key="title_en">Documents</property>
<property key="contentType">DLD</property>
<property key="modelId">10031</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('self_certifications', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('self_certifications', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('self_certifications', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('self_certifications', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('self_certifications', 24, 'URP_Public_Relations_Office', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('self_certifications', 7, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">15</property>
<property key="title_it">Autocertificazioni</property>
<property key="categories">selcf_certifications</property>
<property key="filters">(order=ASC;attributeFilter=true;key=Title)</property>
<property key="title_en">Self Certifications</property>
<property key="contentType">DLD</property>
<property key="modelId">10031</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass', 0, 'entando-widget-language_choose', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

');
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass', 2, 'entando-widget-search_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass', 3, 'entando-widget-login_form', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass', 24, 'URP_Public_Relations_Office', NULL);
INSERT INTO widgetconfig_draft (pagecode, framepos, widgetcode, config) VALUES ('old_town_traffic_pass', 15, 'card_list', NULL);



INSERT INTO uniquekeys (id, keyvalue) VALUES (1, 117);


INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-language_choose', 'entando-widget-language_choose', NULL, '
<#assign wp=JspTaglibs["/aps-core"]>

<@wp.headInfo type="JS" info="entando-misc-jquery/jquery-1.10.0.min.js" />
<@wp.headInfo type="JS" info="entando-misc-bootstrap/bootstrap.min.js" />
<@wp.info key="langs" var="langsVar" />
<@wp.info key="currentLang" var="currentLangVar" />

<ul class="nav">
	<li class="dropdown">
		<a href="#" class="dropdown-toggle" data-toggle="dropdown" title="<@wp.i18n key="ESLC_LANGUAGE" />" >
			<span class="icon-flag icon-white"></span><span class="caret"></span>
		</a>
		<ul class="dropdown-menu">
			<@wp.freemarkerTemplateParameter var="langsListVar" valueName="langsVar" removeOnEndTag=true>
				<#list langsListVar as curLangVar>
					<li <#if (curLangVar.code == currentLangVar)>class="active" </#if> >
						<a href="<@wp.url lang="${curLangVar.code}" paramRepeat=true />">${curLangVar.descr}</a>
					</li>
				</#list>
			</@wp.freemarkerTemplateParameter>
		</ul>
	</li>
</ul>
', '
<#assign wp=JspTaglibs["/aps-core"]>

<@wp.headInfo type="JS" info="entando-misc-jquery/jquery-1.10.0.min.js" />
<@wp.headInfo type="JS" info="entando-misc-bootstrap/bootstrap.min.js" />
<@wp.info key="langs" var="langsVar" />
<@wp.info key="currentLang" var="currentLangVar" />

<ul class="nav">
  <li class="dropdown">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="icon-flag"></span> <@wp.i18n key="ESLC_LANGUAGE" /> <span class="caret"></span></a>
      <ul class="dropdown-menu">
			<@wp.freemarkerTemplateParameter var="langsListVar" valueName="langsVar" removeOnEndTag=true >
			<#list langsListVar as curLangVar>
			<li 
				<#if (curLangVar.code == currentLangVar)>class="active" </#if>>
				<a href="<@wp.url lang="${curLangVar.code}" paramRepeat=true />">
					<@wp.i18n key="ESLC_LANG_${curLangVar.code}" />
				</a>
			</li>
			</#list>
			</@wp.freemarkerTemplateParameter>
      </ul>
  </li>
</ul>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Enumer', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>

<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<div class="control-group">
	<label for="${formFieldNameVar}" class="control-label"><@wp.i18n key="${i18n_Attribute_Key}" /></label>
	<div class="controls">
		<select name="${formFieldNameVar}" id="${formFieldNameVar}" class="input-xlarge">
			<option value=""><@wp.i18n key="ALL" /></option>
			<#list userFilterOptionVar.attribute.items as enumeratorItemVar>
			<option value="${enumeratorItemVar}" <#if (formFieldValue??) && (enumeratorItemVar == formFieldValue)>selected="selected"</#if> >${enumeratorItemVar}</option>
			</#list>
		</select>
	</div>
</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_EnumerMap', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>

<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<div class="control-group">
	<label for="${formFieldNameVar}" class="control-label"><@wp.i18n key="${i18n_Attribute_Key}" /></label>
	<div class="controls">
		<select name="${formFieldNameVar}" id="${formFieldNameVar}" class="input-xlarge">
			<option value=""><@wp.i18n key="ALL" /></option>
			<#list userFilterOptionVar.attribute.mapItems as enumeratorMapItemVar>
			<option value="${enumeratorMapItemVar.key}" <#if (formFieldValue??) && (enumeratorMapItemVar.key == formFieldValue)>selected="selected"</#if> >${enumeratorMapItemVar.value}</option>
			</#list>
		</select>
	</div>
</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-navigation_menu_include', NULL, NULL, NULL, '
<#assign wp=JspTaglibs["/aps-core"]>

<#assign liClass="">

<#if (previousPage.code == currentPageCode)>
  <#assign liClass='' class="active"''>
</#if>
<#if previousPage.voidPage>
  <#assign liClass='' class="nav-header"''>
</#if>

<li ${liClass}>
   <#if (!previousPage.voidPage)>
   	<a href="${previousPage.url}">
   </#if>
   <!-- [ ${previousLevel} ]-->
<#--  CHECK THIS
${homeIcon}
-->
   ${previousPage.title}
   <#if (!previousPage.voidPage)>
     </a>
   </#if>
  
   <#if (previousLevel == level)>
	</li>
   </#if>
   <#if (previousLevel < level)>
	<ul class="nav nav-list">
   </#if>
   <#if (previousLevel > level)>
	<#list 1..(previousLevel - level) as ignoreMe>
		</li></ul>
	</#list>
   </#if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Number', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>


<fieldset>
<legend>
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<@wp.i18n key="${i18n_Attribute_Key}" />
</legend>

<div class="control-group">
	<#assign formFieldStartNameVar = userFilterOptionVar.formFieldNames[0] >
	<#assign formFieldStartValueVar = userFilterOptionVar.getFormFieldValue(formFieldStartNameVar) >
	<label for="${formFieldStartNameVar}" class="control-label">
		<@wp.i18n key="NUMBER_FROM" />
	</label>
	<div class="controls">
		<input id="${formFieldStartNameVar}" name="${formFieldStartNameVar}" value="${formFieldStartValueVar?default("")}" type="number" class="input-medium" />
	</div>
</div>
<div class="control-group">
	<#assign formFieldEndNameVar = userFilterOptionVar.formFieldNames[1] >
	<#assign formFieldEndValueVar = userFilterOptionVar.getFormFieldValue(formFieldEndNameVar) >
	<label for="${formFieldEndNameVar}" class="control-label">
		<@wp.i18n key="NUMBER_TO" />
	</label>
	<div class="controls">
		<input id="${formFieldEndNameVar}" name="${formFieldEndNameVar}" value="${formFieldEndValueVar?default("")}" type="number" class="input-medium" />
	</div>
</div>

</fieldset>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilters', NULL, 'jacms', NULL, '
<#assign wp=JspTaglibs["/aps-core"]>

<#if (userFilterOptionsVar??) && userFilterOptionsVar?has_content && (userFilterOptionsVar?size > 0)>
<div class="row-fluid"><div class="span12 padding-medium-top">

<#assign hasUserFilterError = false >

<#list userFilterOptionsVar as userFilterOptionVar>
<#if (userFilterOptionVar.formFieldErrors??) && userFilterOptionVar.formFieldErrors?has_content && (userFilterOptionVar.formFieldErrors?size > 0)>
<#assign hasUserFilterError = true >
</#if>
</#list>

<#if (hasUserFilterError)>
<div class="alert alert-error">
	<a class="close" data-dismiss="alert" href="#"><i class="icon-remove"></i></a>
	<h2 class="alert-heading"><@wp.i18n key="ERRORS" /></h2>
	<ul>
		<#list userFilterOptionsVar as userFilterOptionVar>
			<#if (userFilterOptionVar.formFieldErrors??) && (userFilterOptionVar.formFieldErrors?size > 0)>
			<#assign formFieldErrorsVar = userFilterOptionVar.formFieldErrors >
			<#list formFieldErrorsVar?keys as formFieldErrorKey>
			<li>
			<@wp.i18n key="jacms_LIST_VIEWER_FIELD" />&#32;<em>${formFieldErrorsVar[formFieldErrorKey].attributeName}</em><#if (formFieldErrorsVar[formFieldErrorKey].rangeFieldType??)>:&#32;<em><@wp.i18n key="${formFieldErrorsVar[formFieldErrorKey].rangeFieldType}" /></em></#if>&#32;<@wp.i18n key="${formFieldErrorsVar[formFieldErrorKey].errorKey}" />
			</li>
			</#list>
			</#if>
		</#list>
	</ul>
</div>
</#if>
<#assign hasUserFilterError = false >

<p><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#content-viewer-list-filters"><@wp.i18n key="SEARCH_FILTERS_BUTTON" /> <i class="icon-zoom-in icon-white"></i></button></p>

<form action="<@wp.url />" method="post" class="form-horizontal collapse" id="content-viewer-list-filters">
	<#list userFilterOptionsVar as userFilterOptionVar>
		<@wp.freemarkerTemplateParameter var="userFilterOptionVar" valueName="userFilterOptionVar" removeOnEndTag=true >
		<#if !userFilterOptionVar.attributeFilter && (userFilterOptionVar.key == "fulltext" || userFilterOptionVar.key == "category")>
			<@wp.fragment code="jacms_content_viewer_list_userfilter_met_${userFilterOptionVar.key}" escapeXml=false />
		</#if>
		<#if userFilterOptionVar.attributeFilter >
			<#if userFilterOptionVar.attribute.type == "Monotext" || userFilterOptionVar.attribute.type == "Text" || userFilterOptionVar.attribute.type == "Longtext" || userFilterOptionVar.attribute.type == "Hypertext">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Text" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "Enumerator" >
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Enumer" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "EnumeratorMap" >
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_EnumerMap" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "Number">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Number" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "Date">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Date" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "Boolean">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Boolean" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "CheckBox">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_CheckBox" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "ThreeState">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_ThreeSt" escapeXml=false />
			</#if>
		</#if>
		</@wp.freemarkerTemplateParameter>
	</#list>
	<p class="form-actions">
		<input type="submit" value="<@wp.i18n key="SEARCH" />" class="btn btn-primary" />
	</p>
</form>
</div></div>
</#if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_met_fulltext', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>

<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<div class="control-group">
	<label for="${formFieldNameVar}" class="control-label"><@wp.i18n key="TEXT" /></label>
	<div class="controls">
		<input name="${formFieldNameVar}" id="${formFieldNameVar}" value="${formFieldValue}" type="text" class="input-xlarge"/>
	</div>
</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_met_category', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>


<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign userFilterCategoryCodeVar = userFilterOptionVar.userFilterCategoryCode?default("") >

<@wp.categories var="systemCategories" titleStyle="prettyFull" root="${userFilterCategoryCodeVar}" />
<div class="control-group">
	<label for="category" class="control-label"><@wp.i18n key="CATEGORY" /></label>
	<div class="controls">
		<select id="category" name="${formFieldNameVar}" class="input-xlarge">
			<option value=""><@wp.i18n key="ALL" /></option>
			<#list systemCategories as systemCategory>
			<option value="${systemCategory.key}" <#if (formFieldValue == systemCategory.key)>selected="selected"</#if> >${systemCategory.value}</option>
			</#list>
		</select>
	</div>
</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Text', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>

<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >

<div class="control-group">
	<label for="${formFieldNameVar}" class="control-label"><@wp.i18n key="${i18n_Attribute_Key}" /></label>
	<div class="controls">
		<input name="${formFieldNameVar}" id="${formFieldNameVar}" value="${formFieldValue}" type="text" class="input-xlarge"/>
	</div>
</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-login_form', 'entando-widget-login_form', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<@wp.headInfo type="JS" info="entando-misc-jquery/jquery-1.10.0.min.js" />
<@wp.headInfo type="JS" info="entando-misc-bootstrap/bootstrap.min.js" />

<ul class="nav pull-right">
	<li class="span2 dropdown
<#if (accountExpired?? && accountExpired == true) || (wrongAccountCredential?? && wrongAccountCredential == true)>open</#if>
">

	<#if (Session.currentUser != "guest")>
	<!-- caso 1 -->
			<div class="btn-group">
				<button class="btn span2 text-left dropdown-toggle" data-toggle="dropdown">
					${Session.currentUser}
					<span class="caret pull-right"></span>
				</button>
				<ul class="dropdown-menu pull-right well-small">
					<li class="padding-medium-vertical">

						<@wp.ifauthorized permission="enterBackend">
						<p>
							<a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/main.action?request_locale=<@wp.info key="currentLang" />"><span class="icon-wrench"></span> <@wp.i18n key="ESLF_ADMINISTRATION" /></a>
						</p>
						</@wp.ifauthorized>
						<div class="divider"></div>
						<p class="help-block text-right">
							<a class="btn" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/logout.action"><@wp.i18n key="ESLF_SIGNOUT" /></a>
						</p>
						<@wp.pageWithWidget var="editProfilePageVar" widgetTypeCode="userprofile_editCurrentUser" />
						<#if (editProfilePageVar??) >
						<p class="help-block text-right">
							<a href="<@wp.url page="${editProfilePageVar.code}" />" ><@wp.i18n key="ESLF_PROFILE_CONFIGURATION" /></a>
						</p>
						</#if>
					</li>
				</ul>
			</div>	
		<#else>
			<!-- caso 2 -->
			<a class="dropdown-toggle text-right" data-toggle="dropdown" href="#"><@wp.i18n key="ESLF_SIGNIN" /> <span class="caret"></span></a>
			<ul class="dropdown-menu well-small">
				<li>
					<form class="form-vertical" method="POST">
						<#if (accountExpired?? && accountExpired == true)>
						<div class="alert alert-error">
							<button class="close" data-dismiss="alert">x</button>
							<@wp.i18n key="ESLF_USER_STATUS_EXPIRED" />
						</div>
						</#if>
						<#if (wrongAccountCredential?? && wrongAccountCredential == true)>
						<div class="alert alert-error">
							<button class="close" data-dismiss="alert">x</button>
							<@wp.i18n key="ESLF_USER_STATUS_CREDENTIALS_INVALID" />
						</div>
						</#if>
						<input type="text" name="username" class="input-large" placeholder="<@wp.i18n key="ESLF_USERNAME" />">
						<input type="password" name="password" class="input-large" placeholder="<@wp.i18n key="ESLF_PASSWORD" />">
						<p class="text-right">
							<input type="submit" class="btn btn-primary" value="<@wp.i18n key="ESLF_SIGNIN" />" />
						</p>
					</form>
				</li>
			</ul>
		</#if>
	</li>
</ul>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('models-common-utils', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#-- css -->
<@wp.outputHeadInfo type="CSS">
	<link rel="stylesheet" type="text/css" href="<@wp.cssURL /><@wp.printHeadInfo />" />
</@wp.outputHeadInfo>

<#-- css -->
<@wp.outputHeadInfo type="CSS_EXT">
	<link rel="stylesheet" type="text/css" href="<@wp.printHeadInfo />" />
</@wp.outputHeadInfo>

<#-- css for ie7 -->
<@wp.outputHeadInfo type="CSS_IE7">
	<!--[if IE 7]>
		<link rel="stylesheet" type="text/css" href="<@wp.cssURL /><@wp.printHeadInfo />" />
	<![endif]-->
</@wp.outputHeadInfo>

<#-- css for ie8 -->
<@wp.outputHeadInfo type="CSS_IE8">
	<!--[if IE 8]>
		<link rel="stylesheet" type="text/css" href="<@wp.cssURL /><@wp.printHeadInfo />" />
	<![endif]-->
</@wp.outputHeadInfo>

<#-- js global vars -->
<@wp.outputHeadInfo type="JS_VARS">
	<script>
	<!--//--><![CDATA[//><!--
		<@wp.printHeadInfo />
	//--><!]]>
	</script>
</@wp.outputHeadInfo>

<#-- js scripts (remember to include the libraries first) -->
<@wp.outputHeadInfo type="JS">
	<script src="<@wp.resourceURL />static/js/<@wp.printHeadInfo />"></script>
</@wp.outputHeadInfo>

<#-- external/CDN js scripts (remember to include the libraries first) -->
<@wp.outputHeadInfo type="JS_EXT">
	<script src="<@wp.printHeadInfo />"></script>
</@wp.outputHeadInfo>

<#-- js code -->
<@wp.outputHeadInfo type="JS_RAW">
	<script>
	<!--//--><![CDATA[//><!--
		<@wp.printHeadInfo />
	//--><!]]>
	</script>
</@wp.outputHeadInfo>', NULL, 0);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('models-lesscss-active', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<link rel="stylesheet/less" href="<@wp.resourceURL />static/entando-misc-bootstrap/bootstrap/less/bootstrap.less" />
<link rel="stylesheet/less" href="<@wp.resourceURL />static/entando-misc-bootstrap/bootstrap/less/responsive.less" />
<link rel="stylesheet/less" href="<@wp.resourceURL />static/less/portalexample.less" />
<script src="<@wp.resourceURL />static/js/entando-misc-less/less-1.3.1.min.js"></script>', NULL, 0);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-navigation_bar', 'entando-widget-navigation_bar', NULL, NULL, '
<#assign wp=JspTaglibs["/aps-core"]>

<@wp.headInfo type="JS" info="entando-misc-jquery/jquery-1.10.0.min.js" />
<@wp.headInfo type="JS" info="entando-misc-bootstrap/bootstrap.min.js" />

<@wp.currentPage param="code" var="currentPageCode" />
<@wp.freemarkerTemplateParameter var="currentPageCode" valueName="currentPageCode" />
<ul class="nav">
<@wp.nav var="page">

<#if (previousPage?? && previousPage.code??)>
	<#assign previousLevel=previousPage.level>
	<#assign level=page.level>
        <@wp.freemarkerTemplateParameter var="level" valueName="level" />
	<@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
	<@wp.fragment code="entando-widget-navigation_bar_include" escapeXml=false />
</#if>

	<@wp.freemarkerTemplateParameter var="previousPage" valueName="page" />
</@wp.nav>

<#if (previousPage??)>
	<#assign previousLevel=previousPage.level>
        <#assign level=0>
	<@wp.freemarkerTemplateParameter var="level" valueName="level" />
	<@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
	<@wp.fragment code="entando-widget-navigation_bar_include" escapeXml=false />

        <#if (previousLevel != 0)>
        <#list 0..(previousLevel - 1) as ignoreMe>
            </ul></li>
        </#list>
                
	</#if>
</#if>
</ul>
<@wp.freemarkerTemplateParameter var="previousPage" valueName="" removeOnEndTag=true />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-navigation_breadcrumbs', 'entando-widget-navigation_breadcrumbs', NULL, NULL, '
<#assign wp=JspTaglibs["/aps-core"]>

<@wp.currentPage param="code" var="currentViewCode" />
<p class="breadcrumb"><span class="noscreen"><@wp.i18n key="ESNB_YOU_ARE_HERE" />:</span>
<#assign first=true>
<@wp.nav spec="current.path" var="currentTarget">
      <#assign currentCode=currentTarget.code>
      <#if first>
             <span class="divider">/</span>
      </#if>
      <#if !currentTarget.voidPage>
              <#if (currentCode == currentViewCode)>
                     <span class="active">${currentTarget.title}</span>
              <#else>
                     <a href="${currentTarget.url}">${currentTarget.title}</a>
              </#if>
      <#else>
              ${currentTarget.title}
      </#if>
      <#assign first=false>
</@wp.nav>
</p>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('portalexample_card_is_cardFinding', 'card_list_detail', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<#assign s=JspTaglibs["/struts-tags"]>

<section class="card_list">

<h1><@wp.i18n key="SEARCH_CARDS" /></h1>

<form action="<@wp.action path="/ExtStr2/do/FrontEnd/Card/search.action" />" method="post" class="form-search" role="search">
	<@wpsf.textfield name="holder" id="holder" cssClass="input-medium search-query" />
	<@s.set name="searchLabel"><@wp.i18n key="SEARCH" /></@s.set>
	<@wpsf.submit value="%{#searchLabel}" cssClass="btn btn-primary" />
</fieldset>

<@wpsa.subset source="cards" count=10 objectName="groupCard" advanced=true offset=5>
<@s.set name="group" value="#groupCard" />

<div class="margin-medium-vertical">
	<@wp.fragment code="portalexample_card_is_pagerInfo" escapeXml=false />
	<@wp.fragment code="portalexample_card_is_pagerFormBlock" escapeXml=false />
</div>

<table class="table table-bordered table-condensed table-hover" summary="<@wp.i18n key="CARDS_LIST_SUMMARY" />">
<thead>
<tr>
	<th><@wp.i18n key="CARD_HOLDER" /></th>
	<th><@wp.i18n key="CARD_DESCRIPTION" /></th>
	<th><@wp.i18n key="CARD_CREATION_DATE" /></th>
</tr>
</thead>
<tbody>
<@s.iterator var="card">
<tr>
	<td><a href="<@wp.action path="/ExtStr2/do/FrontEnd/Card/view.action"><@wp.parameter name="id"><@s.property value="#card.id" /></@wp.parameter></@wp.action>" title="<@wp.i18n key="EDIT" />: <@s.property value="#card.id" />" class="label label-info"><@s.property value="#card.holder" /></a></td>
	<td><@s.property value="#card.descr" /></td>
	<td><@s.date name="#card.date" format="dd/MM/yyyy" /></td>
</tr>
</@s.iterator>
</tbody>
</table>

<div class="centerText">
	<@wp.fragment code="portalexample_card_is_pagerFormBlock" escapeXml=false />
</div>

</@wpsa.subset>

</form>
</section>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('portalexample_card_is_cardView', 'card_list_detail', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign s=JspTaglibs["/struts-tags"]>

<h2><@wp.i18n key="VIEW_CARD" /></h2>

<div class="well">
<dl class="dl-horizontal">
    <dt><@wp.i18n key="CARD_HOLDER" /></dt>
    <dd><@s.property value="holder" /></dd>

    <dt><@wp.i18n key="CARD_DESCRIPTION" /></dt>
    <dd><@s.property value="descr" /></dd>

    <dt><@wp.i18n key="CARD_NOTE" /></dt>
    <dd><@s.property value="note" /></dd>

    <dt><@wp.i18n key="CARD_CREATION_DATE" /></dt>
    <dd><@s.property value="date" /></dd>
</dl>
</div>

<a href="<@wp.action path="/ExtStr2/do/FrontEnd/Card/list.action" />" class="btn"><@wp.i18n key="BACK_TO_CARDS_LIST" /></a>
', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('portalexample_card_is_error', 'card_list_detail', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<@wp.i18n key="GENERIC_ERROR" />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('portalexample_card_is_pagerInfo', 'card_list_detail', NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<p><@s.text name="note.searchIntro" />&#32;<@s.property value="#group.size" />&#32;<@s.text name="note.searchOutro" />.<br />
<@s.text name="label.page" />: [<@s.property value="#group.currItem" />/<@s.property value="#group.maxItem" />].</p>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('portalexample_card_is_pagerFormBlock', 'card_list_detail', NULL, NULL, '<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<#assign s=JspTaglibs["/struts-tags"]>

<@s.if test="#group.size > #group.max">

<ul class="pagination">
	<@s.if test="null != #group.pagerId">
		<@s.set var="pagerIdMarker" value="#group.pagerId" />
	</@s.if>
	<@s.else>
		<@s.set var="pagerIdMarker">pagerItem</@s.set>
	</@s.else>

	<@s.if test="#group.advanced">
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_1''}" type="button" disabled="%{1 == #group.currItem}" title="%{getText(''label.goToFirst'')}">
			<span class="icon fa fa-step-backward"></span>
		</@wpsf.submit>
	</li>
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + (#group.currItem - #group.offset) }" type="button" disabled="%{1 == #group.beginItemAnchor}" title="%{getText(''label.jump'') + '' '' + #group.offset + '' '' + getText(''label.backward'')}">
			<span class="icon fa fa-fast-backward"></span>
		</@wpsf.submit>
	</li>
	</@s.if>

	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #group.prevItem}" type="button" title="%{getText(''label.prev.full'')}" disabled="%{1 == #group.currItem}">
			<span class="icon fa fa-long-arrow-left"></span>
		</@wpsf.submit>
	</li>

	<@s.subset source="#group.items" count="#group.endItemAnchor-#group.beginItemAnchor+1" start="#group.beginItemAnchor-1">
		<@s.iterator var="item">
			<li>
				<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #item}" type="button" disabled="%{#item == #group.currItem}">
					<@s.property value="%{#item}" />
				</@wpsf.submit>
			</li>
		</@s.iterator>
	</@s.subset>

	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #group.nextItem}" type="button" title="%{getText(''label.next.full'')}" disabled="%{#group.maxItem == #group.currItem}">
			<span class="icon fa fa-long-arrow-right"></span>
		</@wpsf.submit>
	</li>

	<@s.if test="#group.advanced">
	<@s.set var="jumpForwardStep" value="#group.currItem + #group.offset"></@s.set>
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + (#jumpForwardStep)}" type="button" disabled="%{#group.maxItem == #group.endItemAnchor}" title="%{getText(''label.jump'') + '' '' + #group.offset + '' '' + getText(''label.forward'')}">
			<span class="icon fa fa-fast-forward"></span>
		</@wpsf.submit>
	</li>
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #group.size}" type="button" disabled="%{#group.maxItem == #group.currItem}" title="%{getText(''label.goToLast'')}">
			<span class="icon fa fa-step-forward"></span>
		</@wpsf.submit>
	</li>
	</@s.if>

	<@s.set var="pagerIdMarker" value="null" />
</ul>

</@s.if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer', 'content_viewer', 'jacms', NULL, '<#assign jacms=JspTaglibs["/jacms-aps-core"]>

<#assign wp=JspTaglibs["/aps-core"]>
<@jacms.contentInfo param="authToEdit" var="canEditThis" />
<@jacms.contentInfo param="contentId" var="myContentId" />
<#if (canEditThis??) && (canEditThis)>
	<div class="bar-content-edit">
		<a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/jacms/Content/edit.action?contentId=<@jacms.contentInfo param="contentId" />" class="btn btn-info">
			<@wp.i18n key="EDIT_THIS_CONTENT" /> <i class="icon-edit icon-white"></i></a>
	</div>
</#if>
<@jacms.content publishExtraTitle=true />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list', 'content_viewer_list', 'jacms', NULL, '<#assign jacms=JspTaglibs["/jacms-aps-core"]>

<#assign wp=JspTaglibs["/aps-core"]>

<@wp.headInfo type="JS_EXT" info="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js" />

<@jacms.contentList listName="contentList" titleVar="titleVar"
	pageLinkVar="pageLinkVar" pageLinkDescriptionVar="pageLinkDescriptionVar" userFilterOptionsVar="userFilterOptionsVar" />

<#if (titleVar??)>
	<h1>${titleVar}</h1>
</#if>
<@wp.freemarkerTemplateParameter var="userFilterOptionsVar" valueName="userFilterOptionsVar" removeOnEndTag=true >
<@wp.fragment code="jacms_content_viewer_list_userfilters" escapeXml=false />
</@wp.freemarkerTemplateParameter>
<#if (contentList??) && (contentList?has_content) && (contentList?size > 0)>
	<@wp.pager listName="contentList" objectName="groupContent" pagerIdFromFrame=true advanced=true offset=5>
		<@wp.freemarkerTemplateParameter var="group" valueName="groupContent" removeOnEndTag=true >
		<@wp.fragment code="default_pagerBlock" escapeXml=false />
<#list contentList as contentId>
<#if (contentId_index >= groupContent.begin) && (contentId_index <= groupContent.end)>
 <@jacms.content contentId="${contentId}" />
</#if>
</#list>
		<@wp.fragment code="default_pagerBlock" escapeXml=false />
		</@wp.freemarkerTemplateParameter>
	</@wp.pager>
<#else>
	<#if (userFilterOptionsVar?size > 0)>
		<p class="alert alert-info"><@wp.i18n key="LIST_VIEWER_EMPTY" /></p>
	</#if>
</#if>

<#if (pageLinkVar??) && (pageLinkDescriptionVar??)>
	<p class="text-right"><a class="btn btn-primary" href="<@wp.url page="${pageLinkVar}"/>">${pageLinkDescriptionVar}</a></p>
</#if>

<#assign contentList="" >', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-search_form', 'entando-widget-search_form', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<@wp.pageWithWidget var="searchResultPageVar" widgetTypeCode="search_result" listResult=false />
<form class="navbar-search pull-left" action="<#if (searchResultPageVar??) ><@wp.url page="${searchResultPageVar.code}" /></#if>" method="get">
<input type="text" name="search" class="search-query span2" placeholder="<@wp.i18n key="ESSF_SEARCH" />" x-webkit-speech="x-webkit-speech" />
</form>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('portalexample_card_cardFinding', 'card_list', NULL, NULL, '
<#assign wp=JspTaglibs["/aps-core"]>
<#assign vmr=JspTaglibs["/WEB-INF/tld/portalexample-core.tld"]>

<@vmr.cards listName="cardList" />

<section class="card_list">

<h1><@wp.i18n key="SEARCH_CARDS" /></h1>
<form id="searchForm" method="get" action="<@wp.url />" class="form-search">
	<input type="text" id="holder" name="holder" value="${holder?default("")}" placeholder="<@wp.i18n key="CARD_HOLDER" />" class="input-medium search-query" />
	<input type="submit" class="btn btn-primary" value="<@wp.i18n key="SEARCH" />" />
</form>
<#if cardList??>
	<@wp.pager listName="cardList" objectName="groupCard" pagerIdFromFrame=true max=5 advanced=true offset=5 >
	<@wp.freemarkerTemplateParameter var="group" valueName="groupCard" removeOnEndTag=true >
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
	<h2>
		<@wp.i18n key="CARDS_NUMBER" /> : ${groupCard.size}
	</h2>
	<table class="table table-bordered table-condensed" summary="<@wp.i18n key="CARDS_LIST_SUMMARY" />">
	<tr>
		<th><@wp.i18n key="CARD_HOLDER" /></th>
		<th><@wp.i18n key="CARD_DESCRIPTION" /></th>
		<th><@wp.i18n key="CARD_CREATION_DATE" /></th>
	</tr>
<#list cardList as card>
<#if (card_index >= groupCard.begin) && (card_index <= groupCard.end)>
	<tr>
		<td>${card.holder}</td>
		<td>${card.descr}</td>
		<td>${card.date?string("dd/MM/yyyy")}</td>
	</tr>
</#if>
</#list>
	</table>
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
	</@wp.freemarkerTemplateParameter>
	</@wp.pager>
</#if>
</section>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('default_pagerBlock', NULL, NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>


<#if (group.size > group.max)>
	<div class="pagination pagination-centered">
		<ul>
		<#if (1 != group.currItem)>
			<#if (group.advanced)>
				<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >1</@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_FIRST" />"><i class="icon-fast-backward"></i></a></li>
				<#if (1 != group.beginItemAnchor)>
					<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >${group.currItem - group.offset}</@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_STEP_BACKWARD" />&#32;${group.offset}"><i class="icon-step-backward"></i></a></li>
				</#if>
			</#if>
			<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >${group.prevItem}</@wp.parameter></@wp.url>"><@wp.i18n key="PAGER_PREV" /></a></li>
		</#if>
		<#list group.items as item>
		<#if (item_index >= (group.beginItemAnchor-1)) && (item_index <= (group.endItemAnchor-1))>
			<#if (item == group.currItem)>
			<li class="active"><a href="#">${item}</a></li>
			<#else>
			<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >${item}</@wp.parameter></@wp.url>">${item}</a></li>
			</#if>
		</#if>
		</#list>
		<#if (group.maxItem != group.currItem)>
			<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >${group.nextItem}</@wp.parameter></@wp.url>"><@wp.i18n key="PAGER_NEXT" /></a></li>
			<#if (group.advanced)>
				<#if (group.maxItem != group.endItemAnchor)>
					<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >${group.currItem + group.offset}</@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_STEP_FORWARD" />&#32;${group.offset}"><i class="icon-step-forward"></i></a></li>
				</#if>
				<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >${group.maxItem}</@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_LAST" />"><i class="icon-fast-forward"></i></a></li>
			</#if>
		</#if>
		</ul>
	</div>
</#if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Date', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>


<#assign currentLangVar ><@wp.info key="currentLang" /></#assign>

<#assign js_for_datepicker="jQuery(function($){
	$.datepicker.regional[''it''] = {
		closeText: ''Chiudi'',
		prevText: ''&#x3c;Prec'',
		nextText: ''Succ&#x3e;'',
		currentText: ''Oggi'',
		monthNames: [''Gennaio'',''Febbraio'',''Marzo'',''Aprile'',''Maggio'',''Giugno'',
			''Luglio'',''Agosto'',''Settembre'',''Ottobre'',''Novembre'',''Dicembre''],
		monthNamesShort: [''Gen'',''Feb'',''Mar'',''Apr'',''Mag'',''Giu'',
			''Lug'',''Ago'',''Set'',''Ott'',''Nov'',''Dic''],
		dayNames: [''Domenica'',''Luned&#236'',''Marted&#236'',''Mercoled&#236'',''Gioved&#236'',''Venerd&#236'',''Sabato''],
		dayNamesShort: [''Dom'',''Lun'',''Mar'',''Mer'',''Gio'',''Ven'',''Sab''],
		dayNamesMin: [''Do'',''Lu'',''Ma'',''Me'',''Gi'',''Ve'',''Sa''],
		weekHeader: ''Sm'',
		dateFormat: ''yy-mm-dd'',
		firstDay: 1,
		isRTL: false,
		showMonthAfterYear: false,
		yearSuffix: ''''};
});

jQuery(function($){
	if (Modernizr.touch && Modernizr.inputtypes.date) {
		$.each(	$(''input[data-isdate=true]''), function(index, item) {
			item.type = ''date'';
		});
	} else {
		$.datepicker.setDefaults( $.datepicker.regional[''${currentLangVar}''] );
		$(''input[data-isdate=true]'').datepicker({
      			changeMonth: true,
      			changeYear: true,
      			dateFormat: ''yy-mm-dd''
    		});
	}
});" >

<@wp.headInfo type="JS" info="entando-misc-html5-essentials/modernizr-2.5.3-full.js" />
<@wp.headInfo type="JS_EXT" info="http://code.jquery.com/ui/1.10.0/jquery-ui.min.js" />
<@wp.headInfo type="CSS_EXT" info="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.min.css" />
<@wp.headInfo type="JS_RAW" info="${js_for_datepicker}" />

<fieldset>
<legend>
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<@wp.i18n key="${i18n_Attribute_Key}" />
</legend>

<div class="control-group">
	<#assign formFieldStartNameVar = userFilterOptionVar.formFieldNames[0] >
	<#assign formFieldStartValueVar = userFilterOptionVar.getFormFieldValue(formFieldStartNameVar) >
	<label for="${formFieldStartNameVar}" class="control-label">
		<@wp.i18n key="DATE_FROM" />
	</label>
	<div class="controls">
		<input id="${formFieldStartNameVar}" name="${formFieldStartNameVar}" value="${formFieldStartValueVar?default("")}" type="text" data-isdate="true" class="input-xlarge" />
	</div>
</div>
<div class="control-group">
	<#assign formFieldEndNameVar = userFilterOptionVar.formFieldNames[1] >
	<#assign formFieldEndValueVar = userFilterOptionVar.getFormFieldValue(formFieldEndNameVar) >
	<label for="${formFieldEndNameVar}" class="control-label">
		<@wp.i18n key="DATE_TO" />
	</label>
	<div class="controls">
		<input id="${formFieldEndNameVar}" name="${formFieldEndNameVar}" value="${formFieldEndValueVar?default("")}" type="text" data-isdate="true" class="input-xlarge" />
	</div>
</div>

</fieldset>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Boolean', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>


<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >

<fieldset>
<legend><@wp.i18n key="${i18n_Attribute_Key}" /></legend>
<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Bool_io" escapeXml=false />

<div class="control-group">
	<div class="controls">
		<label for="${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="true_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "true")>checked="checked"</#if> value="true" type="radio" />
		<@wp.i18n key="YES"/></label>
	</div>
	<div class="controls">
		<label for="false_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="false_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "false")>checked="checked"</#if> value="false" type="radio" />
		<@wp.i18n key="NO"/></label>
	</div>
</div>

</fieldset>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Bool_io', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>

<#assign formFieldNameControlVar = userFilterOptionVar.formFieldNames[2] >
<input name="${formFieldNameControlVar}" type="hidden" value="true" />
<#assign formFieldNameIgnoreVar = userFilterOptionVar.formFieldNames[1] >
<#assign formFieldIgnoreValue = userFilterOptionVar.getFormFieldValue(formFieldNameIgnoreVar) >
<#assign formFieldControlValue = userFilterOptionVar.getFormFieldValue(formFieldNameControlVar) >

<div class="controls">
	<label for="ignore_${formFieldNameIgnoreVar}" class="checkbox">
	<input id="ignore_${formFieldNameIgnoreVar}" name="${formFieldNameIgnoreVar}" <#if (formFieldIgnoreValue?? && formFieldIgnoreValue == "true")>checked="checked"</#if> value="true" type="checkbox" />
	<@wp.i18n key="IGNORE" /></label>
</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_CheckBox', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>

<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >

<fieldset>
<legend><@wp.i18n key="${i18n_Attribute_Key}" /></legend>
<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Bool_io" escapeXml=false />

<div class="control-group">
	<div class="controls">
		<label for="true_${formFieldNameVar}" class="checkbox">
		<input name="${formFieldNameVar}" id="true_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "true")>checked="checked"</#if> value="true" type="checkbox" />
		<@wp.i18n key="YES"/></label>
	</div>
</div>

</fieldset>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_content_viewer_list_userfilter_ent_ThreeSt', NULL, 'jacms', NULL, '<#assign wp=JspTaglibs["/aps-core"]>

<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >

<fieldset>
<legend><@wp.i18n key="${i18n_Attribute_Key}" /></legend>
<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Bool_io" escapeXml=false />

<div class="control-group">
	<div class="controls">
		<label for="true_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="true_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "true")>checked="checked"</#if> value="true" type="radio" />
		<@wp.i18n key="YES"/></label>
		<label for="false_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="false_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "false")>checked="checked"</#if> value="false" type="radio" />
		<@wp.i18n key="NO"/></label>
		<label for="both_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="both_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "both")>checked="checked"</#if> value="both" type="radio" />
		<@wp.i18n key="BOTH"/></label>
	</div>
</div>

</fieldset>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-navigation_menu', 'entando-widget-navigation_menu', NULL, NULL, '
<#assign wp=JspTaglibs["/aps-core"]>

<@wp.currentPage param="code" var="currentPageCode" />
<@wp.freemarkerTemplateParameter var="currentPageCode" valueName="currentPageCode" />
<div class="well well-small">
<ul class="nav nav-list">
<@wp.nav var="page">
   <#if (previousPage?? && previousPage.code??)>
	<#assign previousLevel=previousPage.level>
	<#assign level=page.level>
	<@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
	<@wp.freemarkerTemplateParameter var="level" valueName="level" />
	<@wp.fragment code="entando-widget-navigation_menu_include" escapeXml=false />
   </#if>
   <@wp.freemarkerTemplateParameter var="previousPage" valueName="page" />
</@wp.nav>
<#if (previousPage??)>
   <#assign previousLevel=previousPage.level>
   <#assign level=0>
   <@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
   <@wp.freemarkerTemplateParameter var="level" valueName="level" />
   <@wp.fragment code="entando-widget-navigation_menu_include" escapeXml=false />   
   <#if (previousLevel != 0)>
	<#list 0..(previousLevel - 1) as ignoreMe>
		</ul></li>
	</#list>
   </#if>
</#if>
</ul>
</div>
<@wp.freemarkerTemplateParameter var="previousPage" valueName="" removeOnEndTag=true />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entando-widget-navigation_bar_include', NULL, NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>

<#assign liClass="">
<#assign homeIcon="">
<#assign caret="">
<#assign ulClass='' class="dropdown-menu"''>
<#assign aClassAndData="">
<#assign aURL=previousPage.url>

<#if (previousPage.voidPage)>
       <#assign aURL=''#'' />
</#if>

<#if (previousPage.code?contains("homepage"))>
     <#assign homeIcon=''<i class="icon-home"></i>&#32;''>
</#if>

<#if (previousPage.code == currentPageCode)>
     <#assign liClass='' class="active"''>
</#if>

<#if (previousLevel < level)>
    <#assign liClass='' class="dropdown"'' >

    <#if (previousPage.code == currentPageCode)>
	<#assign liClass='' class="dropdown active"''>
    </#if>

    <#if previousPage.voidPage>
	<#assign liClass='' class=" dropdown"'' >
    </#if>

    <#if (previousLevel > 0) >
	<#assign liClass='' class="dropdown-submenu"''>
	<#if (previousPage.code == currentPageCode)>
		<#assign liClass='' class="dropdown-submenu active"''>
    	</#if>

	<#assign ulClass='' class="dropdown-menu"''>
    </#if>

    <#assign aClassAndData='' class="dropdown-toggle" data-toggle="dropdown"''>

    <#if (previousLevel == 0)>
	<#assign caret='' <span class="caret"></span>''>
    </#if>
</#if>

<li ${liClass} > 
	<a href="${aURL}"  ${aClassAndData} >
				<!-- [ ${previousLevel} ] -->
				${homeIcon}
				${previousPage.title}
				${caret}
	</a>

<#if (previousLevel == level)></li></#if>
<#if (previousLevel < level)>
    <ul ${ulClass}>
</#if>
<#if (previousLevel > level)>
     <#list 1..(previousLevel - level) as ignoreMe>
            </li></ul>
     </#list>
    </li>
</#if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entandoapi_is_resource_list', 'entando_apis', NULL, NULL, '
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<h2><@wp.i18n key="ENTANDO_API_RESOURCES" /></h2>
<@s.if test="hasActionErrors()">
	<div class="alert alert-block alert-error">
		<h3 class="alert-heading"><@wp.i18n key="ENTANDO_API_ERROR" /></h3>
		<ul>
			<@s.iterator value="actionErrors">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<@s.set var="resourceFlavoursVar" value="resourceFlavours" />

<@s.if test="#resourceFlavoursVar.size() > 0">
	<@s.set var="icon_free"><span class="icon icon-ok"></span><span class="noscreen sr-only"><@wp.i18n key="ENTANDO_API_METHOD_STATUS_FREE" /></span></@s.set>
	<@s.set var="title_free"><@wp.i18n key="ENTANDO_API_METHOD_STATUS_FREE" />. <@wp.i18n key="ENTANDO_API_GOTO_DETAILS" /></@s.set>

	<@s.set var="icon_auth"><span class="icon icon-user"></span><span class="noscreen sr-only"><@wp.i18n key="ENTANDO_API_METHOD_STATUS_AUTH" /></span></@s.set>
	<@s.set var="title_auth"><@wp.i18n key="ENTANDO_API_METHOD_STATUS_AUTH" />. <@wp.i18n key="ENTANDO_API_GOTO_DETAILS" /></@s.set>

	<@s.set var="icon_lock"><span class="icon icon-lock"></span><span class="noscreen sr-only"><@wp.i18n key="ENTANDO_API_METHOD_STATUS_LOCK" /></span></@s.set>
	<@s.set var="title_lock"><@wp.i18n key="ENTANDO_API_METHOD_STATUS_LOCK" />. <@wp.i18n key="ENTANDO_API_GOTO_DETAILS" /></@s.set>

	<@s.iterator var="resourceFlavourVar" value="#resourceFlavoursVar" status="resourceFlavourStatusVar">
		<table class="table table-striped table-bordered table-condensed">
			<@s.iterator value="#resourceFlavourVar" var="resourceVar" status="statusVar" >
				<@s.if test="#statusVar.first">
					<@s.if test="#resourceVar.source==''core''"><@s.set var="captionVar"><@s.property value="#resourceVar.source" escapeHtml=false /></@s.set></@s.if>
					<@s.else><@s.set var="captionVar"><@s.property value="%{getText(#resourceVar.sectionCode+''.name'')}" escapeHtml=false /></@s.set></@s.else>
					<caption>
						<@s.property value="#captionVar" />
					</caption>
					<tr>
						<th class="span3"><@wp.i18n key="ENTANDO_API_RESOURCE" /></th>
						<th><@wp.i18n key="ENTANDO_API_DESCRIPTION" /></th>
						<th class="text-center span1">GET</th>
						<th class="text-center span1">POST</th>
						<th class="text-center span1">PUT</th>
						<th class="text-center span1">DELETE</th>
					</tr>
				</@s.if>
				<tr>
					<td>
						<@wp.action path="/ExtStr2/do/Front/Api/Resource/detail.action" var="detailActionURL">
							<@wp.parameter name="resourceName"><@s.property value="#resourceVar.resourceName" /></@wp.parameter>
							<@wp.parameter name="namespace"><@s.property value="#resourceVar.namespace" /></@wp.parameter>
						</@wp.action>
						<a title="<@wp.i18n key="ENTANDO_API_GOTO_DETAILS" />:&#32;/<@s.property value="%{#resourceVar.namespace.length()>0?#resourceVar.namespace+''/'':''''}" /><@s.property value="#resourceVar.resourceName" />" href="${detailActionURL}" ><@s.property value="#resourceVar.resourceName" /></a>
					</td>
					<td><@s.property value="#resourceVar.description" /></td>
					<td class="text-center">
						<@s.if test="#resourceVar.getMethod != null && #resourceVar.getMethod.active && (!#resourceVar.getMethod.hidden)" >
							<@s.if test="#resourceVar.getMethod.requiredPermission != null" ><@s.set var="icon" value="#icon_lock" /><@s.set var="title" value="#title_lock" /></@s.if>
							<@s.elseif test="#resourceVar.getMethod.requiredAuth" ><@s.set var="icon" value="#icon_auth" /><@s.set var="title" value="#title_auth" /></@s.elseif>
							<@s.else><@s.set var="icon" value="#icon_free" /><@s.set var="title" value="#title_free" /></@s.else>
							<a href="${detailActionURL}#api_method_GET" title="<@s.property value="#title" />">
								<@s.property value="#icon" escapeHtml=false />
							</a>
						</@s.if>
						<@s.else><abbr title="<@wp.i18n key="ENTANDO_API_METHOD_STATUS_NA" />">&ndash;</abbr></@s.else>
					</td>
					<td class="text-center">
						<@s.if test="#resourceVar.postMethod != null && #resourceVar.postMethod.active && (!#resourceVar.postMethod.hidden)" >
							<@s.if test="#resourceVar.postMethod.requiredPermission != null" ><@s.set var="icon" value="#icon_lock" /><@s.set var="title" value="#title_lock" /></@s.if>
							<@s.elseif test="#resourceVar.postMethod.requiredAuth" ><@s.set var="icon" value="#icon_auth" /><@s.set var="title" value="#title_auth" /></@s.elseif>
							<@s.else><@s.set var="icon" value="#icon_free" /><@s.set var="title" value="#title_free" /></@s.else>
							<a href="${detailActionURL}#api_method_POST" title="<@s.property value="#title" />">
								<@s.property value="#icon" escapeHtml=false />
							</a>
						</@s.if>
						<@s.else><abbr title="<@wp.i18n key="ENTANDO_API_METHOD_STATUS_NA" />">&ndash;</abbr></@s.else>
					</td>
					<td class="text-center">
						<@s.if test="#resourceVar.putMethod != null && #resourceVar.putMethod.active && (!#resourceVar.putMethod.hidden)" >
							<@s.if test="#resourceVar.putMethod.requiredPermission != null" ><@s.set var="icon" value="#icon_lock" /><@s.set var="title" value="#title_lock" /></@s.if>
							<@s.elseif test="#resourceVar.putMethod.requiredAuth" ><@s.set var="icon" value="#icon_auth" /><@s.set var="title" value="#title_auth" /></@s.elseif>
							<@s.else><@s.set var="icon" value="#icon_free" /><@s.set var="title" value="#title_free" /></@s.else>
							<a href="${detailActionURL}#api_method_PUT" title="<@s.property value="#title" />">
								<@s.property value="#icon" escapeHtml=false />
							</a>
						</@s.if>
						<@s.else><abbr title="<@wp.i18n key="ENTANDO_API_METHOD_STATUS_NA" />">&ndash;</abbr></@s.else>
					</td>
					<td class="text-center">
						<@s.if test="#resourceVar.deleteMethod != null && #resourceVar.deleteMethod.active && (!#resourceVar.deleteMethod.hidden)" >
							<@s.if test="#resourceVar.deleteMethod.requiredPermission != null" ><@s.set var="icon" value="#icon_lock" /><@s.set var="title" value="#title_lock" /></@s.if>
							<@s.elseif test="#resourceVar.deleteMethod.requiredAuth" ><@s.set var="icon" value="#icon_auth" /><@s.set var="title" value="#title_auth" /></@s.elseif>
							<@s.else><@s.set var="icon" value="#icon_free" /><@s.set var="title" value="#title_free" /></@s.else>
							<a href="${detailActionURL}#api_method_DELETE" title="<@s.property value="#title" />">
								<@s.property value="#icon" escapeHtml=false />
							</a>
						</@s.if>
						<@s.else><abbr title="<@wp.i18n key="ENTANDO_API_METHOD_STATUS_NA" />">&ndash;</abbr></@s.else>
					</td>
				</tr>
			</@s.iterator>
		</table>

		<@s.if test="#resourceVar.source==''core''">
			<a href="<@wp.action path="/ExtStr2/do/Front/Api/Service/list.action" />" class="btn btn-primary pull-right"><@wp.i18n key="ENTANDO_API_GOTO_SERVICE_LIST" /></a>
		</@s.if>
	</@s.iterator>
</@s.if>
<@s.else>
	<p><@wp.i18n key="ENTANDO_API_NO_RESOURCES" /></p>
</@s.else>
<script>
  $(function () {
    $(''#api-togglers a:first'').tab(''show'');
  })
</script>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entandoapi_is_resource_detail', 'entando_apis', NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@s.set var="apiResourceVar" value="apiResource" />
<@s.set var="GETMethodVar" value="#apiResourceVar.getMethod" />
<@s.set var="POSTMethodVar" value="#apiResourceVar.postMethod" />
<@s.set var="PUTMethodVar" value="#apiResourceVar.putMethod" />
<@s.set var="DELETEMethodVar" value="#apiResourceVar.deleteMethod" />
<@s.set var="apiNameVar" value="(#apiResourceVar.namespace!=null && #apiResourceVar.namespace.length()>0 ? ''/'' + #apiResourceVar.namespace : '''')+''/''+#apiResourceVar.resourceName" />
<section>
<p>
	<a href="<@wp.action path="/ExtStr2/do/Front/Api/Resource/list.action" />" class="btn btn-primary"><i class="icon-arrow-left icon-white"></i>&#32;<@wp.i18n key="ENTANDO_API_GOTO_LIST" /></a>
</p>
<h2><@wp.i18n key="ENTANDO_API_RESOURCE" />&#32;<@s.property value="#apiNameVar" /></h2>
<@s.if test="hasActionMessages()">
	<div class="alert alert-box alert-success">
		<h3 class="alert-heading"><@wp.i18n key="ENTANDO_API_ERROR" /></h3>
		<ul>
			<@s.iterator value="actionMessages">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<@s.if test="hasActionErrors()">
	<div class="alert alert-box alert-error">
		<h3 class="alert-heading"><@wp.i18n key="ENTANDO_API_ERROR" /></h3>
		<ul>
			<@s.iterator value="actionErrors">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<!-- DESCRIPTION -->
<p><@s.property value="#apiResourceVar.description" /></p>

<!-- INFO -->
<dl class="dl-horizontal">
	<dt><@wp.i18n key="ENTANDO_API_RESOURCE_NAME" /></dt>
		<dd><@s.property value="#apiResourceVar.resourceName" /></dd>
	<dt><span lang="en"><@wp.i18n key="ENTANDO_API_RESOURCE_NAMESPACE" /></span></dt>
		<dd>/<@s.property value="#apiResourceVar.namespace" /></dd>
	<dt><@wp.i18n key="ENTANDO_API_RESOURCE_SOURCE" /></dt>
		<dd>
			<@s.property value="#apiResourceVar.source" /><@s.if test="%{#apiResourceVar.pluginCode != null && #apiResourceVar.pluginCode.length() > 0}">,&#32;<@s.property value="%{getText(#apiResourceVar.pluginCode+''.name'')}" />&#32;(<@s.property value="%{#apiResourceVar.pluginCode}" />)</@s.if>
		</dd>
	<dt><@wp.i18n key="ENTANDO_API_RESOURCE_URI" /></dt>
		<dd>
			<a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />api/rs/<@wp.info key="currentLang" /><@s.if test="null != #apiResourceVar.namespace">/<@s.property value="#apiResourceVar.namespace" /></@s.if>/<@s.property value="#apiResourceVar.resourceName" />"><@wp.info key="systemParam" paramName="applicationBaseURL" />api/rs/<@wp.info key="currentLang" /><@s.if test="null != #apiResourceVar.namespace">/<@s.property value="#apiResourceVar.namespace" /></@s.if>/<@s.property value="#apiResourceVar.resourceName" /></a>
		</dd>
	<dt>
		<@wp.i18n key="ENTANDO_API_EXTENSION" />
	</dt>
		<dd>
			<@wp.i18n key="ENTANDO_API_EXTENSION_NOTE" />
		</dd>
</dl>

	<@s.set var="methodVar" value="#GETMethodVar" />
	<@s.set var="currentMethodNameVar" value="%{''GET''}" />
	<h3 id="api_method_GET">GET</h3>
	<@wp.fragment code="entandoapi_is_resource_detail_include" escapeXml=false />

	<@s.set var="methodVar" value="#POSTMethodVar" />
	<@s.set var="currentMethodNameVar" value="%{''POST''}" />
	<h3 id="api_method_POST">POST</h3>
	<@wp.fragment code="entandoapi_is_resource_detail_include" escapeXml=false />

	<@s.set var="methodVar" value="#PUTMethodVar" />
	<@s.set var="currentMethodNameVar" value="%{''PUT''}" />
	<h3 id="api_method_PUT">PUT</h3>
	<@wp.fragment code="entandoapi_is_resource_detail_include" escapeXml=false />

	<@s.set var="methodVar" value="#DELETEMethodVar" />
	<@s.set var="currentMethodNameVar" value="%{''DELETE''}" />
	<h3 id="api_method_DELETE">DELETE</h3>
	<@wp.fragment code="entandoapi_is_resource_detail_include" escapeXml=false />
<p>
	<a href="<@wp.action path="/ExtStr2/do/Front/Api/Resource/list.action" />" class="btn btn-primary"><i class="icon-arrow-left icon-white"></i>&#32;<@wp.i18n key="ENTANDO_API_GOTO_LIST" /></a>
</p>
</section>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entandoapi_is_resource_detail_include', NULL, NULL, '', '
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@s.if test="#methodVar == null">
	<p>
		<@s.property value="#currentMethodNameVar" />,&#32;<@wp.i18n key="ENTANDO_API_METHOD_KO" />
	</p>
</@s.if>
<@s.else>
	<dl class="dl-horizontal">
		<dt>
			<@wp.i18n key="ENTANDO_API_METHOD" />
		</dt>
			<dd>
				<@wp.i18n key="ENTANDO_API_METHOD_OK" />
			</dd>
		<@s.if test="#methodVar != null">
			<dt>
				<@wp.i18n key="ENTANDO_API_DESCRIPTION" />
			</dt>
				<dd><@s.property value="#methodVar.description" /></dd>
			<dt>
				<@wp.i18n key="ENTANDO_API_METHOD_AUTHORIZATION" />
			</dt>
				<dd>
					<@s.if test="%{null != #methodVar.requiredPermission}">
						<@s.iterator value="methodAuthorityOptions" var="permission"><@s.if test="#permission.key==#methodVar.requiredPermission"><@s.property value="#permission.value" /></@s.if></@s.iterator>
					</@s.if>
					<@s.elseif test="%{#methodVar.requiredAuth}">
						<@wp.i18n key="ENTANDO_API_METHOD_AUTH_SIMPLE" />
					</@s.elseif>
					<@s.else>
						<@wp.i18n key="ENTANDO_API_METHOD_AUTH_FREE" />
					</@s.else>
				</dd>
			<@s.if test=''%{!#methodVar.resourceName.equalsIgnoreCase("getService")}'' >
			<dt>
				<@wp.i18n key="ENTANDO_API_METHOD_SCHEMAS" />
			</dt>
				<dd class="schemas">
					<@s.if test=''%{#methodVar.httpMethod.toString().equalsIgnoreCase("POST") || #methodVar.httpMethod.toString().equalsIgnoreCase("PUT")}''>
						<@wp.action path="/ExtStr2/do/Front/Api/Resource/requestSchema.action" var="requestSchemaURLVar" >
							<@wp.parameter name="resourceName"><@s.property value="#methodVar.resourceName" /></@wp.parameter>
							<@wp.parameter name="namespace"><@s.property value="#methodVar.namespace" /></@wp.parameter>
							<@wp.parameter name="httpMethod"><@s.property value="#methodVar.httpMethod" /></@wp.parameter>
						</@wp.action>
						<a href="${requestSchemaURLVar}" >
							<@wp.i18n key="ENTANDO_API_METHOD_SCHEMA_REQ" />
						</a>
						<br />
					</@s.if>
						<@wp.action path="/ExtStr2/do/Front/Api/Resource/responseSchema.action" var="responseSchemaURLVar" >
							<@wp.parameter name="resourceName"><@s.property value="#methodVar.resourceName" /></@wp.parameter>
							<@wp.parameter name="namespace"><@s.property value="#methodVar.namespace" /></@wp.parameter>
							<@wp.parameter name="httpMethod"><@s.property value="#methodVar.httpMethod" /></@wp.parameter>
						</@wp.action>
						<a href="${responseSchemaURLVar}" >
							<@wp.i18n key="ENTANDO_API_METHOD_SCHEMA_RESP" />
						</a>
				</dd>
			</@s.if>
		</@s.if>
	</dl>
	<@s.if test="#methodVar != null">
		<@s.set var="methodParametersVar" value="#methodVar.parameters" />
		<@s.if test="null != #methodParametersVar && #methodParametersVar.size() > 0">
			<table class="table table-striped table-bordered table-condensed">
				<caption><@wp.i18n key="ENTANDO_API_METHOD_REQUEST_PARAMS" /></caption>
				<tr>
					<th><@wp.i18n key="ENTANDO_API_PARAM_NAME" /></th>
					<th><@wp.i18n key="ENTANDO_API_PARAM_DESCRIPTION" /></th>
					<th><@wp.i18n key="ENTANDO_API_PARAM_REQUIRED" /></th>
				</tr>
				<@s.iterator value="#methodParametersVar" var="apiParameter" >
					<tr>
						<td><@s.property value="#apiParameter.key" /></td>
						<td><@s.property value="#apiParameter.description" /></td>
						<td class="icon required_<@s.property value="#apiParameter.required" />">
							<@s.if test="#apiParameter.required">
								<@wp.i18n key="YES" />
							</@s.if>
							<@s.else>
								<@wp.i18n key="NO" />
							</@s.else>
						</td>
					</tr>
				</@s.iterator>
			</table>
		</@s.if>
	</@s.if>
</@s.else>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entandoapi_is_service_list', 'entando_apis', NULL, NULL, '
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<section>

<p>
	<a href="<@wp.action path="/ExtStr2/do/Front/Api/Resource/list.action" />" class="btn btn-primary"><i class="icon-arrow-left icon-white"></i>&#32;<@wp.i18n key="ENTANDO_API_GOTO_LIST" /></a>
</p>

<h2><@wp.i18n key="ENTANDO_API_GOTO_SERVICE_LIST" /></h2>
<@s.if test="hasActionErrors()">
	<div class="alert alert-block alert-error">
		<h3 class="alert-heading"><@s.text name="message.title.ActionErrors" /></h3>
		<ul>
			<@s.iterator value="actionErrors">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<@s.if test="hasFieldErrors()">
	<div class="alert alert-block alert-error">
		<h3 class="alert-heading"><@s.text name="message.title.FieldErrors" /></h3>
		<ul>
			<@s.iterator value="fieldErrors">
				<@s.iterator value="value">
				<li><@s.property escapeHtml=false /></li>
				</@s.iterator>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<@s.if test="hasActionMessages()">
	<div class="alert alert-block alert-info">
		<h3 class="alert-heading"><@s.text name="messages.confirm" /></h3>
		<ul>
			<@s.iterator value="actionMessages">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<@s.set var="resourceFlavoursVar" value="resourceFlavours" />
<@s.set var="serviceFlavoursVar" value="serviceFlavours" />

<@s.if test="#serviceFlavoursVar != null && #serviceFlavoursVar.size() > 0">
<div class="tabbable tabs-left">
	<ul class="nav nav-tabs">
		<@s.iterator var="resourceFlavour" value="#resourceFlavoursVar" status="statusVar">
			<@s.set var="serviceGroupVar" value="#resourceFlavour.get(0).getSectionCode()" />
			<@s.set var="servicesByGroupVar" value="#serviceFlavoursVar[#serviceGroupVar]" />
			<@s.if test="null != #servicesByGroupVar && #servicesByGroupVar.size() > 0">
				<@s.if test="#serviceGroupVar == ''core''"><@s.set var="captionVar" value="%{#serviceGroupVar}" /></@s.if>
				<@s.else><@s.set var="captionVar" value="%{getText(#serviceGroupVar + ''.name'')}" /></@s.else>
				<li<@s.if test="#statusVar.first"> class="active"</@s.if>>
					<a href="#api-flavour-<@s.property value=''%{#captionVar.toLowerCase().replaceAll("[^a-z0-9-]", "")}'' />" data-toggle="tab"><@s.property value=''%{#captionVar}'' /></a>
				</li>
			</@s.if>
		</@s.iterator>
	</ul>

  <div class="tab-content">
	<@s.iterator var="resourceFlavour" value="#resourceFlavoursVar" status="moreStatusVar">
		<@s.set var="serviceGroupVar" value="#resourceFlavour.get(0).getSectionCode()" />
		<@s.set var="servicesByGroupVar" value="#serviceFlavoursVar[#serviceGroupVar]" />
		<@s.if test="null != #servicesByGroupVar && #servicesByGroupVar.size() > 0">
			<@s.if test="#serviceGroupVar == ''core''"><@s.set var="captionVar" value="%{#serviceGroupVar}" /></@s.if>
			<@s.else><@s.set var="captionVar" value="%{getText(#serviceGroupVar + ''.name'')}" /></@s.else>
			<div class="tab-pane<@s.if test="#moreStatusVar.first"> active</@s.if>" id="api-flavour-<@s.property value=''%{#captionVar.toLowerCase().replaceAll("[^a-z0-9]", "")}'' />">
			<table class="table table-striped table-bordered table-condensed">
				<caption>
					<@s.property value="#captionVar" />
				</caption>
				<tr>
					<th><@wp.i18n key="ENTANDO_API_SERVICE" /></th>
					<th><@wp.i18n key="ENTANDO_API_DESCRIPTION" /></th>
				</tr>
				<@s.iterator var="serviceVar" value="#servicesByGroupVar" >
					<tr>
						<td class="monospace">
							<@wp.action path="/ExtStr2/do/Front/Api/Service/detail.action" var="detailActionURL">
								<@wp.parameter name="serviceKey"><@s.property value="#serviceVar.key" /></@wp.parameter>
							</@wp.action>
							<a href="${detailActionURL}"><@s.property value="#serviceVar.key" /></a>
						</td>
						<td><@s.property value="#serviceVar.value" /></td>
					</tr>
				</@s.iterator>
			</table>
			</div>
		</@s.if>
	</@s.iterator>
	</div>
</div>
</@s.if>
<@s.else>
<div class="alert alert-block alert-info">
	<p><@wp.i18n key="ENTANDO_API_NO_SERVICES" escapeXml=false /></p>
</div>
</@s.else>

<p>
	<a href="<@wp.action path="/ExtStr2/do/Front/Api/Resource/list.action" />" class="btn btn-primary"><i class="icon-arrow-left icon-white"></i>&#32;<@wp.i18n key="ENTANDO_API_GOTO_LIST" /></a>
</p>

</section>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('entandoapi_is_service_detail', 'entando_apis', NULL, NULL, '
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@wp.headInfo type="CSS" info="widgets/api.css"/>
<@s.set var="apiServiceVar" value="%{getApiService(serviceKey)}" />
<div class="entando-api api-resource-detail">
<h2><@wp.i18n key="ENTANDO_API_SERVICE" />&#32;<@s.property value="serviceKey" /></h2>
<@s.if test="hasActionMessages()">
	<div class="message message_confirm">
		<h3><@wp.i18n key="ENTANDO_API_ERROR" /></h3>
		<ul>
			<@s.iterator value="actionMessages">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<@s.if test="hasActionErrors()">
	<div class="message message_error">
		<h3><@wp.i18n key="ENTANDO_API_ERROR" /></h3>
		<ul>
			<@s.iterator value="actionErrors">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>

<p class="description"><@s.property value="getTitle(serviceKey, #apiServiceVar.description)" /></p>

<@s.set var="masterMethodVar" value="#apiServiceVar.master" />

<dl class="dl-horizontal">
	<dt><@wp.i18n key="ENTANDO_API_SERVICE_KEY" /></dt>
		<dd><@s.property value="serviceKey" /></dd>
	<dt><@wp.i18n key="ENTANDO_API_SERVICE_PARENT_API" /></dt>
		<dd><@s.property value="#masterMethodVar.description" />&#32;(/<@s.if test="#masterMethodVar.namespace!=null && #masterMethodVar.namespace.length()>0"><@s.property value="#masterMethodVar.namespace" />/</@s.if><@s.property value="#masterMethodVar.resourceName" />)</dd>
	<dt>
		<@wp.i18n key="ENTANDO_API_SERVICE_AUTHORIZATION" />
	</dt>
		<dd>
			<@s.if test="%{!#apiServiceVar.requiredAuth}" >
				<@wp.i18n key="ENTANDO_API_SERVICE_AUTH_FREE" />
			</@s.if>
			<@s.elseif test="%{null == #apiServiceVar.requiredPermission && null == #apiServiceVar.requiredGroup}">
				<@wp.i18n key="ENTANDO_API_SERVICE_AUTH_SIMPLE" />
			</@s.elseif>
			<@s.else>
				<@s.set var="serviceAuthGroupVar" value="%{getGroup(#apiServiceVar.requiredGroup)}" />
				<@s.set var="serviceAuthPermissionVar" value="%{getPermission(#apiServiceVar.requiredPermission)}" />
				<@s.if test="%{null != #serviceAuthPermissionVar}">
					<@wp.i18n key="ENTANDO_API_SERVICE_AUTH_WITH_PERM" />&#32;<@s.property value="#serviceAuthPermissionVar.description" />
				</@s.if>
				<@s.if test="%{null != #serviceAuthGroupVar}">
					<@s.if test="%{null != #serviceAuthPermissionVar}"><br /></@s.if>
					<@wp.i18n key="ENTANDO_API_SERVICE_AUTH_WITH_GROUP" />&#32;<@s.property value="#serviceAuthGroupVar.descr" />
				</@s.if>
			</@s.else>
		</dd>
	<dt><@wp.i18n key="ENTANDO_API_SERVICE_URI" /></dt>
		<dd>
			<a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />api/rs/<@wp.info key="currentLang" />/getService?key=<@s.property value="serviceKey" />"><@wp.info key="systemParam" paramName="applicationBaseURL" />api/rs/<@wp.info key="currentLang" />/getService?key=<@s.property value="serviceKey" /></a>
		</dd>
	<dt>
		<@wp.i18n key="ENTANDO_API_EXTENSION" />
	</dt>
		<dd>
			<@wp.i18n key="ENTANDO_API_EXTENSION_NOTE" />
		</dd>
	<dt>
		<@wp.i18n key="ENTANDO_API_SERVICE_SCHEMAS" />
	</dt>
		<dd class="schemas">
			<@wp.action path="/ExtStr2/do/Front/Api/Service/responseSchema.action" var="responseSchemaURLVar" >
				<@wp.parameter name="serviceKey"><@s.property value="serviceKey" /></@wp.parameter>
			</@wp.action>
			<a href="${responseSchemaURLVar}" >
				<@wp.i18n key="ENTANDO_API_SERVICE_SCHEMA_RESP" />
			</a>
		</dd>
</dl>

<@s.if test="%{null != #apiServiceVar.freeParameters && #apiServiceVar.freeParameters.length > 0}" >
<table class="table table-striped table-bordered table-condensed" summary="<@wp.i18n key="ENTANDO_API_SERVICE_PARAMETERS_SUMMARY" />">
	<caption><span><@wp.i18n key="ENTANDO_API_SERVICE_PARAMETERS" /></span></caption>
	<tr>
		<th><@wp.i18n key="ENTANDO_API_SERVICE_PARAM_NAME" /></th>
		<th><@wp.i18n key="ENTANDO_API_SERVICE_PARAM_DESCRIPTION" /></th>
		<th><@wp.i18n key="ENTANDO_API_SERVICE_PARAM_REQUIRED" /></th>
		<th><@wp.i18n key="ENTANDO_API_SERVICE_PARAM_DEFAULT_VALUE" /></th>
	</tr>
	<@s.iterator value="#apiServiceVar.freeParameters" var="apiParameterNameVar" >
		<@s.set var="apiParameterValueVar" value="%{#apiServiceVar.parameters[#apiParameterNameVar]}" />
		<@s.set var="apiParameterVar" value="%{#apiServiceVar.master.getParameter(#apiParameterNameVar)}" />
		<@s.set var="apiParameterRequiredVar" value="%{#apiParameterVar.required && null == #apiParameterValueVar}" />
		<tr>
			<td><label for="<@s.property value="#apiParameterNameVar" />"><@s.property value="#apiParameterNameVar" /></label></td>
			<td><@s.property value="%{#apiParameterVar.description}" /></td>
			<td class="icon required_<@s.property value="#apiParameterRequiredVar" />">
				<@s.if test="#apiParameterRequiredVar" ><@wp.i18n key="YES" /></@s.if>
				<@s.else><@wp.i18n key="NO" /></@s.else>
			</td>
			<td><@s.if test="null != #apiParameterValueVar"><@s.property value="#apiParameterValueVar" /></@s.if><@s.else>-</@s.else></td>
		</tr>
	</@s.iterator>
</table>
</@s.if>
<p class="api-back">
	<a class="btn btn-primary" href="<@wp.action path="/ExtStr2/do/Front/Api/Resource/list.action" />"><span class="icon-arrow-left icon-white"></span>&#32;<@wp.i18n key="ENTANDO_API_GOTO_LIST" /></a>
</p>
</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('login_form', 'login_form', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<h1><@wp.i18n key="RESERVED_AREA" /></h1>
<#if (Session.currentUser.username != "guest") >
	<p><@wp.i18n key="WELCOME" />, <em>${Session.currentUser}</em>!</p>
	<#if (Session.currentUser.entandoUser) >
	<table class="table table-condensed">
		<tr>
			<th><@wp.i18n key="USER_DATE_CREATION" /></th>
			<th><@wp.i18n key="USER_DATE_ACCESS_LAST" /></th>
			<th><@wp.i18n key="USER_DATE_PASSWORD_CHANGE_LAST" /></th>
		</tr>
		<tr>
			<td>${Session.currentUser.creationDate?default("-")}</td>
			<td>${Session.currentUser.lastAccess?default("-")}</td>
			<td>${Session.currentUser.lastPasswordChange?default("-")}</td>
		</tr>
	</table>
		<#if (!Session.currentUser.credentialsNotExpired) >
		<div class="alert alert-block">
			<p><@wp.i18n key="USER_STATUS_EXPIRED_PASSWORD" />: <a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/editPassword.action"><@wp.i18n key="USER_STATUS_EXPIRED_PASSWORD_CHANGE" /></a></p>
		</div>
		</#if>
	</#if>
	<@wp.ifauthorized permission="enterBackend">
	<#-- <h2><@wp.i18n key="ADMINISTRATION" />:</h2> -->
	<div class="btn-group">
		<a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/main.action?request_locale=<@wp.info key="currentLang" />" class="btn"><@wp.i18n key="ESLF_ADMINISTRATION" /></a>
	</div>
	</@wp.ifauthorized>
	<p class="pull-right"><a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/logout.action" class="btn"><@wp.i18n key="LOGOUT" /></a></p>
	<@wp.pageWithWidget widgetTypeCode="userprofile_editCurrentUser" var="userprofileEditingPageVar" listResult=false />
	<#if (userprofileEditingPageVar??) >
	<p><a href="<@wp.url page="${userprofileEditingPageVar.code}" />" ><@wp.i18n key="userprofile_CONFIGURATION" /></a></p>
	</#if>
<#else>
	<#if (accountExpired?? && accountExpired == true) >
	<div class="alert alert-block alert-error">
		<p><@wp.i18n key="USER_STATUS_EXPIRED" /></p>
	</div>
	</#if>
	<#if (wrongAccountCredential?? && wrongAccountCredential == true) >
	<div class="alert alert-block alert-error">
		<p><@wp.i18n key="USER_STATUS_CREDENTIALS_INVALID" /></p>
	</div>
	</#if>
	<form action="<@wp.url/>" method="post" class="form-horizontal margin-medium-top">
		<#if (RequestParameters.returnUrl??) >
		<input type="hidden" name="returnUrl" value="${RequestParameters.returnUrl}" />
		</#if>
	<div class="control-group">
			<label for="username" class="control-label"><@wp.i18n key="USERNAME" /></label>
			<div class="controls">
				<input id="username" type="text" name="username" class="input-xlarge" />
			</div>
		</div>
		<div class="control-group">
			<label for="password" class="control-label"><@wp.i18n key="PASSWORD" /></label>
			<div class="controls">
				<input id="password" type="password" name="password" class="input-xlarge" />
		</div>
		<div class="form-actions">
			<input type="submit" value="<@wp.i18n key="SIGNIN" />" class="btn btn-primary" />
		</div>
	</form>
</#if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('internal_servlet_generic_error', NULL, NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<@wp.i18n key="GENERIC_ERROR" />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('internal_servlet_user_not_allowed', NULL, NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<@wp.i18n key="USER_NOT_ALLOWED" />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('messages_system', 'messages_system', NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>

<#assign currentPageCode><@wp.currentPage param="code" /></#assign>

<#if (currentPageCode == ''notfound'')>
<div class="alert alert-error alert-block">
	<h1 class="alert-heading"><@wp.i18n key="PAGE_NOT_FOUND" escapeXml=false /></h1>
</div>
</#if>
<#if (currentPageCode == ''errorpage'')>
<div class="alert alert-error alert-block">
	<h1 class="alert-heading"><@wp.i18n key="GENERIC_ERROR" escapeXml=false /></h1>
</div>
</#if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('search_result', 'search_result', 'jacms', '<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>

<h1><@wp.i18n key="SEARCH_RESULTS" /></h1>
<@jacms.searcher listName="contentListResult" />
<p><@wp.i18n key="SEARCHED_FOR" />: <em><strong>${RequestParameters.search}</strong></em></p>

<#if (contentListResult??) && (contentListResult?has_content) && (contentListResult?size > 0)>

<@wp.pager listName="contentListResult" objectName="groupContent" max=10 pagerIdFromFrame=true advanced=true offset=5>
	<@wp.freemarkerTemplateParameter var="group" valueName="groupContent" removeOnEndTag=true >
	<p><em><@wp.i18n key="SEARCH_RESULTS_INTRO" /> <!-- infamous whitespace hack -->
	${groupContent.size}
	<@wp.i18n key="SEARCH_RESULTS_OUTRO" /> [${groupContent.begin + 1} &ndash; ${groupContent.end + 1}]:</em></p>
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
	<#list contentListResult as contentId>
	<#if (contentId_index >= groupContent.begin) && (contentId_index <= groupContent.end)>
		<@jacms.content contentId="${contentId}" modelId="list" />
	</#if>
	</#list>
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
	</@wp.freemarkerTemplateParameter>
</@wp.pager>

<#else>
<p class="alert alert-info"><@wp.i18n key="SEARCH_NOTHING_FOUND" /></p>
</#if>', NULL, 0);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('jacms_row_content_viewer_list', 'row_content_viewer_list', 'jacms', NULL, '<#assign jacms=JspTaglibs["/jacms-aps-core"]>

<#assign wp=JspTaglibs["/aps-core"]>
<@jacms.rowContentList listName="contentInfoList" titleVar="titleVar"
	pageLinkVar="pageLinkVar" pageLinkDescriptionVar="pageLinkDescriptionVar" />
<#if (titleVar??)>
	<h1>${titleVar}</h1>
</#if>
<#if (contentInfoList??) && (contentInfoList?has_content) && (contentInfoList?size > 0)>
	<@wp.pager listName="contentInfoList" objectName="groupContent" pagerIdFromFrame=true advanced=true offset=5>
	<@wp.freemarkerTemplateParameter var="group" valueName="groupContent" removeOnEndTag=true >
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
	<#list contentInfoList as contentInfoVar>
	<#if (contentInfoVar_index >= groupContent.begin) && (contentInfoVar_index <= groupContent.end)>
		<#if (contentInfoVar[''modelId'']??)>
		<@jacms.content contentId="${contentInfoVar[''contentId'']}" modelId="${contentInfoVar[''modelId'']}" />
		<#else>
		<@jacms.content contentId="${contentInfoVar[''contentId'']}" />
		</#if>
	</#if>
	</#list>
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
	</@wp.freemarkerTemplateParameter>
	</@wp.pager>
</#if>
<#if (pageLinkVar??) && (pageLinkDescriptionVar??)>
	<p class="text-right"><a class="btn btn-primary" href="<@wp.url page="${pageLinkVar}"/>">${pageLinkDescriptionVar}</a></p>
</#if>
<#assign contentInfoList>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_editCurrentUser_profile', 'userprofile_editCurrentUser_profile', NULL, NULL, '
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<h1><@wp.i18n key="userprofile_EDITPROFILE_TITLE" /></h1>
<#if (Session.currentUser != "guest") >
	<form action="<@wp.action path="/ExtStr2/do/Front/CurrentUser/Profile/save.action" />" method="post" class="form-horizontal">
	<@s.if test="hasFieldErrors()">
		<div class="alert alert-block">
			<p><strong><@wp.i18n key="userprofile_MESSAGE_TITLE_FIELDERRORS" /></strong></p>
			<ul class="unstyled">
				<@s.iterator value="fieldErrors">
					<@s.iterator value="value">
						<li><@s.property escapeHtml=false /></li>
					</@s.iterator>
				</@s.iterator>
			</ul>
		</div>
	</@s.if>
	<@s.set var="lang" value="defaultLang" />
	<@s.iterator value="userProfile.attributeList" var="attribute">
		<@s.if test="%{#attribute.active}">
			<@wpsa.tracerFactory var="attributeTracer" lang="%{#lang.code}" />
				<@s.set var="i18n_attribute_name">userprofile_<@s.property value="userProfile.typeCode" />_<@s.property value="#attribute.name" /></@s.set>
				<@s.set var="attribute_id">userprofile_<@s.property value="#attribute.name" /></@s.set>
				<@wp.fragment code="userprofile_is_IteratorAttribute" escapeXml=false />
		</@s.if>
	</@s.iterator>

	<p class="form-actions">
		<@wp.i18n key="userprofile_SAVE_PROFILE" var="userprofile_SAVE_PROFILE" />
		<@wpsf.submit useTabindexAutoIncrement=true value="%{#attr.userprofile_SAVE_PROFILE}" cssClass="btn btn-primary" />
	</p>

	</form>
<#else>
	<p>
		<@wp.i18n key="userprofile_PLEASE_LOGIN" />
	</p>
</#if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_front-DateAttribute', NULL, NULL, NULL, '
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<#assign currentLangVar ><@wp.info key="currentLang" /></#assign>

<@s.if test="#attribute.failedDateString == null">
<@s.set var="dateAttributeValue" value="#attribute.getFormattedDate(''dd/MM/yyyy'')" />
</@s.if>
<@s.else>
<@s.set var="dateAttributeValue" value="#attribute.failedDateString" />
</@s.else>
<@wpsf.textfield 
useTabindexAutoIncrement=true id="%{attribute_id}" 
name="%{#attributeTracer.getFormFieldName(#attribute)}" 
value="%{#dateAttributeValue}" maxlength="10" cssClass="text userprofile-date" />
&#32;
<#assign js_for_datepicker="jQuery(function($){
	$.datepicker.regional[''it''] = {
		closeText: ''Chiudi'',
		prevText: ''&#x3c;Prec'',
		nextText: ''Succ&#x3e;'',
		currentText: ''Oggi'',
		monthNames: [''Gennaio'',''Febbraio'',''Marzo'',''Aprile'',''Maggio'',''Giugno'',
			''Luglio'',''Agosto'',''Settembre'',''Ottobre'',''Novembre'',''Dicembre''],
		monthNamesShort: [''Gen'',''Feb'',''Mar'',''Apr'',''Mag'',''Giu'',
			''Lug'',''Ago'',''Set'',''Ott'',''Nov'',''Dic''],
		dayNames: [''Domenica'',''Luned&#236'',''Marted&#236'',''Mercoled&#236'',''Gioved&#236'',''Venerd&#236'',''Sabato''],
		dayNamesShort: [''Dom'',''Lun'',''Mar'',''Mer'',''Gio'',''Ven'',''Sab''],
		dayNamesMin: [''Do'',''Lu'',''Ma'',''Me'',''Gi'',''Ve'',''Sa''],
		weekHeader: ''Sm'',
		dateFormat: ''dd/mm/yy'',
		firstDay: 1,
		isRTL: false,
		showMonthAfterYear: false,
		yearSuffix: ''''};
});

jQuery(function($){
	if (Modernizr.touch && Modernizr.inputtypes.date) {
		$.each(	$(''input.userprofile-date''), function(index, item) {
			item.type = ''date'';
		});
	} else {
		$.datepicker.setDefaults( $.datepicker.regional[''${currentLangVar}''] );
		$(''input.userprofile-date'').datepicker({
      			changeMonth: true,
      			changeYear: true,
      			dateFormat: ''dd/mm/yy''
    		});
	}
});" >

<@wp.headInfo type="JS" info="entando-misc-html5-essentials/modernizr-2.5.3-full.js" />
<@wp.headInfo type="JS_EXT" info="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js" />
<@wp.headInfo type="CSS_EXT" info="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.min.css" />
<@wp.headInfo type="JS_RAW" info="${js_for_datepicker}" />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_front_attributeInfo-help-block', NULL, NULL, NULL, '
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@s.set var="validationRules" value="#attribute.validationRules.ognlValidationRule" />
<@s.set var="hasValidationRulesVar" value="%{#validationRules != null && #validationRules.expression != null}" />

<@s.if test="%{#hasValidationRulesVar || #attribute.type == ''Date'' || (#attribute.textAttribute && (#attribute.minLength != -1 || #attribute.maxLength != -1))}">
		<span class="help-block">
		<@s.if test="#attribute.type == ''Date''">dd/MM/yyyy&#32;</@s.if>
		<@s.if test="%{#validationRules.helpMessageKey != null}">
			<@s.set var="label" scope="page" value="#validationRules.helpMessageKey" /><@wp.i18n key="${label}" />
		</@s.if>
		<@s.elseif test="%{#validationRules.helpMessage != null}">
			<@s.property value="#validationRules.helpMessage" />
		</@s.elseif>
		<@s.if test="#attribute.minLength != -1">
			&#32;
			<abbr title="<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MINLENGTH_FULL" />&#32;<@s.property value="#attribute.minLength" />">
				<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MINLENGTH_SHORT" />:&#32;<@s.property value="#attribute.minLength" />
			</abbr>
		</@s.if>
		<@s.if test="#attribute.maxLength != -1">
			&#32;
			<abbr title="<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MAXLENGTH_FULL" />&#32;<@s.property value="#attribute.maxLength" />">
				<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MAXLENGTH_SHORT" />:&#32;<@s.property value="#attribute.maxLength" />
			</abbr>
		</@s.if>
	</span>
</@s.if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_passwordChanged', NULL, NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign s=JspTaglibs["/struts-tags"]>

<h1><@wp.i18n key="userprofile_EDITPASSWORD_TITLE" /></h1>
<p class="alert alert-success"><@wp.i18n key="userprofile_PASSWORD_UPDATED" /></p>
<@s.if test="!#session.currentUser.credentialsNonExpired">
	<p class="alert alert-info">
		<a href="<@s.url namespace="/do" action="logout" />" ><@wp.i18n key="userprofile_PLEASE_LOGIN_AGAIN" /></a>
	</p>
</@s.if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_front-HypertextAttribute', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@wpsf.textarea 
	useTabindexAutoIncrement=true 
	cols="50" 
	rows="3" 
	id="%{#attribute_id}" 
	name="%{#attributeTracer.getFormFieldName(#attribute)}" 
	value="%{#attribute.textMap[#lang.code]}"  />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_front-NumberAttribute', NULL, NULL, NULL, '
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@s.if test="#attribute.failedNumberString == null">
<@s.set var="numberAttributeValue" value="#attribute.value"></@s.set>
</@s.if>
<@s.else>
<@s.set var="numberAttributeValue" value="#attribute.failedNumberString"></@s.set>
</@s.else>
<@wpsf.textfield useTabindexAutoIncrement=true id="%{#attribute_id}" name="%{#attributeTracer.getFormFieldName(#attribute)}" value="%{#numberAttributeValue}" maxlength="254" />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_front-BooleanAttribute', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<label class="radio inline" for="<@s.property value="%{#attribute_id + ''-true''}" />">
	<@wpsf.radio 
		useTabindexAutoIncrement=true 
		name="%{#attributeTracer.getFormFieldName(#attribute)}" 
		id="%{#attribute_id + ''-true''}" 
		value="true"
		checked="%{#attribute.value == true}" 
		cssClass="radio" />
		<@wp.i18n key="userprofile_YES" />
</label>
&#32;
<label class="radio inline" for="<@s.property value="%{#attribute_id+''-false''}" />">
	<@wpsf.radio 
		useTabindexAutoIncrement=true 
		name="%{#attributeTracer.getFormFieldName(#attribute)}" 
		id="%{#attribute_id + ''-false''}" 
		value="false" 
		checked="%{#attribute.value == false}" 
		cssClass="radio" />
		<@wp.i18n key="userprofile_NO" />
</label>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_front-ThreeStateAttribute', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<label class="radio inline" for="<@s.property value="%{#attribute_id + ''-none''}" />">
	<@wpsf.radio 
		useTabindexAutoIncrement=true  
		name="%{#attributeTracer.getFormFieldName(#attribute)}" 
		id="%{#attribute_id + ''-none''}" 
		value="" 
		checked="%{#attribute.booleanValue == null}" 
		cssClass="radio" />
		<@wp.i18n key="userprofile_BOTH_YES_AND_NO" />
</label>
&#32;
<label class="radio inline" for="<@s.property value="%{#attribute_id + ''-true''}" />">
	<@wpsf.radio 
		useTabindexAutoIncrement=true  
		name="%{#attributeTracer.getFormFieldName(#attribute)}" 
		id="%{#attribute_id + ''-true''}" 
		value="true" 
		checked="%{#attribute.booleanValue != null && #attribute.booleanValue == true}"
		cssClass="radio" />
		<@wp.i18n key="userprofile_YES" />
</label>
&#32;
<label class="radio inline" for="<@s.property value="%{#attribute_id + ''-false''}" />">
	<@wpsf.radio 
		useTabindexAutoIncrement=true  
		name="%{#attributeTracer.getFormFieldName(#attribute)}" 
		id="%{#attribute_id + ''-false''}" 
		value="false" 
		checked="%{#attribute.booleanValue != null && #attribute.booleanValue == false}" 
		cssClass="radio" />
		<@wp.i18n key="userprofile_NO" />
</label>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_front_AttributeInfo', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@s.if test="#attribute.required">
	<abbr class="icon icon-asterisk" title="<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MANDATORY_FULL" />"><span class="noscreen"><@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MANDATORY_SHORT" /></span></abbr>
</@s.if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_front_AllList_operationModule', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@s.if test="null == #operationButtonDisabled">
	<@s.set var="operationButtonDisabled" value="false" />
</@s.if>
<div class="btn-toolbar">
	<div class="btn-group btn-group-sm">
		<@wpsa.actionParam action="moveListElement" var="actionName" >
			<@wpsa.actionSubParam name="attributeName" value="%{#attribute.name}" />
			<@wpsa.actionSubParam name="listLangCode" value="%{#lang.code}" />
			<@wpsa.actionSubParam name="elementIndex" value="%{#elementIndex}" />
			<@wpsa.actionSubParam name="movement" value="UP" />
		</@wpsa.actionParam>
		<@wpsf.submit disabled="%{#operationButtonDisabled}" action="%{#actionName}" type="button" cssClass="btn btn-default" title="%{getText(''label.moveInPositionNumber'')}: %{#elementIndex}">
		<span class="icon fa fa-sort-desc"></span>
		<span class="sr-only"><@s.text name="label.moveInPositionNumber" />: <@s.property value="%{#elementIndex}" /></span>
		</@wpsf.submit>

		<@wpsa.actionParam action="moveListElement" var="actionName" >
			<@wpsa.actionSubParam name="attributeName" value="%{#attribute.name}" />
			<@wpsa.actionSubParam name="listLangCode" value="%{#lang.code}" />
			<@wpsa.actionSubParam name="elementIndex" value="%{#elementIndex}" />
			<@wpsa.actionSubParam name="movement" value="DOWN" />
		</@wpsa.actionParam>
		<@wpsf.submit disabled="%{#operationButtonDisabled}" action="%{#actionName}" type="button" cssClass="btn btn-default" title="%{getText(''label.moveInPositionNumber'')}: %{#elementIndex+2}">
		<span class="icon fa fa-sort-asc"></span>
		<span class="sr-only"><@s.text name="label.moveInPositionNumber" />: <@s.property value="%{#elementIndex}" /></span>
		</@wpsf.submit>
	</div>
	<div class="btn-group btn-group-sm">
		<@wpsa.actionParam action="removeListElement" var="actionName" >
			<@wpsa.actionSubParam name="attributeName" value="%{#attribute.name}" />
			<@wpsa.actionSubParam name="listLangCode" value="%{#lang.code}" />
			<@wpsa.actionSubParam name="elementIndex" value="%{#elementIndex}" />
		</@wpsa.actionParam>
		<@wpsf.submit disabled="%{#operationButtonDisabled}" action="%{#actionName}" type="button" cssClass="btn btn-default btn-warning" title="%{getText(''label.remove'')}: %{#elementIndex}">
		<span class="icon fa fa-times-circle-o"></span>
		<span class="sr-only"><@s.text name="label.remove" />: <@s.property value="%{#elementIndex}" /></span>
		</@wpsf.submit>
	</div>
</div>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_front-AllList-addElementButton', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@s.set var="add_label"><@wp.i18n key="userprofile_ADDITEM_LIST" /></@s.set>

<@wpsa.actionParam action="addListElement" var="actionName" >
	<@wpsa.actionSubParam name="attributeName" value="%{#attribute.name}" />
	<@wpsa.actionSubParam name="listLangCode" value="%{#lang.code}" />
</@wpsa.actionParam>
<@s.set var="iconImagePath" id="iconImagePath"><@wp.resourceURL/>administration/common/img/icons/list-add.png</@s.set> 
<@wpsf.submit 
	cssClass="btn"
	useTabindexAutoIncrement=true 
	action="%{#actionName}" 
	value="%{add_label}" 
	title="%{i18n_attribute_name}%{'': ''}%{add_label}" />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_IteratorAttribute', NULL, NULL, NULL, '
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<#assign i18n_attribute_name ><@s.property value="#i18n_attribute_name" /></#assign>
<@s.if test="#attribute.type == ''Boolean''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 	
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-BooleanAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.if>
<@s.elseif test="#attribute.type == ''CheckBox''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-CheckboxAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>	
<@s.elseif test="#attribute.type == ''Composite''">
	<div class="well well-small">
		<fieldset class=" <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
			<legend class="margin-medium-top">
				<@wp.i18n key="${i18n_attribute_name}" />
				<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false />
			</legend>
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
			<@wp.fragment code="userprofile_is_front-CompositeAttribute" escapeXml=false />
		</fieldset>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Date''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-DateAttribute" escapeXml=false /> 
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Enumerator''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-EnumeratorAttribute" escapeXml=false /> 
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''EnumeratorMap''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-EnumeratorMapAttribute" escapeXml=false /> 
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Hypertext''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-HypertextAttribute" escapeXml=false /> 
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''List''">
	<div class="well well-small">
		<fieldset class=" <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
			<legend class="margin-medium-top">
				<@wp.i18n key="${i18n_attribute_name}" />
					<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 			
			</legend>
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
			<@wp.fragment code="userprofile_is_front-MonolistAttribute" escapeXml=false /> 
		</fieldset>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Longtext''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false />
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-LongtextAttribute" escapeXml=false /> 			
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Monolist''">
	<div class="well well-small">
		<fieldset class=" <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
			<legend class="margin-medium-top"><@wp.i18n key="${i18n_attribute_name}" />
				<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false />
			</legend>
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
			<@wp.fragment code="userprofile_is_front-MonolistAttribute" escapeXml=false /> 		
		</fieldset>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Monotext''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-MonotextAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Number''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 			
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-NumberAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Text''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-MonotextAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''ThreeState''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-ThreeStateAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.else> <#-- for all other types, insert a simple label and a input[type="text"] -->
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-MonotextAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.else>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_editCurrentUser_password', 'userprofile_editCurrentUser_password', NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>

<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<h1><@wp.i18n key="userprofile_EDITPASSWORD" /></h1>

<#if (Session.currentUser != "guest") >

	<form action="<@wp.action path="/ExtStr2/do/Front/CurrentUser/changePassword.action" />" method="post" class="form-horizontal">

	<@s.if test="hasFieldErrors()">
		<div class="alert alert-block">
			<p><strong><@wp.i18n key="userprofile_MESSAGE_TITLE_FIELDERRORS" /></strong></p>
			<ul class="unstyled">
				<@s.iterator value="fieldErrors">
					<@s.iterator value="value">
						<li><@s.property escapeHtml=false /></li>
					</@s.iterator>
				</@s.iterator>
			</ul>
		</div>
	</@s.if>

	<p class="noscreen">
		<wpsf:hidden name="username" />
	</p>

	<div class="control-group">
		<label for="userprofile-old-password" class="control-label"><@wp.i18n key="userprofile_OLDPASSWORD" /></label>
		<div class="controls">
			<@wpsf.password 
				useTabindexAutoIncrement=true 
				name="oldPassword" 
				id="userprofile-old-password" />
		</div>
	</div>

	<div class="control-group">
		<label for="userprofile-new-password" class="control-label"><@wp.i18n key="userprofile_NEWPASS" /></label>
		<div class="controls">
			<@wpsf.password 
				useTabindexAutoIncrement=true 
				name="password" 
				id="userprofile-new-password" />
		</div>
	</div>

	<div class="control-group">
		<label for="userprofile-new-password-confirm" class="control-label"><@wp.i18n key="userprofile_CONFIRM_NEWPASS" /></label>
		<div class="controls">
			<@wpsf.password 
				useTabindexAutoIncrement=true 
				name="passwordConfirm" 
				id="userprofile-new-password-confirm" />
		</div>
	</div>

	<p class="form-actions">
		<@wp.i18n key="userprofile_SAVE_PASSWORD" var="userprofile_SAVE_PASSWORD" />
		<@wpsf.submit 
			useTabindexAutoIncrement=true 
			value="%{#attr.userprofile_SAVE_PASSWORD}" 
			cssClass="btn btn-primary" />
	</p>

	</form>
	
<#else>
	<p>
		<@wp.i18n key="userprofile_PLEASE_LOGIN_TO_EDIT_PASSWORD" />
	</p>
</#if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_front-MonolistAttribute', NULL, NULL, NULL, '
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<@s.if test="#attribute.attributes.size() != 0">
	<ul class="unstyled">
</@s.if>

<@s.set var="masterListAttributeTracer" value="#attributeTracer" />
<@s.set var="masterListAttribute" value="#attribute" />

<@s.iterator value="#attribute.attributes" var="attribute" status="elementStatus">
	<@s.set var="attributeTracer" value="#masterListAttributeTracer.getMonoListElementTracer(#elementStatus.index)"></@s.set>
	<@s.set var="elementIndex" value="#elementStatus.index" />
	<@s.set var="i18n_attribute_name">userprofile_ATTR<@s.property value="#attribute.name" /></@s.set>
	<@s.set var="attribute_id">userprofile_<@s.property value="#attribute.name" />_<@s.property value="#elementStatus.count" /></@s.set>

	<li class="control-group  <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@s.if test="#attribute.type == ''Composite''">
				<@s.property value="#elementStatus.count" /><span class="noscreen">&#32;<@s.text name="label.compositeAttribute.element" /></span>
				&#32;
				<@s.if test="#lang.default">
					<@wp.fragment code="userprofile_is_front_AllList_operationModule" escapeXml=false /> 
				</@s.if>
			</@s.if>
			<@s.else>
				<@s.property value="#elementStatus.count" />
				&#32;
				<@wp.fragment code="userprofile_is_front_AllList_operationModule" escapeXml=false /> 
			</@s.else>
		</label>
		<div class="controls">
			<@s.if test="#attribute.type == ''Boolean''">
				<@wp.fragment code="userprofile_is_front-BooleanAttribute" escapeXml=false />
			</@s.if>
			<@s.elseif test="#attribute.type == ''CheckBox''">
				<@wp.fragment code="userprofile_is_front-CheckboxAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Composite''">
				<@wp.fragment code="userprofile_is_front-CompositeAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Date''">
				<@wp.fragment code="userprofile_is_front-DateAttribute" escapeXml=false /> 
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Enumerator''">
				<@wp.fragment code="userprofile_is_front-EnumeratorAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''EnumeratorMap''">
				<@wp.fragment code="userprofile_is_front-EnumeratorMapAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Hypertext''">
				<@wp.fragment code="userprofile_is_front-HypertextAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Longtext''">
				<@wp.fragment code="userprofile_is_front-LongtextAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Monotext''">
				<@wp.fragment code="userprofile_is_front-MonotextAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Number''">
				<@wp.fragment code="userprofile_is_front-NumberAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''ThreeState''">
				<@wp.fragment code="userprofile_is_front-ThreeStateAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Text''">
				<@wp.fragment code="userprofile_is_front-MonotextAttribute" escapeXml=false />				
			</@s.elseif>
			<@s.else>
				<@wp.fragment code="userprofile_is_front-MonotextAttribute" escapeXml=false />	
			</@s.else>
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</li>
</@s.iterator>

<@s.set var="attributeTracer" value="#masterListAttributeTracer" />
<@s.set var="attribute" value="#masterListAttribute" />
<@s.set var="elementIndex" value="" />
<@s.if test="#attribute.attributes.size() != 0">
</ul>
</@s.if>
<@s.if test="#lang.default">
	<div class="control-group">
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-AllList-addElementButton" escapeXml=false />				
		</div>
	</div>
</@s.if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_profileChangeConfirmation', NULL, NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<h1><@wp.i18n key="userprofile_EDITPROFILE_TITLE" /></h1>
<p><@wp.i18n key="userprofile_PROFILE_UPDATED" /></p>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_entryCurrentProfile', NULL, NULL, NULL, '
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<#if (Session.currentUser != "guest") >
<form action="<@wp.action path="/ExtStr2/do/Front/CurrentUser/Profile/save.action" />" method="post" class="form-horizontal">
	<@s.if test="hasFieldErrors()">
		<div class="alert alert-block">
			<p><strong><@wp.i18n key="userprofile_MESSAGE_TITLE_FIELDERRORS" /></strong></p>
			<ul class="unstyled">
				<@s.iterator value="fieldErrors">
					<@s.iterator value="value">
						<li><@s.property escapeHtml=false /></li>
					</@s.iterator>
				</@s.iterator>
			</ul>
		</div>
	</@s.if>
	<@s.set var="lang" value="defaultLang" />
	<@s.iterator value="userProfile.attributeList" var="attribute">
		<@s.if test="%{#attribute.active}">
			<@wpsa.tracerFactory var="attributeTracer" lang="%{#lang.code}" />
			<@s.set var="i18n_attribute_name">userprofile_<@s.property value="userProfile.typeCode" />_<@s.property value="#attribute.name" /></@s.set>
			<@s.set var="attribute_id">userprofile_<@s.property value="#attribute.name" /></@s.set>
			<@wp.fragment code="userprofile_is_IteratorAttribute" escapeXml=false /> 
		</@s.if>
	</@s.iterator>
	<p class="form-actions">
		<@wp.i18n key="userprofile_SAVE_PROFILE" var="userprofile_SAVE_PROFILE" />
		<@wpsf.submit useTabindexAutoIncrement=true value="%{#attr.userprofile_SAVE_PROFILE}" cssClass="btn btn-primary" />
	</p>
</form>
<#else>
	<p><@wp.i18n key="userprofile_PLEASE_LOGIN" /></p>
</#if>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_currentWithoutProfile', NULL, NULL, NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<h1><@wp.i18n key="userprofile_EDITPROFILE_TITLE" /></h1>
<p class="label label-info">
	<@wp.i18n key="userprofile_CURRENT_USER_WITHOUT_PROFILE" />
</p>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_front-CheckboxAttribute', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@wpsf.checkbox useTabindexAutoIncrement=true 
	name="%{#attributeTracer.getFormFieldName(#attribute)}" 
	id="%{attribute_id}" value="%{#attribute.value == true}"/>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_front-MonotextAttribute', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<@wpsf.textfield useTabindexAutoIncrement=true id="%{attribute_id}" 
	name="%{#attributeTracer.getFormFieldName(#attribute)}" value="%{#attribute.getTextForLang(#lang.code)}"
	maxlength="254" />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_front-LongtextAttribute', NULL, NULL, NULL, '<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<@wpsf.textarea useTabindexAutoIncrement=true cols="30" rows="5" id="%{attribute_id}" name="%{#attributeTracer.getFormFieldName(#attribute)}" value="%{#attribute.getTextForLang(#lang.code)}" />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_front-CompositeAttribute', NULL, NULL, NULL, '
<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<@s.set var="i18n_parent_attribute_name" value="#attribute.name" />
<@s.set var="masterCompositeAttributeTracer" value="#attributeTracer" />
<@s.set var="masterCompositeAttribute" value="#attribute" />
<@s.iterator value="#attribute.attributes" var="attribute">
	<@s.set var="attributeTracer" value="#masterCompositeAttributeTracer.getCompositeTracer(#masterCompositeAttribute)"></@s.set>
	<@s.set var="parentAttribute" value="#masterCompositeAttribute"></@s.set>
	<@s.set var="i18n_attribute_name">userprofile_ATTR<@s.property value="%{i18n_parent_attribute_name}" /><@s.property value="#attribute.name" /></@s.set>
	<@s.set var="attribute_id">userprofile_<@s.property value="%{i18n_parent_attribute_name}" /><@s.property value="#attribute.name" />_<@s.property value="#elementIndex" /></@s.set>
	<@wp.fragment code="userprofile_is_IteratorAttribute" escapeXml=false />
</@s.iterator>
<@s.set var="attributeTracer" value="#masterCompositeAttributeTracer" />
<@s.set var="attribute" value="#masterCompositeAttribute" />
<@s.set var="parentAttribute" value=""></@s.set>', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_front-EnumeratorAttribute', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<@wpsf.select useTabindexAutoIncrement=true
	name="%{#attributeTracer.getFormFieldName(#attribute)}"
	id="%{attribute_id}"  
	headerKey="" headerValue="" 
	list="#attribute.items" value="%{#attribute.getText()}" />', 1);
INSERT INTO guifragment (code, widgettypecode, plugincode, gui, defaultgui, locked) VALUES ('userprofile_is_front-EnumeratorMapAttribute', NULL, NULL, NULL, '<#assign s=JspTaglibs["/struts-tags"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<@wpsf.select useTabindexAutoIncrement=true
	name="%{#attributeTracer.getFormFieldName(#attribute)}"
	id="%{attribute_id}"  
	headerKey="" headerValue="" 
	list="#attribute.mapItems" value="%{#attribute.getText()}" listKey="key" listValue="value" />', 1);



INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10005, 'ANN', 'Full - Default', '<article>
<p class="text-right">$i18n.getLabel("ANN_FROM"): <time class="label" datetime="$content.StartDate.shortDate">$content.StartDate.getFormattedDate("EEEE dd MMMM yyyy")</time>&#32;$i18n.getLabel("ANN_TO"): <time class="label" datetime="$content.EndDate.shortDate">$content.EndDate.getFormattedDate("EEEE dd MMMM yyyy")</time></p>
<h1>$content.Title.text</h1>
#if ($content.Summary.text != "")
$content.Summary.text
#end
#if ($content.Documents && $content.Documents.size() > 0)
<h2>$i18n.getLabel("ANN_DOCUMENTS")</h2>
  <ul>
    #foreach ($attach in $content.Documents)
    <li><a href="$attach.attachPath">$attach.text</a></li>
    #end
  </ul>
#end
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10051, 'ANN', 'Lists - Default', '<article>
<p class="text-right">$i18n.getLabel("ANN_FROM"): <time class="label" datetime="$content.StartDate.shortDate">$content.StartDate.getFormattedDate("dd MMMM yyyy")</time>&#32;$i18n.getLabel("ANN_TO"): <time class="label" datetime="$content.EndDate.shortDate">$content.EndDate.getFormattedDate("dd MMMM yyyy")</time></p>
<h2>$content.Title.text</h2>
<p class="text-right"><a class="btn" href="$content.contentLink">$i18n.getLabel("ANN_READ_MORE")</a></p>
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10003, 'DLD', 'Full - Default', '<article>
<h1>$content.Title.text</a></h1>
#if($content.categories.size() >= 1)
<p><span class="label">$i18n.getLabel("DLD_CATEGORIES"):</span>
#foreach($categ in $content.categories)
<span class="label label-info">$categ.title</span>
#end
</p>
#end
#if ( $content.Picture.getImagePath("0") != "" )
<figure class="well well-small text-center">
  <img src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
#end
#if ( $content.LongDescr.text != "" )
$content.LongDescr.text
#end
<p><a class="btn btn-primary" href="$content.File.attachPath">$i18n.getLabel("DLD_DOWNLOAD")&nbsp;<i class="icon-download-alt icon-white"></i></a></p>
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10031, 'DLD', 'Lists - Default', '<article>
<h2>$content.Title.text</h2>
$content.ShortDescr.text
<p class="btn-group">
  <a class="btn" href="$content.contentLink">$i18n.getLabel("DLD_GET_INFO")&nbsp;<i class="icon-info-sign"></i></a>
  <a class="btn btn-primary" href="$content.File.attachPath">$i18n.getLabel("DLD_DOWNLOAD")&nbsp;<i class="icon-download-alt icon-white"></i></a>
</p>
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10001, 'CNG', 'Full - Default', '<article>
  <h1>$content.Title.text</h1>
#if ( $content.Picture.getImagePath("0") != "" )
<figure class="well well-small text-center">
  <img src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
#end
#if ( $content.MainBody.text != "" )
$content.MainBody.text
#end
#if ($content.Attaches.size()>0)
  <h2>$i18n.getLabel("CNG_ATTACHMENTS")</h2>
  <ul>
  #foreach ($item in $content.Attaches )
    <li><a href="$item.attachPath">$item.text</a></li>
  #end
  </ul>
#end
#if ($content.Links.size()>0)
  <h2>$i18n.getLabel("CNG_LINKS")</h2>
  <ul>
  #foreach ($item in $content.Links)
    <li><a href="$item.destination">$item.text</a></li>
  #end
  </ul>
#end
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10011, 'CNG', 'Lists - Default', '<article>
  <h2>$content.Title.text</h2>
#if ( $content.Abstract.text != "" )
  $content.Abstract.text
#end
<p class="text-right"><a class="btn" href="$content.contentLink">$i18n.getLabel("CNG_READ_MORE")</a></p>
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10012, 'CNG', 'Hero Unit + Picture', '<article>
  <div class="hero-unit span6">
  <h1>$content.Title.text</h1>
  #if ( $content.Abstract.text != "" )
  $content.Abstract.text
  #end
  #if ( $content.Links.size() != 0 )
  #set ( $link = $content.Links.get(0) )
  <p><a href="$link.destination" class="btn btn-primary btn-large">$link.text</a></p>
  #end
</div>
#if ( $content.Picture.getImagePath("0") != "" )
<div class="span4 well well-small">
<figure>
  <img src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption class="text-center"><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
</div>
#end
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10013, 'CNG', 'Lists - Picture', '<article>
  <h2>$content.Title.text</h2>
#if ( $content.Picture.getImagePath("0") != "" )
<figure>
  <img src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption class="text-center"><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
#end
<p class="text-right"><a class="btn" href="$content.contentLink">$i18n.getLabel("CNG_READ_MORE")</a></p>
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10002, 'NWS', 'Full - Default', '<article>
  <p class="text-right"><time class="label" datetime="$content.Date.shortDate">$content.Date.getFormattedDate("EEEE dd MMMM yyyy")</time></p>
  <h1>$content.Title.text</h1>
#if ( $content.Picture.getImagePath("0") != "" )
<figure class="well well-small text-center">
  <img src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
#end
#if ( $content.MainBody.text != "" )
$content.MainBody.text
#end
#if ($content.Attaches.size()>0)
  <h2>$i18n.getLabel("NWS_ATTACHMENTS")</h2>
  <ul>
  #foreach ($item in $content.Attaches )
    <li><a href="$item.attachPath">$item.text</a></li>
  #end
  </ul>
#end
#if ($content.Links.size()>0)
  <h2>$i18n.getLabel("NWS_LINKS")</h2>
  <ul>
  #foreach ($item in $content.Links)
    <li><a href="$item.destination">$item.text</a></li>
  #end
  </ul>
#end
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10004, 'RSL', 'Full - Default', '<article>
<p class="text-right"><time class="label" datetime="$content.Date.shortDate">$content.Number.value &ndash; $content.Date.getFormattedDate("yyyy.MM.dd")</time></p>
<h1>$content.Title.text</h1>
#if ($content.Summary.text != "")
$content.Summary.text
#end
#if ($content.Documents && $content.Documents.size() > 0)
<h2>$i18n.getLabel("RSL_DOCUMENTS")</h2>
  <ul>
    #foreach ($attach in $content.Documents)
    <li><a href="$attach.attachPath">$attach.text</a></li>
    #end
  </ul>
#end
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10041, 'RSL', 'Lists - Default', '<article>
<h2><a href="$content.contentLink">$content.Number.value &ndash; $content.Date.getFormattedDate("yyyy.MM.dd")</a></h2>
<p>$content.Title.text</p>
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10021, 'NWS', 'Lists - Default', '<article>
<p class="text-right"><time class="label" datetime="$content.Date.shortDate">$content.Date.getFormattedDate("EEEE dd MMMM yyyy")</time></p>
<h2>$content.Title.text</h2>
#if ( $content.Abstract.text != "" )
  $content.Abstract.text
#end
<p class="text-right"><a class="btn" href="$content.contentLink">$i18n.getLabel("NWS_READ_MORE")</a></p>
</article>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (10014, 'CNG', 'Full - Picture Left', '<article>
  <h1>$content.Title.text</h1>
<div class="row"><div class="span4">
#if ( $content.Picture.getImagePath("0") != "" )
<figure class="text-center">
  <img class="img-polaroid" src="$content.Picture.getImagePath("0")" alt="$content.Picture.text" />
  #if ( $content.Caption.text != "" )
  <figcaption><p class="margin-medium-all">$content.Caption.text</p></figcaption>
  #end
</figure>
#end
</div>
<div class="span8 margin-medium-top">
#if ( $content.MainBody.text != "" )
$content.MainBody.text
#end
  </div></div>
#if ($content.Attaches.size()>0)
  <h2>$i18n.getLabel("CNG_ATTACHMENTS")</h2>
  <ul>
  #foreach ($item in $content.Attaches )
    <li><a href="$item.attachPath">$item.text</a></li>
  #end
  </ul>
#end
#if ($content.Links.size()>0)
  <h2>$i18n.getLabel("CNG_LINKS")</h2>
  <ul>
  #foreach ($item in $content.Links)
    <li><a href="$item.destination">$item.text</a></li>
  #end
  </ul>
#end
</article>', NULL);


INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG55', 'CNG', 'Card Management', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG55" typecode="CNG" typedescr="Generic Content"><descr>Card Management</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Esempio Servizio Applicativo</text><text lang="en">Application Service Example</text></attribute><attribute name="Abstract" attributetype="Hypertext" /><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Di seguito viene presentato un semplice esempio di erogazione di un servizio applicativo (scritto secondo il &quot;Pattern di integrazione Servizi Applicativi di Entando&quot;) per la gestione dei &quot;<strong>Pass ZTL</strong>&quot;.</p>
<p>
	In front-end vengono presentate le funzioni di erogazione lista per i PASS attraverso l&#39;&#39;utilizzo di un custom tag (CardListTag) e il paginatore di sistema. Nel back-end &egrave; possibilie effettuare le semplici operazioni CRUD sugli oggetti.</p>
<p>
	Il servizio &egrave; fruibile anche attraverso l&#39;utilizzo della Widget &quot;Internal Servlet&quot;, <a href="#!P;old_town_traffic_pass_intservl!#">accedi al servizio</a>.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	This is a simple example of a service application (written under the &quot;Entando Services Integration Pattern&quot;) for the management of &quot;Limited Traffic Zone Pass&quot;.</p>
<p>
	The service is also available through the use of the &quot;<a href="#!P;old_town_traffic_pass_intservl!#">Internal Servlet</a>&quot; Widget.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20121206182503</created><lastModified>20121206183133</lastModified></content>
', '20121206182504', '20121206183133', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG55" typecode="CNG" typedescr="Generic Content"><descr>Card Management</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Esempio Servizio Applicativo</text><text lang="en">Application Service Example</text></attribute><attribute name="Abstract" attributetype="Hypertext" /><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Di seguito viene presentato un semplice esempio di erogazione di un servizio applicativo (scritto secondo il &quot;Pattern di integrazione Servizi Applicativi di Entando&quot;) per la gestione dei &quot;<strong>Pass ZTL</strong>&quot;.</p>
<p>
	In front-end vengono presentate le funzioni di erogazione lista per i PASS attraverso l&#39;&#39;utilizzo di un custom tag (CardListTag) e il paginatore di sistema. Nel back-end &egrave; possibilie effettuare le semplici operazioni CRUD sugli oggetti.</p>
<p>
	Il servizio &egrave; fruibile anche attraverso l&#39;utilizzo della Widget &quot;Internal Servlet&quot;, <a href="#!P;old_town_traffic_pass_intservl!#">accedi al servizio</a>.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	This is a simple example of a service application (written under the &quot;Entando Services Integration Pattern&quot;) for the management of &quot;Limited Traffic Zone Pass&quot;.</p>
<p>
	The service is also available through the use of the &quot;<a href="#!P;old_town_traffic_pass_intservl!#">Internal Servlet</a>&quot; Widget.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20121206182503</created><lastModified>20121206183133</lastModified></content>
', 'free', '3.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DLD54', 'DLD', 'Residence Self Certification Form', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DLD54" typecode="DLD" typedescr="Download Card"><descr>Residence Self Certification Form</descr><groups mainGroup="free" /><categories><category id="selcf_certifications" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Modulo Autocertificazione Residenza</text><text lang="en">Residence Self Certification Form</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="53" lang="en" /><text lang="it">Certificato di residenza</text><text lang="en">Residence Self Certification Form</text></attribute><attribute name="ShortDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per l&#39;autocertificazione di residenza messo a disposizione dal Comune di Entando Town, Ufficio Relazioni con il Pubblico.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Residence Self Certification Form</p>
]]></hypertext></attribute><attribute name="LongDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per l&#39;autocertificazione di residenza messo a disposizione dal Comune di Entando Town, Ufficio Relazioni con il Pubblico.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Residence Self Certification Form</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20121206172940</created><lastModified>20121206172940</lastModified></content>
', '20121206172940', '20121206172941', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DLD54" typecode="DLD" typedescr="Download Card"><descr>Residence Self Certification Form</descr><groups mainGroup="free" /><categories><category id="selcf_certifications" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Modulo Autocertificazione Residenza</text><text lang="en">Residence Self Certification Form</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="53" lang="en" /><text lang="it">Certificato di residenza</text><text lang="en">Residence Self Certification Form</text></attribute><attribute name="ShortDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per l&#39;autocertificazione di residenza messo a disposizione dal Comune di Entando Town, Ufficio Relazioni con il Pubblico.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Residence Self Certification Form</p>
]]></hypertext></attribute><attribute name="LongDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per l&#39;autocertificazione di residenza messo a disposizione dal Comune di Entando Town, Ufficio Relazioni con il Pubblico.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Residence Self Certification Form</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20121206172940</created><lastModified>20121206172940</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NWS34', 'NWS', 'Folk Music Festival', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS34" typecode="NWS" typedescr="News"><descr>Folk Music Festival</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20130720</date></attribute><attribute name="Title" attributetype="Text"><text lang="it">Festival della canzone popolare</text><text lang="en">Folk Music Festival</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Si inaugura la III edizione del &quot;Festival della canzone popolare&quot;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	It has been inaugurated the third edition of the &quot;Folk Music Festival&quot; to be held on July and August in the amphitheater of Entando Town.</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Si inaugura la III edizione del &quot;Festival della canzone popolare&quot; che si svolger&agrave; durante i mesi di febbraio ed marzo nell&#39;anfiteatro del lungo mare di Villamarina.</p>
<p>
	Al centro della manifestazione &egrave; la canzone popolare. L&#39;evento coinvolge <strong>artisti di fama nazionale</strong> e prevede un calendario ricco di incontri.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	It has been inaugurated the third edition of the &quot;Folk Music Festival&quot; to be held on July and August in the amphitheater of Entando Town.</p>
<p>
	At the center of the event is the folk song. The event involves artists and provides a calendar full of meetings.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018155653</created><lastModified>20130314130841</lastModified></content>
', '20121018155653', '20130314130841', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS34" typecode="NWS" typedescr="News"><descr>Folk Music Festival</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20130720</date></attribute><attribute name="Title" attributetype="Text"><text lang="it">Festival della canzone popolare</text><text lang="en">Folk Music Festival</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Si inaugura la III edizione del &quot;Festival della canzone popolare&quot;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	It has been inaugurated the third edition of the &quot;Folk Music Festival&quot; to be held on July and August in the amphitheater of Entando Town.</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Si inaugura la III edizione del &quot;Festival della canzone popolare&quot; che si svolger&agrave; durante i mesi di febbraio ed marzo nell&#39;anfiteatro del lungo mare di Villamarina.</p>
<p>
	Al centro della manifestazione &egrave; la canzone popolare. L&#39;evento coinvolge <strong>artisti di fama nazionale</strong> e prevede un calendario ricco di incontri.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	It has been inaugurated the third edition of the &quot;Folk Music Festival&quot; to be held on July and August in the amphitheater of Entando Town.</p>
<p>
	At the center of the event is the folk song. The event involves artists and provides a calendar full of meetings.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018155653</created><lastModified>20130314130841</lastModified></content>
', 'free', '2.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('RSL30', 'RSL', 'Resolution 20', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="RSL30" typecode="RSL" typedescr="Resolution"><descr>Resolution 20</descr><groups mainGroup="free" /><categories><category id="resolutions_council" /></categories><attributes><attribute name="Number" attributetype="Number"><number>20</number></attribute><attribute name="Date" attributetype="Date"><date>20131004</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Esame ed approvazione del Conto Consuntivo 2013</text><text lang="en">Examination and approval of Entando Town Balance Sheet 2013</text></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Esame ed approvazione del Conto Consuntivo 2013</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Examination and approval of Entando Town Balance Sheet 2013</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="29" lang="en" /><text lang="it">Delibera del Consiglio Comunale numero 20 del 13 Luglio 2012</text><text lang="en">Resolution 20</text></attribute></list></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018153618</created><lastModified>20130314131336</lastModified></content>
', '20121018153618', '20130314131336', '<?xml version="1.0" encoding="UTF-8"?>
<content id="RSL30" typecode="RSL" typedescr="Resolution"><descr>Resolution 20</descr><groups mainGroup="free" /><categories><category id="resolutions_council" /></categories><attributes><attribute name="Number" attributetype="Number"><number>20</number></attribute><attribute name="Date" attributetype="Date"><date>20131004</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Esame ed approvazione del Conto Consuntivo 2013</text><text lang="en">Examination and approval of Entando Town Balance Sheet 2013</text></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Esame ed approvazione del Conto Consuntivo 2013</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Examination and approval of Entando Town Balance Sheet 2013</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="29" lang="en" /><text lang="it">Delibera del Consiglio Comunale numero 20 del 13 Luglio 2012</text><text lang="en">Resolution 20</text></attribute></list></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018153618</created><lastModified>20130314131336</lastModified></content>
', 'free', '2.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG8', 'CNG', 'Sample - Hero Unit', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG8" typecode="CNG" typedescr="Generic Content"><descr>Sample - Hero Unit</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Hello, world!</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Learn more »</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20121010154909</created><lastModified>20121010154909</lastModified></content>
', '20121010154909', '20121010154909', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG8" typecode="CNG" typedescr="Generic Content"><descr>Sample - Hero Unit</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Hello, world!</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Learn more »</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20121010154909</created><lastModified>20121010154909</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG9', 'CNG', 'Sample - Lorem Ipsum', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG9" typecode="CNG" typedescr="Generic Content"><descr>Sample - Lorem Ipsum</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Heading</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.org/</urldest></link><text lang="en">Entando.org</text></attribute><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.github.com/entando/</urldest></link><text lang="en">Entando @GitHub</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20121010154909</created><lastModified>20121010154909</lastModified></content>
', '20121010154909', '20121010154909', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG9" typecode="CNG" typedescr="Generic Content"><descr>Sample - Lorem Ipsum</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Heading</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.org/</urldest></link><text lang="en">Entando.org</text></attribute><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.github.com/entando/</urldest></link><text lang="en">Entando @GitHub</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20121010154909</created><lastModified>20121010154909</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NWS37', 'NWS', 'Ground Rent Contribution', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS37" typecode="NWS" typedescr="News"><descr>Ground Rent Contribution</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20130327</date></attribute><attribute name="Title" attributetype="Text"><text lang="it">Contributo canone di locazione 2013</text><text lang="en">Ground Rent Contribution</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	&Egrave; stato pubblicato l&#39;avviso pubblico per l&rsquo;attribuzione del contributo ad integrazione dei canoni di locazione 2013.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	It has been published the public notice for the allocation of Ground Rent Contribution 2013.</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	&Egrave; stato pubblicato l&#39;avviso pubblico per la presentazione delle domande per l&rsquo;<strong>attribuzione del contributo ad integrazione dei canoni di locazione</strong> relativo all&rsquo;annualit&agrave; 2013, di cui all&rsquo;art. 11 L. 431/98 per chi sia residente nel Comune di Villamarina.</p>
<p>
	&Egrave; possibile scaricare i moduli per la domanda, e il relativo Bando in questa sezione o ritirarli presso gli uffici del Comune di Villamarina.</p>
<p>
	Le relative domande per accedere al bando devono essere presentate o spedite all&#39;Ufficio Protocollo entro il <strong>giorno 11.12.2013</strong>.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	It has been published the public notice for the allocation of <strong>Ground Rent Contribution 2013</strong>.</p>
<p>
	You can download the application forms and the notice in this section.</p>
<p>
	The applications to access the notice must be submitted to Protocol Office until <strong>11/12/2013</strong>.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach"><attribute name="Attaches" attributetype="Attach"><resource resourcetype="Attach" id="36" lang="en" /><text lang="it">Modulo domanda Locazione 2011</text><text lang="en">Application Form</text></attribute></list></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20121018160159</created><lastModified>20130314135757</lastModified></content>
', '20121018160200', '20130314135757', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS37" typecode="NWS" typedescr="News"><descr>Ground Rent Contribution</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20130327</date></attribute><attribute name="Title" attributetype="Text"><text lang="it">Contributo canone di locazione 2013</text><text lang="en">Ground Rent Contribution</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	&Egrave; stato pubblicato l&#39;avviso pubblico per l&rsquo;attribuzione del contributo ad integrazione dei canoni di locazione 2013.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	It has been published the public notice for the allocation of Ground Rent Contribution 2013.</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	&Egrave; stato pubblicato l&#39;avviso pubblico per la presentazione delle domande per l&rsquo;<strong>attribuzione del contributo ad integrazione dei canoni di locazione</strong> relativo all&rsquo;annualit&agrave; 2013, di cui all&rsquo;art. 11 L. 431/98 per chi sia residente nel Comune di Villamarina.</p>
<p>
	&Egrave; possibile scaricare i moduli per la domanda, e il relativo Bando in questa sezione o ritirarli presso gli uffici del Comune di Villamarina.</p>
<p>
	Le relative domande per accedere al bando devono essere presentate o spedite all&#39;Ufficio Protocollo entro il <strong>giorno 11.12.2013</strong>.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	It has been published the public notice for the allocation of <strong>Ground Rent Contribution 2013</strong>.</p>
<p>
	You can download the application forms and the notice in this section.</p>
<p>
	The applications to access the notice must be submitted to Protocol Office until <strong>11/12/2013</strong>.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach"><attribute name="Attaches" attributetype="Attach"><resource resourcetype="Attach" id="36" lang="en" /><text lang="it">Modulo domanda Locazione 2011</text><text lang="en">Application Form</text></attribute></list></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20121018160159</created><lastModified>20130314135757</lastModified></content>
', 'free', '3.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG41', 'CNG', 'Mayor', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG41" typecode="CNG" typedescr="Generic Content"><descr>Mayor</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Sindaco</text><text lang="en">Mayor</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Il <strong>Sindaco</strong> &egrave; eletto direttamente dai cittadini ed &egrave; membro del <strong>Consiglio Comunale</strong>. &Egrave; capo dell&rsquo;amministrazione, ha la rappresentanza legale dell&rsquo;ente ed &egrave;, nel contempo, Ufficiale di Governo per i servizi di competenza statale.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Mayor is a modern title used in many countries for the highest ranking officer in a municipal government.</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Il <strong>Sindaco</strong> &egrave; eletto direttamente dai cittadini ed &egrave; membro del <strong>Consiglio Comunale</strong>. &Egrave; capo dell&rsquo;amministrazione, ha la rappresentanza legale dell&rsquo;ente ed &egrave;, nel contempo, Ufficiale di Governo per i servizi di competenza statale.</p>
<p>
	Nomina gli <strong>Assessori</strong>, convoca e presiede la <strong>Giunta comunale</strong>, assicurandone unit&agrave; di indirizzo; sovrintende al funzionamento degli uffici e dei servizi.</p>
<p>
	Al Sindaco competono la nomina del segretario generale, del direttore generale e dei direttori di settore.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	<strong>Mayor</strong> is a modern title used in many countries for the highest ranking officer in a municipal government.</p>
<p>
	The mayor is an elected politician who serves as chief executive officer and/or ceremonial official of municipalities.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image"><resource resourcetype="Image" id="42" lang="en" /><text lang="en">Entando Town Mayor</text></attribute><attribute name="Caption" attributetype="Text"><text lang="en">Entando Town Mayor</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>5.0</version><lastEditor>admin</lastEditor><created>20121205162345</created><lastModified>20130314121315</lastModified></content>
', '20121205162345', '20130314121315', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG41" typecode="CNG" typedescr="Generic Content"><descr>Mayor</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Sindaco</text><text lang="en">Mayor</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Il <strong>Sindaco</strong> &egrave; eletto direttamente dai cittadini ed &egrave; membro del <strong>Consiglio Comunale</strong>. &Egrave; capo dell&rsquo;amministrazione, ha la rappresentanza legale dell&rsquo;ente ed &egrave;, nel contempo, Ufficiale di Governo per i servizi di competenza statale.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Mayor is a modern title used in many countries for the highest ranking officer in a municipal government.</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Il <strong>Sindaco</strong> &egrave; eletto direttamente dai cittadini ed &egrave; membro del <strong>Consiglio Comunale</strong>. &Egrave; capo dell&rsquo;amministrazione, ha la rappresentanza legale dell&rsquo;ente ed &egrave;, nel contempo, Ufficiale di Governo per i servizi di competenza statale.</p>
<p>
	Nomina gli <strong>Assessori</strong>, convoca e presiede la <strong>Giunta comunale</strong>, assicurandone unit&agrave; di indirizzo; sovrintende al funzionamento degli uffici e dei servizi.</p>
<p>
	Al Sindaco competono la nomina del segretario generale, del direttore generale e dei direttori di settore.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	<strong>Mayor</strong> is a modern title used in many countries for the highest ranking officer in a municipal government.</p>
<p>
	The mayor is an elected politician who serves as chief executive officer and/or ceremonial official of municipalities.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image"><resource resourcetype="Image" id="42" lang="en" /><text lang="en">Entando Town Mayor</text></attribute><attribute name="Caption" attributetype="Text"><text lang="en">Entando Town Mayor</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>5.0</version><lastEditor>admin</lastEditor><created>20121205162345</created><lastModified>20130314121315</lastModified></content>
', 'free', '5.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('ANN20', 'ANN', 'Announcement for Nautical Institute special maintenance', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN20" typecode="ANN" typedescr="Announcement"><descr>Announcement for Nautical Institute special maintenance</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="it">Bando di gara per l''esecuzione dei Lavori per la manutenzione dell''Istituto Nautico</text><text lang="en">Announcement for Nautical Institute special maintenance</text></attribute><attribute name="StartDate" attributetype="Date"><date>20130303</date></attribute><attribute name="EndDate" attributetype="Date"><date>20131114</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Bando di gara per l&#39;esecuzione dei &quot;Lavori per la manutenzione straordinaria dell&#39;Istituto Nautico, per la realizzazione di laboratorio informatico&quot;.</p>
<p>
	Appalto n. 3 anno 2009 - Procedura Aperta</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>Announcement for Nautical Institute special maintenance. Realization of a computer lab on the first floor of the institute.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="19" lang="en" /><text lang="it">Bando</text><text lang="en">Announcement for maintenance Nautical Institute</text></attribute></list></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20121017110305</created><lastModified>20121017110305</lastModified></content>
', '20121017110305', '20121017110305', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN20" typecode="ANN" typedescr="Announcement"><descr>Announcement for Nautical Institute special maintenance</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="it">Bando di gara per l''esecuzione dei Lavori per la manutenzione dell''Istituto Nautico</text><text lang="en">Announcement for Nautical Institute special maintenance</text></attribute><attribute name="StartDate" attributetype="Date"><date>20130303</date></attribute><attribute name="EndDate" attributetype="Date"><date>20131114</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Bando di gara per l&#39;esecuzione dei &quot;Lavori per la manutenzione straordinaria dell&#39;Istituto Nautico, per la realizzazione di laboratorio informatico&quot;.</p>
<p>
	Appalto n. 3 anno 2009 - Procedura Aperta</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>Announcement for Nautical Institute special maintenance. Realization of a computer lab on the first floor of the institute.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="19" lang="en" /><text lang="it">Bando</text><text lang="en">Announcement for maintenance Nautical Institute</text></attribute></list></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20121017110305</created><lastModified>20121017110305</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('ANN22', 'ANN', 'Announcement for supply of stationery and accessories', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN22" typecode="ANN" typedescr="Announcement"><descr>Announcement for supply of stationery and accessories</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="it">Bando di gara per affidamento fornitura di cancelleria e accessori</text><text lang="en">Announcement for supply of stationery and accessories</text></attribute><attribute name="StartDate" attributetype="Date"><date>20130228</date></attribute><attribute name="EndDate" attributetype="Date"><date>20131027</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Affidamento della fornitura di cancelleria e accessori per stampanti, fotocopiatori e fax ad uso degli uffici e servizi comunali.</p>
<p>
	Appalto n. 4 anno 2009 - Procedura Aperta</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Announcements for the supply of stationery and accessories for printers, copiers and fax machines to use in Villamarina offices and services.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="21" lang="en" /><text lang="it">Scarica il bando</text><text lang="en">Announcements for stationery supply</text></attribute></list></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20121017110649</created><lastModified>20121017110649</lastModified></content>
', '20121017110649', '20121017110649', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN22" typecode="ANN" typedescr="Announcement"><descr>Announcement for supply of stationery and accessories</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="it">Bando di gara per affidamento fornitura di cancelleria e accessori</text><text lang="en">Announcement for supply of stationery and accessories</text></attribute><attribute name="StartDate" attributetype="Date"><date>20130228</date></attribute><attribute name="EndDate" attributetype="Date"><date>20131027</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Affidamento della fornitura di cancelleria e accessori per stampanti, fotocopiatori e fax ad uso degli uffici e servizi comunali.</p>
<p>
	Appalto n. 4 anno 2009 - Procedura Aperta</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Announcements for the supply of stationery and accessories for printers, copiers and fax machines to use in Villamarina offices and services.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="21" lang="en" /><text lang="it">Scarica il bando</text><text lang="en">Announcements for stationery supply</text></attribute></list></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20121017110649</created><lastModified>20121017110649</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('RSL26', 'RSL', 'Resolution 15', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="RSL26" typecode="RSL" typedescr="Resolution"><descr>Resolution 15</descr><groups mainGroup="free" /><categories><category id="resolutions_council" /></categories><attributes><attribute name="Number" attributetype="Number"><number>15</number></attribute><attribute name="Date" attributetype="Date"><date>20130716</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Approvazione programma di incarichi di consulenza autonoma nel settore turistico</text><text lang="en">Approval for charge of consultant program in tourism sector for 2013</text></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Approvazione programma di&nbsp; incarichi di consulenza autonoma nel settore turistico &ndash; lavori pubblici &ndash; servizi tecnologici, per l&#39;anno 2013.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Approval for charge of consultant program in tourism sector for 2013.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="25" lang="en" /><text lang="it">Delibera del Consiglio Comunale numero 15 del 09 Luglio 2011</text><text lang="en">Resolution 15</text></attribute></list></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018153131</created><lastModified>20130314131754</lastModified></content>
', '20121018153131', '20130314131754', '<?xml version="1.0" encoding="UTF-8"?>
<content id="RSL26" typecode="RSL" typedescr="Resolution"><descr>Resolution 15</descr><groups mainGroup="free" /><categories><category id="resolutions_council" /></categories><attributes><attribute name="Number" attributetype="Number"><number>15</number></attribute><attribute name="Date" attributetype="Date"><date>20130716</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Approvazione programma di incarichi di consulenza autonoma nel settore turistico</text><text lang="en">Approval for charge of consultant program in tourism sector for 2013</text></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Approvazione programma di&nbsp; incarichi di consulenza autonoma nel settore turistico &ndash; lavori pubblici &ndash; servizi tecnologici, per l&#39;anno 2013.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Approval for charge of consultant program in tourism sector for 2013.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="25" lang="en" /><text lang="it">Delibera del Consiglio Comunale numero 15 del 09 Luglio 2011</text><text lang="en">Resolution 15</text></attribute></list></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018153131</created><lastModified>20130314131754</lastModified></content>
', 'free', '2.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('RSL28', 'RSL', 'Resolution 120', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="RSL28" typecode="RSL" typedescr="Resolution"><descr>Resolution 120</descr><groups mainGroup="free" /><categories><category id="resolutions_giunta" /><category id="documents" /></categories><attributes><attribute name="Number" attributetype="Number"><number>120</number></attribute><attribute name="Date" attributetype="Date"><date>20130701</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Organizzazione della manifestazione "Festival della canzone popolare?? III Edizione</text><text lang="en">Organization of the event "Folk Music Festival" III Edition</text></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Organizzazione della manifestazione &quot;Festival della canzone popolare&rdquo; III Edizione che si terr&agrave; a Villamarina&nbsp; nei mesi di Agosto e Settembre 2013.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Organization of the event &quot;Folk Music Festival&quot; III edition to be held in Villamarina in the months of August and September 2013.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="27" lang="en" /><text lang="it">Delibera della Giunta Comunale numero 120 dell'' 8 Luglio 2013</text><text lang="en">Resolution 120</text></attribute></list></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018153416</created><lastModified>20130314132121</lastModified></content>
', '20121018153416', '20130314132121', '<?xml version="1.0" encoding="UTF-8"?>
<content id="RSL28" typecode="RSL" typedescr="Resolution"><descr>Resolution 120</descr><groups mainGroup="free" /><categories><category id="resolutions_giunta" /><category id="documents" /></categories><attributes><attribute name="Number" attributetype="Number"><number>120</number></attribute><attribute name="Date" attributetype="Date"><date>20130701</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Organizzazione della manifestazione "Festival della canzone popolare?? III Edizione</text><text lang="en">Organization of the event "Folk Music Festival" III Edition</text></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Organizzazione della manifestazione &quot;Festival della canzone popolare&rdquo; III Edizione che si terr&agrave; a Villamarina&nbsp; nei mesi di Agosto e Settembre 2013.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Organization of the event &quot;Folk Music Festival&quot; III edition to be held in Villamarina in the months of August and September 2013.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="27" lang="en" /><text lang="it">Delibera della Giunta Comunale numero 120 dell'' 8 Luglio 2013</text><text lang="en">Resolution 120</text></attribute></list></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018153416</created><lastModified>20130314132121</lastModified></content>
', 'free', '2.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NWS39', 'NWS', 'Online the Portal of Entando Town', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS39" typecode="NWS" typedescr="News"><descr>Online the Portal of Entando Town</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20130329</date></attribute><attribute name="Title" attributetype="Text"><text lang="it">Online il Portale del Comune di Entando Town</text><text lang="en">Online the Portal of Entando Town</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Online il Portale del Comune di Entando Town realizzato con la piattaforma <strong>Entando</strong>.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Online the Portal of Entando Town, built with the <strong>Entando - Access. Build. Connect.</strong>.</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Online il Portale del Comune di Entando Town realizzato con la piattaforma <strong>Entando</strong>.</p>
<p>
	Nel portale istituzionale &egrave; possibile trovare tutte le informazioni relative al comune e alle sue attivit&agrave;: gli uffici, delibere e determine, bandi e concorsi e tanto altro.</p>
<p>
	Il nuovo portale &egrave; stato realizzato per dare una risposta all&#39;altezza delle aspettative dei cittadini che ogni giorno si collegano ad internet per avere notizie ed informazioni aggiornate sull&#39;amministrazione comunale.</p>
<p>
	Il sito si presenta con una veste grafica <strong>minimalista</strong> e molto leggera proprio per questo <strong>accattivante</strong> ed <strong>efficace</strong>.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Online the Portal of Entando Town, built with the <strong>Entando - Access. Build. Connect.</strong>.</p>
<p>
	In the institutional portal you can find all the information relating to the municipality and its activities: the offices, decisions and results.</p>
<p>
	The new portal is designed to respond to the expectations of citizens who every day are connected to find news and updated information.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image"><resource resourcetype="Image" id="38" lang="en" /><text lang="it">Una spiaggia, e il mare smeraldino della Sardegna</text><text lang="en">A beach, the emerald sea of Sardinia</text></attribute><attribute name="Caption" attributetype="Text"><text lang="it">Uno scorcio incantevole di Entando Town</text><text lang="en">A beautiful view of Entando Town</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018160819</created><lastModified>20130314130734</lastModified></content>
', '20121018160819', '20130314130734', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS39" typecode="NWS" typedescr="News"><descr>Online the Portal of Entando Town</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20130329</date></attribute><attribute name="Title" attributetype="Text"><text lang="it">Online il Portale del Comune di Entando Town</text><text lang="en">Online the Portal of Entando Town</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Online il Portale del Comune di Entando Town realizzato con la piattaforma <strong>Entando</strong>.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Online the Portal of Entando Town, built with the <strong>Entando - Access. Build. Connect.</strong>.</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Online il Portale del Comune di Entando Town realizzato con la piattaforma <strong>Entando</strong>.</p>
<p>
	Nel portale istituzionale &egrave; possibile trovare tutte le informazioni relative al comune e alle sue attivit&agrave;: gli uffici, delibere e determine, bandi e concorsi e tanto altro.</p>
<p>
	Il nuovo portale &egrave; stato realizzato per dare una risposta all&#39;altezza delle aspettative dei cittadini che ogni giorno si collegano ad internet per avere notizie ed informazioni aggiornate sull&#39;amministrazione comunale.</p>
<p>
	Il sito si presenta con una veste grafica <strong>minimalista</strong> e molto leggera proprio per questo <strong>accattivante</strong> ed <strong>efficace</strong>.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Online the Portal of Entando Town, built with the <strong>Entando - Access. Build. Connect.</strong>.</p>
<p>
	In the institutional portal you can find all the information relating to the municipality and its activities: the offices, decisions and results.</p>
<p>
	The new portal is designed to respond to the expectations of citizens who every day are connected to find news and updated information.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image"><resource resourcetype="Image" id="38" lang="en" /><text lang="it">Una spiaggia, e il mare smeraldino della Sardegna</text><text lang="en">A beach, the emerald sea of Sardinia</text></attribute><attribute name="Caption" attributetype="Text"><text lang="it">Uno scorcio incantevole di Entando Town</text><text lang="en">A beautiful view of Entando Town</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018160819</created><lastModified>20130314130734</lastModified></content>
', 'free', '2.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG43', 'CNG', 'Council', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG43" typecode="CNG" typedescr="Generic Content"><descr>Council</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Giunta Comunale</text><text lang="en">Council</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	La Giunta del Comune &egrave; l&#39;organo esecutivo composto dal Sindaco, che ne &egrave; anche presidente, e da un numero di assessori, stabilito dallo statuto comunale, che non deve essere superiore a un terzo (arrotondato) del numero dei consiglieri comunali (computando a tale fine anche il sindaco) e comunque non superiore a sedici (art. 47 del d. lgs. 267/2000).</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	A <strong>Council</strong> is a type of committee that is usually intended to lead or govern. Councils often serve several different functions.</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	La <strong>Giunta comunale</strong> &egrave; l&#39;organo esecutivo composto dal Sindaco, che ne &egrave; anche presidente, e da un numero di assessori, stabilito dallo statuto comunale, che non deve essere superiore a un terzo (arrotondato) del numero dei consiglieri comunali (computando a tale fine anche il sindaco) e comunque non superiore a sedici (art. 47 del d. lgs. 267/2000).</p>
<p>
	La Giunta comunale &egrave; responsabile dell&rsquo;<strong>attuazione delle linee programmatiche e degli indirizzi generali</strong> definiti nel piano di mandato, ossia nel documento con cui il Sindaco, all&rsquo;inizio del suo incarico quinquennale, presenta al Consiglio le linee programmatiche relative alle azioni e ai progetti da realizzare.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	A <strong>Council</strong> is a type of committee that is usually intended to lead or govern. Councils often serve several different functions.</p>
<p>
	A municipality is often referred to as simply the Council without any further attempt by the speaker at making a size or scale designation, as in Council house. It is assumed the listener will already know the specific meaning of the word without further guidance.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image"><resource resourcetype="Image" id="73" lang="en" /><text lang="en">Entando Town Council</text></attribute><attribute name="Caption" attributetype="Text"><text lang="en">Entando Town Council</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20121205170248</created><lastModified>20130314150506</lastModified></content>
', '20121205170248', '20130314150506', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG43" typecode="CNG" typedescr="Generic Content"><descr>Council</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Giunta Comunale</text><text lang="en">Council</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	La Giunta del Comune &egrave; l&#39;organo esecutivo composto dal Sindaco, che ne &egrave; anche presidente, e da un numero di assessori, stabilito dallo statuto comunale, che non deve essere superiore a un terzo (arrotondato) del numero dei consiglieri comunali (computando a tale fine anche il sindaco) e comunque non superiore a sedici (art. 47 del d. lgs. 267/2000).</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	A <strong>Council</strong> is a type of committee that is usually intended to lead or govern. Councils often serve several different functions.</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	La <strong>Giunta comunale</strong> &egrave; l&#39;organo esecutivo composto dal Sindaco, che ne &egrave; anche presidente, e da un numero di assessori, stabilito dallo statuto comunale, che non deve essere superiore a un terzo (arrotondato) del numero dei consiglieri comunali (computando a tale fine anche il sindaco) e comunque non superiore a sedici (art. 47 del d. lgs. 267/2000).</p>
<p>
	La Giunta comunale &egrave; responsabile dell&rsquo;<strong>attuazione delle linee programmatiche e degli indirizzi generali</strong> definiti nel piano di mandato, ossia nel documento con cui il Sindaco, all&rsquo;inizio del suo incarico quinquennale, presenta al Consiglio le linee programmatiche relative alle azioni e ai progetti da realizzare.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	A <strong>Council</strong> is a type of committee that is usually intended to lead or govern. Councils often serve several different functions.</p>
<p>
	A municipality is often referred to as simply the Council without any further attempt by the speaker at making a size or scale designation, as in Council house. It is assumed the listener will already know the specific meaning of the word without further guidance.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image"><resource resourcetype="Image" id="73" lang="en" /><text lang="en">Entando Town Council</text></attribute><attribute name="Caption" attributetype="Text"><text lang="en">Entando Town Council</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20121205170248</created><lastModified>20130314150506</lastModified></content>
', 'free', '3.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG44', 'CNG', 'Municipal Council', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG44" typecode="CNG" typedescr="Generic Content"><descr>Municipal Council</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Consiglio Comunale</text><text lang="en">Municipal Council</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Il <strong>Consiglio Comunale</strong>, secondo il D.Lgs. 267/2000 (Testo unico delle leggi sull&#39;ordinamento degli enti locali) &egrave; l&#39;assemblea pubblica rappresentativa di ogni Comune, ente locale previsto dall&#39;art. 114 della Costituzione della Repubblica Italiana.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	A <strong>Municipal Council</strong> is the local government of Entando Town.</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Il <strong>Consiglio Comunale</strong>, secondo il D.Lgs. 267/2000 (Testo unico delle leggi sull&#39;ordinamento degli enti locali) &egrave; l&#39;assemblea pubblica rappresentativa di ogni Comune, ente locale previsto dall&#39;art. 114 della <strong>Costituzione della Repubblica Italiana</strong>.</p>
<p>
	Il Consiglio Comunale &egrave; composto dal Sindaco e da un numero variabile di consiglieri, in funzione del numero di abitanti del Comune.</p>
<p>
	Il Consiglio comunale viene eletto direttamente dai <strong>cittadini</strong>, contestualmente all&rsquo;elezione del Sindaco, e resta in carica <strong>cinque anni</strong>.</p>
<p>
	Il Consiglio Comunale &egrave; organo di indirizzo e di controllo <strong>politico-amministrativo</strong> del comune. La sua competenza si limita ad atti fondamentali indicati dalla legge: Statuto dell&#39;ente e delle aziende speciali, programmi, piani finanziari, bilanci, conti consuntivi, convenzioni tra enti locali, costituzione di forme associative, etc.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	A <strong>Municipal Council</strong> is the local government of Entando Town. Specifically the term can refer to the institutions of various countries that can be translated by this term.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image"><resource resourcetype="Image" id="17" lang="en" /><text lang="en">Municipal Council</text></attribute><attribute name="Caption" attributetype="Text"><text lang="en">Municipal Council</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20121205171127</created><lastModified>20130314150712</lastModified></content>
', '20121205171128', '20130314150712', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG44" typecode="CNG" typedescr="Generic Content"><descr>Municipal Council</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Consiglio Comunale</text><text lang="en">Municipal Council</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Il <strong>Consiglio Comunale</strong>, secondo il D.Lgs. 267/2000 (Testo unico delle leggi sull&#39;ordinamento degli enti locali) &egrave; l&#39;assemblea pubblica rappresentativa di ogni Comune, ente locale previsto dall&#39;art. 114 della Costituzione della Repubblica Italiana.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	A <strong>Municipal Council</strong> is the local government of Entando Town.</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Il <strong>Consiglio Comunale</strong>, secondo il D.Lgs. 267/2000 (Testo unico delle leggi sull&#39;ordinamento degli enti locali) &egrave; l&#39;assemblea pubblica rappresentativa di ogni Comune, ente locale previsto dall&#39;art. 114 della <strong>Costituzione della Repubblica Italiana</strong>.</p>
<p>
	Il Consiglio Comunale &egrave; composto dal Sindaco e da un numero variabile di consiglieri, in funzione del numero di abitanti del Comune.</p>
<p>
	Il Consiglio comunale viene eletto direttamente dai <strong>cittadini</strong>, contestualmente all&rsquo;elezione del Sindaco, e resta in carica <strong>cinque anni</strong>.</p>
<p>
	Il Consiglio Comunale &egrave; organo di indirizzo e di controllo <strong>politico-amministrativo</strong> del comune. La sua competenza si limita ad atti fondamentali indicati dalla legge: Statuto dell&#39;ente e delle aziende speciali, programmi, piani finanziari, bilanci, conti consuntivi, convenzioni tra enti locali, costituzione di forme associative, etc.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	A <strong>Municipal Council</strong> is the local government of Entando Town. Specifically the term can refer to the institutions of various countries that can be translated by this term.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image"><resource resourcetype="Image" id="17" lang="en" /><text lang="en">Municipal Council</text></attribute><attribute name="Caption" attributetype="Text"><text lang="en">Municipal Council</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20121205171127</created><lastModified>20130314150712</lastModified></content>
', 'free', '3.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DLD48', 'DLD', 'Registry - Request Identity Card valid for foreign travel', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DLD48" typecode="DLD" typedescr="Download Card"><descr>Registry - Request Identity Card valid for foreign travel</descr><groups mainGroup="free" /><categories><category id="documents" /><category id="citizen_registry" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Anagrafe - Richiesta Carta Identità valida per espatrio</text><text lang="en">Registry - Request Identity Card valid for foreign travel</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="47" lang="en" /><text lang="it">Modulo richiesta Carta Identità valida per espatrio</text><text lang="en">Identity Card Request Form</text></attribute><attribute name="ShortDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per la richiesta della carta identit&agrave; valida per espatrio.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Request Form for identity card valid for foreign travel.</p>
]]></hypertext></attribute><attribute name="LongDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per la richiesta della carta identit&agrave; valida per espatrio.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Request Form for identity card valid for foreign travel.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20121205180826</created><lastModified>20121205180826</lastModified></content>
', '20121205180827', '20121205180827', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DLD48" typecode="DLD" typedescr="Download Card"><descr>Registry - Request Identity Card valid for foreign travel</descr><groups mainGroup="free" /><categories><category id="documents" /><category id="citizen_registry" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Anagrafe - Richiesta Carta Identità valida per espatrio</text><text lang="en">Registry - Request Identity Card valid for foreign travel</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="47" lang="en" /><text lang="it">Modulo richiesta Carta Identità valida per espatrio</text><text lang="en">Identity Card Request Form</text></attribute><attribute name="ShortDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per la richiesta della carta identit&agrave; valida per espatrio.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Request Form for identity card valid for foreign travel.</p>
]]></hypertext></attribute><attribute name="LongDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per la richiesta della carta identit&agrave; valida per espatrio.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Request Form for identity card valid for foreign travel.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20121205180826</created><lastModified>20121205180826</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DLD50', 'DLD', 'Tax - Request ICI refund', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DLD50" typecode="DLD" typedescr="Download Card"><descr>Tax - Request ICI refund</descr><groups mainGroup="free" /><categories><category id="documents" /><category id="taxes" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Tributi - Richiesta rimborso ICI</text><text lang="en">Tax - Request ICI refund</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="49" lang="en" /><text lang="it">Modulo richiesta rimborso ICI</text><text lang="en">Request Form</text></attribute><attribute name="ShortDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per la richiesta del rimborso ICI</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Request Form for ICI refund.</p>
]]></hypertext></attribute><attribute name="LongDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per la richiesta del rimborso ICI</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Request Form for ICI refund.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20121205181156</created><lastModified>20121205181156</lastModified></content>
', '20121205181157', '20121205181157', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DLD50" typecode="DLD" typedescr="Download Card"><descr>Tax - Request ICI refund</descr><groups mainGroup="free" /><categories><category id="documents" /><category id="taxes" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Tributi - Richiesta rimborso ICI</text><text lang="en">Tax - Request ICI refund</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="49" lang="en" /><text lang="it">Modulo richiesta rimborso ICI</text><text lang="en">Request Form</text></attribute><attribute name="ShortDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per la richiesta del rimborso ICI</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Request Form for ICI refund.</p>
]]></hypertext></attribute><attribute name="LongDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per la richiesta del rimborso ICI</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Request Form for ICI refund.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20121205181156</created><lastModified>20121205181156</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DLD52', 'DLD', 'Civil Status Self Certification Form', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DLD52" typecode="DLD" typedescr="Download Card"><descr>Civil Status Self Certification Form</descr><groups mainGroup="free" /><categories><category id="selcf_certifications" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Modulo Autocertificazione Stato Civile</text><text lang="en">Civil Status Self Certification Form</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="51" lang="en" /><text lang="it">Modulo Certificato Stato Civile</text><text lang="en">Civil Status Self Certification Form</text></attribute><attribute name="ShortDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per l&#39;autocertificazione dello stato civile messo a disposizione dal Comune di Entando Town, Ufficio Relazioni con il Pubblico.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Civil Status Self Certification Form</p>
]]></hypertext></attribute><attribute name="LongDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per l&#39;autocertificazione dello stato civile messo a disposizione dal Comune di Entando Town, Ufficio Relazioni con il Pubblico.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Civil Status Self Certification Form</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20121206172628</created><lastModified>20121206172628</lastModified></content>
', '20121206172628', '20121206172628', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DLD52" typecode="DLD" typedescr="Download Card"><descr>Civil Status Self Certification Form</descr><groups mainGroup="free" /><categories><category id="selcf_certifications" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Modulo Autocertificazione Stato Civile</text><text lang="en">Civil Status Self Certification Form</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="51" lang="en" /><text lang="it">Modulo Certificato Stato Civile</text><text lang="en">Civil Status Self Certification Form</text></attribute><attribute name="ShortDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per l&#39;autocertificazione dello stato civile messo a disposizione dal Comune di Entando Town, Ufficio Relazioni con il Pubblico.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Civil Status Self Certification Form</p>
]]></hypertext></attribute><attribute name="LongDescr" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Modulo per l&#39;autocertificazione dello stato civile messo a disposizione dal Comune di Entando Town, Ufficio Relazioni con il Pubblico.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Civil Status Self Certification Form</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20121206172628</created><lastModified>20121206172628</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG56', 'CNG', 'Card Management Internal Servlet', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG56" typecode="CNG" typedescr="Generic Content"><descr>Card Management Internal Servlet</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Internal Servlet</text><text lang="en">Internal Servlet</text></attribute><attribute name="Abstract" attributetype="Hypertext" /><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Di seguito viene presentato un semplice esempio di erogazione di un servizio applicativo (scritto secondo il &quot;Pattern di integrazione Servizi Applicativi di Entando&quot;) per la gestione dei &quot;Pass ZTL&quot; con l&#39;utilizzo della Widget &quot;Internal Servlet&quot;.</p>
<p>
	Tramite la widget Internal Servlet &egrave; possibile utilizzare il motore del servizio utilizzato per il back-office (le operazioni CRUD realizzate tramite le Action CardAction e CardFinderAction) integrando delle jsp apposite.</p>
<p>
	In questo esempio, nel front-end vengono presentate le funzioni di ricerca PASS e visione dati singolo PASS. Nel back-end &egrave; possibilie effettuare le semplici operazioni CRUD sugli oggetti.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	This is a simple example of a service application (written under the &quot;Entando Services Integration Pattern&quot;) for the management of &quot;Limited Traffic Zone Pass&quot; with the use of &quot;Internal Servlet&quot; Widget.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20121206184512</created><lastModified>20121206184512</lastModified></content>
', '20121206184512', '20121206184512', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG56" typecode="CNG" typedescr="Generic Content"><descr>Card Management Internal Servlet</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Internal Servlet</text><text lang="en">Internal Servlet</text></attribute><attribute name="Abstract" attributetype="Hypertext" /><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Di seguito viene presentato un semplice esempio di erogazione di un servizio applicativo (scritto secondo il &quot;Pattern di integrazione Servizi Applicativi di Entando&quot;) per la gestione dei &quot;Pass ZTL&quot; con l&#39;utilizzo della Widget &quot;Internal Servlet&quot;.</p>
<p>
	Tramite la widget Internal Servlet &egrave; possibile utilizzare il motore del servizio utilizzato per il back-office (le operazioni CRUD realizzate tramite le Action CardAction e CardFinderAction) integrando delle jsp apposite.</p>
<p>
	In questo esempio, nel front-end vengono presentate le funzioni di ricerca PASS e visione dati singolo PASS. Nel back-end &egrave; possibilie effettuare le semplici operazioni CRUD sugli oggetti.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	This is a simple example of a service application (written under the &quot;Entando Services Integration Pattern&quot;) for the management of &quot;Limited Traffic Zone Pass&quot; with the use of &quot;Internal Servlet&quot; Widget.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20121206184512</created><lastModified>20121206184512</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('ANN57', 'ANN', 'Sample - Announcement 1', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN57" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 1</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 1</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', '20130115182926', '20130115182926', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN57" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 1</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 1</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('ANN58', 'ANN', 'Sample - Announcement 2', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN58" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 2</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 2</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', '20130115182926', '20130115182926', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN58" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 2</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 2</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('ANN59', 'ANN', 'Sample - Announcement 3', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN59" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 3</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 3</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', '20130115182926', '20130115182926', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN59" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 3</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 3</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('ANN60', 'ANN', 'Sample - Announcement 4', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN60" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 4</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 4</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', '20130115182926', '20130115182926', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN60" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 4</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 4</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('ANN61', 'ANN', 'Sample - Announcement 5', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN61" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 5</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 5</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', '20130115182926', '20130115182926', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN61" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 5</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 5</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('ANN62', 'ANN', 'Sample - Announcement 6', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN62" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 6</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 6</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', '20130115182927', '20130115182927', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN62" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 6</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 6</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NWS63', 'NWS', 'Sample - News 1', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS63" typecode="NWS" typedescr="News"><descr>Sample - News 1</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news #1</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', '20130115182927', '20130115182927', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS63" typecode="NWS" typedescr="News"><descr>Sample - News 1</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news #1</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NWS64', 'NWS', 'Sample - News 2', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS64" typecode="NWS" typedescr="News"><descr>Sample - News 2</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news #2</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', '20130115182927', '20130115182927', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS64" typecode="NWS" typedescr="News"><descr>Sample - News 2</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news #2</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NWS65', 'NWS', 'Sample - News 3', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS65" typecode="NWS" typedescr="News"><descr>Sample - News 3</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news #3</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', '20130115182927', '20130115182927', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS65" typecode="NWS" typedescr="News"><descr>Sample - News 3</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news #3</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NWS66', 'NWS', 'Sample - News 4', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS66" typecode="NWS" typedescr="News"><descr>Sample - News 4</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news #4</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', '20130115182927', '20130115182927', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS66" typecode="NWS" typedescr="News"><descr>Sample - News 4</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news #4</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NWS67', 'NWS', 'Sample - News 5', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS67" typecode="NWS" typedescr="News"><descr>Sample - News 5</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news #5</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', '20130115182927', '20130115182927', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS67" typecode="NWS" typedescr="News"><descr>Sample - News 5</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news #5</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG18', 'CNG', 'Welcome', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG18" typecode="CNG" typedescr="Generic Content"><descr>Welcome</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Welcome!</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	This is a demo website built using the Entando UI platform.</p>
<p>
	Sign in as the administrator and begin looking at how users, roles, pages and themes are defined and modified using Entando. The entire demo also leverages Bootstrap to provide a responsive design example. After understanding the basic structure of Entando, look for more training resources on <a href="#!U;https://github.com/entando!#">github.com/entando</a> and at <a href="#!U;http://www.entando.com!#">entando.com</a>.</p>
<p>
	Try the Administration Area using the <strong>Sign in</strong> drop-down up there in the top bar with the following account:</p>
<p>
	<strong>Username</strong>: admin<br />
	<strong>Password</strong>: adminadmin</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	This is a demo website built using the Entando UI platform.</p>
<p>
	Sign in as the administrator and begin looking at how users, roles, pages and themes are defined and modified using Entando. The entire demo also leverages Bootstrap to provide a responsive design example. After understanding the basic structure of Entando, look for more training resources on <a href="#!U;https://github.com/entando!#">github.com/entando</a> and at <a href="#!U;http://www.entando.com!#">entando.com</a>.</p>
<p>
	Try the Administration Area using the <strong>Sign in</strong> drop-down up there in the top bar with the following account:</p>
<p>
	<strong>Username</strong>: admin&nbsp;<br />
	<strong>Password</strong>: adminadmin</p>
<p>
	Find out how many things you can customize, create a new content, a new page or even your own user.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image"><resource resourcetype="Image" id="17" lang="en" /><text lang="en">Official plaque</text></attribute><attribute name="Caption" attributetype="Text"><text lang="en">Welcome to Entando</text></attribute><list name="Links" attributetype="Monolist" nestedtype="Link" /><list name="Attaches" attributetype="Monolist" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>10.0</version><lastEditor>admin</lastEditor><created>20121010173248</created><lastModified>20150212102321</lastModified></content>
', '20121010173248', '20150212102321', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG18" typecode="CNG" typedescr="Generic Content"><descr>Welcome</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Welcome!</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	This is a demo website built using the Entando UI platform.</p>
<p>
	Sign in as the administrator and begin looking at how users, roles, pages and themes are defined and modified using Entando. The entire demo also leverages Bootstrap to provide a responsive design example. After understanding the basic structure of Entando, look for more training resources on <a href="#!U;https://github.com/entando!#">github.com/entando</a> and at <a href="#!U;http://www.entando.com!#">entando.com</a>.</p>
<p>
	Try the Administration Area using the <strong>Sign in</strong> drop-down up there in the top bar with the following account:</p>
<p>
	<strong>Username</strong>: admin<br />
	<strong>Password</strong>: adminadmin</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	This is a demo website built using the Entando UI platform.</p>
<p>
	Sign in as the administrator and begin looking at how users, roles, pages and themes are defined and modified using Entando. The entire demo also leverages Bootstrap to provide a responsive design example. After understanding the basic structure of Entando, look for more training resources on <a href="#!U;https://github.com/entando!#">github.com/entando</a> and at <a href="#!U;http://www.entando.com!#">entando.com</a>.</p>
<p>
	Try the Administration Area using the <strong>Sign in</strong> drop-down up there in the top bar with the following account:</p>
<p>
	<strong>Username</strong>: admin&nbsp;<br />
	<strong>Password</strong>: adminadmin</p>
<p>
	Find out how many things you can customize, create a new content, a new page or even your own user.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image"><resource resourcetype="Image" id="17" lang="en" /><text lang="en">Official plaque</text></attribute><attribute name="Caption" attributetype="Text"><text lang="en">Welcome to Entando</text></attribute><list name="Links" attributetype="Monolist" nestedtype="Link" /><list name="Attaches" attributetype="Monolist" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>10.0</version><lastEditor>admin</lastEditor><created>20121010173248</created><lastModified>20150212102321</lastModified></content>
', 'free', '10.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NWS68', 'NWS', 'Sample - News 6', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS68" typecode="NWS" typedescr="News"><descr>Sample - News 6</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news #6</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182928</created><lastModified>20130115182928</lastModified></content>
', '20130115182928', '20130115182928', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS68" typecode="NWS" typedescr="News"><descr>Sample - News 6</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news #6</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American viral vegan DIY polaroid, sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master blog mumblecore vice, pork belly fap leggings sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182928</created><lastModified>20130115182928</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG70', 'CNG', 'Sample - Hero Unit', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG70" typecode="CNG" typedescr="Generic Content"><descr>Sample - Hero Unit</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Hello, world!</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Learn more</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182928</created><lastModified>20130115182928</lastModified></content>
', '20130115182928', '20130115182928', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG70" typecode="CNG" typedescr="Generic Content"><descr>Sample - Hero Unit</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Hello, world!</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Learn more</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182928</created><lastModified>20130115182928</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG71', 'CNG', 'Sample - Lorem Ipsum', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG71" typecode="CNG" typedescr="Generic Content"><descr>Sample - Lorem Ipsum</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Heading</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.org/</urldest></link><text lang="en">Entando.org</text></attribute><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.github.com/entando/</urldest></link><text lang="en">Entando @GitHub</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182928</created><lastModified>20130115182928</lastModified></content>
', '20130115182928', '20130115182928', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG71" typecode="CNG" typedescr="Generic Content"><descr>Sample - Lorem Ipsum</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Heading</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.org/</urldest></link><text lang="en">Entando.org</text></attribute><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.github.com/entando/</urldest></link><text lang="en">Entando @GitHub</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182928</created><lastModified>20130115182928</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NWS33', 'NWS', 'The portal embraces responsiveness', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS33" typecode="NWS" typedescr="News"><descr>The portal embraces responsiveness</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20130329</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">The portal embraces responsiveness</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	From now on, mobile devices are welcome here!</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	From now on, mobile devices are welcome here!</p>
<p>
	Thanks to the joint powers of <strong>Entando</strong> and <strong>Twitter Bootstrap</strong>.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Links" attributetype="Link"><link type="external"><urldest>http://www.mysite.com/</urldest></link><text lang="en">Learn more »</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018155423</created><lastModified>20130314130809</lastModified></content>
', '20121018155423', '20130314130809', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS33" typecode="NWS" typedescr="News"><descr>The portal embraces responsiveness</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20130329</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">The portal embraces responsiveness</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	From now on, mobile devices are welcome here!</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	From now on, mobile devices are welcome here!</p>
<p>
	Thanks to the joint powers of <strong>Entando</strong> and <strong>Twitter Bootstrap</strong>.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Links" attributetype="Link"><link type="external"><urldest>http://www.mysite.com/</urldest></link><text lang="en">Learn more »</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018155423</created><lastModified>20130314130809</lastModified></content>
', 'free', '2.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG40', 'CNG', 'Public Relations Office', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG40" typecode="CNG" typedescr="Generic Content"><descr>Public Relations Office</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">URP - Ufficio Relazioni con il Pubblico</text><text lang="en">Public Relations Office</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	E-mail: <strong>info@entando.com</strong></p>
<p>
	Orario di Ricevimento:<br />
	dal <strong>Luned&igrave;</strong>&nbsp;al&nbsp;<strong>Venerd&igrave;</strong>: dalle <strong>8.00 </strong>alle&nbsp;<strong>13</strong>.<strong>00</strong><br />
	<strong>Marted&igrave;</strong> e <strong>Mercoled&igrave;</strong>: dalle <strong>15.00 </strong>alle&nbsp;<strong>17.00</strong></p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	E-mail: <strong>info@entando.com</strong></p>
<p>
	Open:<br />
	from <strong>Monday</strong> to <strong>Friday</strong>: <strong>8.00 a.m.</strong> to <strong>1.00 p.m.</strong><br />
	<strong>Tuesday</strong>&nbsp;and&nbsp;<strong>Wednesday</strong>: <strong>4.00 p.m.</strong> to <strong>5.00 p.m.</strong></p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	E-mail: <strong>info@entando.com</strong></p>
<p>
	Orario di Ricevimento:<br />
	dal <strong>Luned&igrave;</strong>&nbsp;al&nbsp;<strong>Venerd&igrave;</strong>: dalle <strong>8.00</strong> alle&nbsp;<strong>13.00</strong><br />
	<strong>Marted&igrave;</strong> e <strong>Mercoled&igrave;</strong>: dalle <strong>15.00</strong> alle&nbsp;<strong>17.00</strong></p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	E-mail: <strong>info@entando.com</strong></p>
<p>
	Open:<br />
	from <strong>Monday</strong> to <strong>Friday</strong>: <strong>8.00 a.m.</strong> to <strong>1.00 p.m.</strong><br />
	<strong>Tuesday</strong>&nbsp;and&nbsp;<strong>Wednesday</strong>: <strong>3.00 p.m.</strong> to <strong>5.00 p.m.</strong></p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20121122184256</created><lastModified>20130314145742</lastModified></content>
', '20121122184256', '20130314145742', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG40" typecode="CNG" typedescr="Generic Content"><descr>Public Relations Office</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">URP - Ufficio Relazioni con il Pubblico</text><text lang="en">Public Relations Office</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	E-mail: <strong>info@entando.com</strong></p>
<p>
	Orario di Ricevimento:<br />
	dal <strong>Luned&igrave;</strong>&nbsp;al&nbsp;<strong>Venerd&igrave;</strong>: dalle <strong>8.00 </strong>alle&nbsp;<strong>13</strong>.<strong>00</strong><br />
	<strong>Marted&igrave;</strong> e <strong>Mercoled&igrave;</strong>: dalle <strong>15.00 </strong>alle&nbsp;<strong>17.00</strong></p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	E-mail: <strong>info@entando.com</strong></p>
<p>
	Open:<br />
	from <strong>Monday</strong> to <strong>Friday</strong>: <strong>8.00 a.m.</strong> to <strong>1.00 p.m.</strong><br />
	<strong>Tuesday</strong>&nbsp;and&nbsp;<strong>Wednesday</strong>: <strong>4.00 p.m.</strong> to <strong>5.00 p.m.</strong></p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	E-mail: <strong>info@entando.com</strong></p>
<p>
	Orario di Ricevimento:<br />
	dal <strong>Luned&igrave;</strong>&nbsp;al&nbsp;<strong>Venerd&igrave;</strong>: dalle <strong>8.00</strong> alle&nbsp;<strong>13.00</strong><br />
	<strong>Marted&igrave;</strong> e <strong>Mercoled&igrave;</strong>: dalle <strong>15.00</strong> alle&nbsp;<strong>17.00</strong></p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	E-mail: <strong>info@entando.com</strong></p>
<p>
	Open:<br />
	from <strong>Monday</strong> to <strong>Friday</strong>: <strong>8.00 a.m.</strong> to <strong>1.00 p.m.</strong><br />
	<strong>Tuesday</strong>&nbsp;and&nbsp;<strong>Wednesday</strong>: <strong>3.00 p.m.</strong> to <strong>5.00 p.m.</strong></p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20121122184256</created><lastModified>20130314145742</lastModified></content>
', 'free', '3.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('RSL32', 'RSL', 'Resolution 133', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="RSL32" typecode="RSL" typedescr="Resolution"><descr>Resolution 133</descr><groups mainGroup="free" /><categories><category id="resolutions_giunta" /></categories><attributes><attribute name="Number" attributetype="Number"><number>133</number></attribute><attribute name="Date" attributetype="Date"><date>20130130</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Manutenzione straordinaria Istituto Nautico - Lavori per la realizzazione di laboratorio informatico.</text><text lang="en">Special maintenance of Nautical Institute</text></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Manutenzione straordinaria Istituto Nautico. Lavori per la realizzazione di un laboratorio informatico nel primo piano dell&#39;istituto.</p>
<p>
	Approvazione progetto definitivo - esecutivo.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Special maintenance of Nautical Institute. Realization of a computer lab on the first floor of the institute.</p>
<p>
	Approval of final project.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="31" lang="en" /><text lang="it">Delibera della Giunta Comunale numero 133 del 20 Luglio 2011</text><text lang="en">Resolution 133</text></attribute></list></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018153757</created><lastModified>20130314131648</lastModified></content>
', '20121018153757', '20130314131648', '<?xml version="1.0" encoding="UTF-8"?>
<content id="RSL32" typecode="RSL" typedescr="Resolution"><descr>Resolution 133</descr><groups mainGroup="free" /><categories><category id="resolutions_giunta" /></categories><attributes><attribute name="Number" attributetype="Number"><number>133</number></attribute><attribute name="Date" attributetype="Date"><date>20130130</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Manutenzione straordinaria Istituto Nautico - Lavori per la realizzazione di laboratorio informatico.</text><text lang="en">Special maintenance of Nautical Institute</text></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Manutenzione straordinaria Istituto Nautico. Lavori per la realizzazione di un laboratorio informatico nel primo piano dell&#39;istituto.</p>
<p>
	Approvazione progetto definitivo - esecutivo.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Special maintenance of Nautical Institute. Realization of a computer lab on the first floor of the institute.</p>
<p>
	Approval of final project.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="31" lang="en" /><text lang="it">Delibera della Giunta Comunale numero 133 del 20 Luglio 2011</text><text lang="en">Resolution 133</text></attribute></list></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018153757</created><lastModified>20130314131648</lastModified></content>
', 'free', '2.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG72', 'CNG', 'APIs', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG72" typecode="CNG" typedescr="Generic Content"><descr>APIs</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">APIs</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	The API Engine allows you to expose information, contents of the CMS and platform services, through REST interfaces. Each resource can be exposed through the operations of research, creation, modification and deletion. Each API resource is also protected by an authorization check, through the use of OAuth protocol, whose policies are configurable by the administrator of the system.</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	The API Engine allows you to expose information, contents of the CMS and platform services, through REST interfaces. Each resource can be exposed through the operations of research, creation, modification and deletion. Each API resource is also protected by an authorization check, through the use of OAuth protocol, whose policies are configurable by the administrator of the system.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20130314132427</created><lastModified>20130314132427</lastModified></content>
', '20130314132427', '20130314132427', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG72" typecode="CNG" typedescr="Generic Content"><descr>APIs</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">APIs</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	The API Engine allows you to expose information, contents of the CMS and platform services, through REST interfaces. Each resource can be exposed through the operations of research, creation, modification and deletion. Each API resource is also protected by an authorization check, through the use of OAuth protocol, whose policies are configurable by the administrator of the system.</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	The API Engine allows you to expose information, contents of the CMS and platform services, through REST interfaces. Each resource can be exposed through the operations of research, creation, modification and deletion. Each API resource is also protected by an authorization check, through the use of OAuth protocol, whose policies are configurable by the administrator of the system.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20130314132427</created><lastModified>20130314132427</lastModified></content>
', 'free', '1.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('RSL69', 'RSL', 'Sample - Resolution 20', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="RSL69" typecode="RSL" typedescr="Resolution"><descr>Sample - Resolution 20</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Number" attributetype="Number"><number>20</number></attribute><attribute name="Date" attributetype="Date"><date>20130613</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="en">Examination and approval of Entando Town Balance Sheet 2013</text></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	Examination and approval of Entando Town Balance Sheet 2013</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20130115182928</created><lastModified>20130314134726</lastModified></content>
', '20130115182928', '20130314134726', '<?xml version="1.0" encoding="UTF-8"?>
<content id="RSL69" typecode="RSL" typedescr="Resolution"><descr>Sample - Resolution 20</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Number" attributetype="Number"><number>20</number></attribute><attribute name="Date" attributetype="Date"><date>20130613</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="en">Examination and approval of Entando Town Balance Sheet 2013</text></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	Examination and approval of Entando Town Balance Sheet 2013</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20130115182928</created><lastModified>20130314134726</lastModified></content>
', 'free', '3.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('ANN24', 'ANN', 'Announcement for participation in Civil Service', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN24" typecode="ANN" typedescr="Announcement"><descr>Announcement for participation in Civil Service</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="it">Bando di gara per la partecipazione al Servizio Civile</text><text lang="en">Announcement for participation in Civil Service</text></attribute><attribute name="StartDate" attributetype="Date"><date>20130227</date></attribute><attribute name="EndDate" attributetype="Date"><date>20131130</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Bando di gara per la selezione di 10 volontari da impiegare in progetti di servizio civile nel Comune di Entando Town.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Announcement for the selection of 10 volunteers for civil service projects.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20121017110857</created><lastModified>20130314140024</lastModified></content>
', '20121017110857', '20130314140024', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN24" typecode="ANN" typedescr="Announcement"><descr>Announcement for participation in Civil Service</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="it">Bando di gara per la partecipazione al Servizio Civile</text><text lang="en">Announcement for participation in Civil Service</text></attribute><attribute name="StartDate" attributetype="Date"><date>20130227</date></attribute><attribute name="EndDate" attributetype="Date"><date>20131130</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Bando di gara per la selezione di 10 volontari da impiegare in progetti di servizio civile nel Comune di Entando Town.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Announcement for the selection of 10 volunteers for civil service projects.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20121017110857</created><lastModified>20130314140024</lastModified></content>
', 'free', '3.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG46', 'CNG', 'Statute', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG46" typecode="CNG" typedescr="Generic Content"><descr>Statute</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Statuto</text><text lang="en">Statute</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Lo <strong>Statuto</strong> &egrave; il documento che definisce <strong>organi</strong>, <strong>compiti</strong> e <strong>modalit&agrave;</strong> di funzionamento dell&rsquo;Ente comunale.<br />
	Se desideri saperne di pi&ugrave; sulle funzioni svolte dall&rsquo;Ente Comune, sulle regole che ne governano il funzionamento e sulla rappresentativit&agrave; democratica esercitata dai cittadini tramite il voto elettorale, troverai nello statuto ufficiale molte informazioni interessanti.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	The <strong>Statute</strong> is the document that defines the Municipality council, functions and mode of operation.</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Lo <strong>Statuto</strong> &egrave; il documento che definisce <strong>organi</strong>, <strong>compiti</strong> e <strong>modalit&agrave;</strong> di funzionamento dell&rsquo;Ente comunale.</p>
<p>
	Se desideri saperne di pi&ugrave; sulle funzioni svolte dall&rsquo;Ente Comune, sulle regole che ne governano il funzionamento e sulla rappresentativit&agrave; democratica esercitata dai cittadini tramite il voto elettorale, troverai nello statuto ufficiale molte informazioni interessanti.</p>
<p>
	In questa sezione puoi trovare, nella sua interezza, il testo ufficiale dello Statuto del Comune di <strong>Entando Town</strong>.</p>
<p>
	Scaricalo dagli <strong>Allegati&nbsp;</strong>qui di seguito.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	The <strong>Statute</strong> is the document that defines the Municipality council, functions and mode of operation.</p>
<p>
	If you want to learn more about the Municipality functions, basic rules and democratic representation exercised by citizens through the electoral vote, you&#39;ll find lots of interesting information in the official status.</p>
<p>
	In this section you can find the official text of <strong>Entando Town</strong> Statute.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image"><resource resourcetype="Image" id="74" lang="en" /><text lang="en">Entando Town Statute</text></attribute><attribute name="Caption" attributetype="Text"><text lang="en">Entando Town Statute</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach"><attribute name="Attaches" attributetype="Attach"><resource resourcetype="Attach" id="45" lang="en" /><text lang="en">Statute</text></attribute></list></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121205172845</created><lastModified>20130314151301</lastModified></content>
', '20121205172845', '20130314151301', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG46" typecode="CNG" typedescr="Generic Content"><descr>Statute</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Statuto</text><text lang="en">Statute</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Lo <strong>Statuto</strong> &egrave; il documento che definisce <strong>organi</strong>, <strong>compiti</strong> e <strong>modalit&agrave;</strong> di funzionamento dell&rsquo;Ente comunale.<br />
	Se desideri saperne di pi&ugrave; sulle funzioni svolte dall&rsquo;Ente Comune, sulle regole che ne governano il funzionamento e sulla rappresentativit&agrave; democratica esercitata dai cittadini tramite il voto elettorale, troverai nello statuto ufficiale molte informazioni interessanti.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	The <strong>Statute</strong> is the document that defines the Municipality council, functions and mode of operation.</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Lo <strong>Statuto</strong> &egrave; il documento che definisce <strong>organi</strong>, <strong>compiti</strong> e <strong>modalit&agrave;</strong> di funzionamento dell&rsquo;Ente comunale.</p>
<p>
	Se desideri saperne di pi&ugrave; sulle funzioni svolte dall&rsquo;Ente Comune, sulle regole che ne governano il funzionamento e sulla rappresentativit&agrave; democratica esercitata dai cittadini tramite il voto elettorale, troverai nello statuto ufficiale molte informazioni interessanti.</p>
<p>
	In questa sezione puoi trovare, nella sua interezza, il testo ufficiale dello Statuto del Comune di <strong>Entando Town</strong>.</p>
<p>
	Scaricalo dagli <strong>Allegati&nbsp;</strong>qui di seguito.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	The <strong>Statute</strong> is the document that defines the Municipality council, functions and mode of operation.</p>
<p>
	If you want to learn more about the Municipality functions, basic rules and democratic representation exercised by citizens through the electoral vote, you&#39;ll find lots of interesting information in the official status.</p>
<p>
	In this section you can find the official text of <strong>Entando Town</strong> Statute.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image"><resource resourcetype="Image" id="74" lang="en" /><text lang="en">Entando Town Statute</text></attribute><attribute name="Caption" attributetype="Text"><text lang="en">Entando Town Statute</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach"><attribute name="Attaches" attributetype="Attach"><resource resourcetype="Attach" id="45" lang="en" /><text lang="en">Statute</text></attribute></list></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121205172845</created><lastModified>20130314151301</lastModified></content>
', 'free', '2.0', 'admin');


INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename, creationdate, lastmodified) VALUES ('38', 'Image', 'A beautiful view of Entando Town', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="38"><descr>A beautiful view of Entando Town</descr><groups mainGroup="free" /><categories /><masterfile>Immagine1.jpg</masterfile><instance><size>3</size><filename>Immagine1_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>6 Kb</weight></instance><instance><size>2</size><filename>Immagine1_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>5 Kb</weight></instance><instance><size>1</size><filename>Immagine1_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>0</size><filename>Immagine1_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>3444 Kb</weight></instance></resource>
', 'Immagine1.jpg', NULL, NULL);
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename, creationdate, lastmodified) VALUES ('17', 'Image', 'Stemma', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="17"><descr>Stemma</descr><groups mainGroup="free" /><categories /><masterfile>Building.png</masterfile><instance><size>3</size><filename>Building_d3.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>2</size><filename>Building_d2.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>1</size><filename>Building_d1.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>0</size><filename>Building_d0.png</filename><mimetype>image/png</mimetype><weight>3 Kb</weight></instance></resource>
', 'Building.png', NULL, NULL);
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename, creationdate, lastmodified) VALUES ('45', 'Attach', 'Statute', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="45"><descr>Statute</descr><groups mainGroup="free" /><categories /><masterfile>Entando_Statute.pdf</masterfile><instance><size>0</size><filename>Entando_Statute.pdf</filename><mimetype>application/pdf</mimetype><weight>289 Kb</weight></instance></resource>
', 'Entando_Statute.pdf', NULL, NULL);
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename, creationdate, lastmodified) VALUES ('27', 'Attach', 'Resolution 120', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="27"><descr>Resolution 120</descr><groups mainGroup="free" /><categories /><masterfile>Resolution 120.pdf</masterfile><instance><size>0</size><filename>Resolution 120.pdf</filename><mimetype>application/pdf</mimetype><weight>288 Kb</weight></instance></resource>
', 'Resolution 120.pdf', NULL, NULL);
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename, creationdate, lastmodified) VALUES ('21', 'Attach', 'Announcement for supply of stationery and accessories', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="21"><descr>Announcement for supply of stationery and accessories</descr><groups mainGroup="free" /><categories /><masterfile>Entando_Announcement_Supply_Stationery.pdf</masterfile><instance><size>0</size><filename>Entando_Announcement_Supply_Stationery.pdf</filename><mimetype>application/pdf</mimetype><weight>290 Kb</weight></instance></resource>
', 'Entando_Announcement_Supply_Stationery.pdf', NULL, NULL);
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename, creationdate, lastmodified) VALUES ('19', 'Attach', 'Announcement for Nautical Institute special maintenance', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="19"><descr>Announcement for Nautical Institute special maintenance</descr><groups mainGroup="free" /><categories /><masterfile>Entando_Announcement_Maintenance_Nautical_Institute.pdf</masterfile><instance><size>0</size><filename>Entando_Announcement_Maintenance_Nautical_Institute.pdf</filename><mimetype>application/pdf</mimetype><weight>289 Kb</weight></instance></resource>
', 'Entando_Announcement_Maintenance_Nautical_Institute.pdf', NULL, NULL);
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename, creationdate, lastmodified) VALUES ('49', 'Attach', 'Tax - Request ICI refund', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="49"><descr>Tax - Request ICI refund</descr><groups mainGroup="free" /><categories /><masterfile>Tax - Request ICI refund.pdf</masterfile><instance><size>0</size><filename>Tax - Request ICI refund.pdf</filename><mimetype>application/pdf</mimetype><weight>289 Kb</weight></instance></resource>
', 'Tax - Request ICI refund.pdf', NULL, NULL);
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename, creationdate, lastmodified) VALUES ('47', 'Attach', 'Request Identity Card valid for foreign travel', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="47"><descr>Request Identity Card valid for foreign travel</descr><groups mainGroup="free" /><categories /><masterfile>Request Identity Card valid for foreign travel.pdf</masterfile><instance><size>0</size><filename>Request Identity Card valid for foreign travel.pdf</filename><mimetype>application/pdf</mimetype><weight>290 Kb</weight></instance></resource>
', 'Request Identity Card valid for foreign travel.pdf', NULL, NULL);
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename, creationdate, lastmodified) VALUES ('36', 'Attach', 'Ground Rent Contribution', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="36"><descr>Ground Rent Contribution</descr><groups mainGroup="free" /><categories /><masterfile>Entando_Ground_Rent_Contribution.pdf</masterfile><instance><size>0</size><filename>Entando_Ground_Rent_Contribution.pdf</filename><mimetype>application/pdf</mimetype><weight>288 Kb</weight></instance></resource>
', 'Entando_Ground_Rent_Contribution.pdf', NULL, NULL);
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename, creationdate, lastmodified) VALUES ('31', 'Attach', 'Resolution 133', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="31"><descr>Resolution 133</descr><groups mainGroup="free" /><categories /><masterfile>Resolution 133.pdf</masterfile><instance><size>0</size><filename>Resolution 133.pdf</filename><mimetype>application/pdf</mimetype><weight>288 Kb</weight></instance></resource>
', 'Resolution 133.pdf', NULL, NULL);
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename, creationdate, lastmodified) VALUES ('25', 'Attach', 'Resolution 15', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="25"><descr>Resolution 15</descr><groups mainGroup="free" /><categories /><masterfile>Resolution 15.pdf</masterfile><instance><size>0</size><filename>Resolution 15.pdf</filename><mimetype>application/pdf</mimetype><weight>288 Kb</weight></instance></resource>
', 'Resolution 15.pdf', NULL, NULL);
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename, creationdate, lastmodified) VALUES ('29', 'Attach', 'Resolution 20', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="29"><descr>Resolution 20</descr><groups mainGroup="free" /><categories /><masterfile>Resolution 20.pdf</masterfile><instance><size>0</size><filename>Resolution 20.pdf</filename><mimetype>application/pdf</mimetype><weight>288 Kb</weight></instance></resource>
', 'Resolution 20.pdf', NULL, NULL);
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename, creationdate, lastmodified) VALUES ('51', 'Attach', 'Civil Status Self Certification Form', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="51"><descr>Civil Status Self Certification Form</descr><groups mainGroup="free" /><categories /><masterfile>Entando_Civil_Status_Self_Certification_Form.pdf</masterfile><instance><size>0</size><filename>Entando_Civil_Status_Self_Certification_Form.pdf</filename><mimetype>application/pdf</mimetype><weight>289 Kb</weight></instance></resource>
', 'Entando_Civil_Status_Self_Certification_Form.pdf', NULL, NULL);
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename, creationdate, lastmodified) VALUES ('53', 'Attach', 'Residence Self Certification Form', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="53"><descr>Residence Self Certification Form</descr><groups mainGroup="free" /><categories /><masterfile>Residence Self Certification Form.pdf</masterfile><instance><size>0</size><filename>Residence Self Certification Form.pdf</filename><mimetype>application/pdf</mimetype><weight>289 Kb</weight></instance></resource>
', 'Residence Self Certification Form.pdf', NULL, NULL);
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename, creationdate, lastmodified) VALUES ('42', 'Image', 'Mayor', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="42"><descr>Mayor</descr><groups mainGroup="free" /><categories /><masterfile>User_icon.png</masterfile><instance><size>3</size><filename>User_icon_d3.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>2</size><filename>User_icon_d2.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>1</size><filename>User_icon_d1.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>0</size><filename>User_icon_d0.png</filename><mimetype>image/png</mimetype><weight>6 Kb</weight></instance></resource>
', 'User_icon.png', NULL, NULL);
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename, creationdate, lastmodified) VALUES ('73', 'Image', 'Council', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="73"><descr>Council</descr><groups mainGroup="free" /><categories /><masterfile>Group_Icon.png</masterfile><instance><size>3</size><filename>Group_Icon_d3.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>2</size><filename>Group_Icon_d2.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>1</size><filename>Group_Icon_d1.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>0</size><filename>Group_Icon_d0.png</filename><mimetype>image/png</mimetype><weight>10 Kb</weight></instance></resource>
', 'Group_Icon.png', NULL, NULL);
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename, creationdate, lastmodified) VALUES ('74', 'Image', 'Entando town Statute', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="74"><descr>Entando town Statute</descr><groups mainGroup="free" /><categories /><masterfile>Statute_icon.png</masterfile><instance><size>3</size><filename>Statute_icon_d3.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>2</size><filename>Statute_icon_d2.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>1</size><filename>Statute_icon_d1.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>0</size><filename>Statute_icon_d0.png</filename><mimetype>image/png</mimetype><weight>3 Kb</weight></instance></resource>
', 'Statute_icon.png', NULL, NULL);


INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG55', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG55', 'old_town_traffic_pass_intservl', NULL, NULL, NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG55', 'old_town_traffic_pass_intservl', NULL, NULL, NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG8', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG9', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG41', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG41', NULL, NULL, '42', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG43', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG43', NULL, NULL, '73', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG44', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG44', NULL, NULL, '17', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG56', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG18', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG18', NULL, NULL, '17', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG70', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG71', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG40', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG72', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG46', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG46', NULL, NULL, '74', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG46', NULL, NULL, '45', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL30', NULL, NULL, NULL, 'resolutions_council', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL30', NULL, NULL, NULL, 'resolutions', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL30', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL30', NULL, NULL, '29', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL26', NULL, NULL, NULL, 'resolutions_council', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL26', NULL, NULL, NULL, 'resolutions', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL26', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL26', NULL, NULL, '25', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL28', NULL, NULL, NULL, 'documents', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL28', NULL, NULL, NULL, 'resolutions', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL28', NULL, NULL, NULL, 'resolutions_giunta', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL28', NULL, NULL, NULL, 'downloads', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL28', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL28', NULL, NULL, '27', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL32', NULL, NULL, NULL, 'resolutions', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL32', NULL, NULL, NULL, 'resolutions_giunta', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL32', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL32', NULL, NULL, '31', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL69', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD54', NULL, NULL, NULL, 'selcf_certifications', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD54', NULL, NULL, NULL, 'downloads', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD54', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD54', NULL, NULL, '53', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD48', NULL, NULL, NULL, 'citizen_registry', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD48', NULL, NULL, NULL, 'documents', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD48', NULL, NULL, NULL, 'downloads', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD48', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD48', NULL, NULL, '47', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD50', NULL, NULL, NULL, 'documents', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD50', NULL, NULL, NULL, 'downloads', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD50', NULL, NULL, NULL, 'taxes', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD50', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD50', NULL, NULL, '49', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD52', NULL, NULL, NULL, 'selcf_certifications', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD52', NULL, NULL, NULL, 'downloads', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD52', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD52', NULL, NULL, '51', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('ANN20', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('ANN20', NULL, NULL, '19', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('ANN22', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('ANN22', NULL, NULL, '21', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('ANN57', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('ANN58', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('ANN59', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('ANN60', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('ANN61', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('ANN62', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('ANN24', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS34', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS37', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS37', NULL, NULL, '36', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS39', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS39', NULL, NULL, '38', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS63', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS64', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS65', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS66', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS67', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS68', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS33', NULL, NULL, NULL, NULL, 'free');


INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG55', 'Title', 'Application Service Example', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG55', 'Title', 'Esempio Servizio Applicativo', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG8', 'Title', 'Hello, world!', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG8', 'Title', 'Hello, world!', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG9', 'Title', 'Heading', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG9', 'Title', 'Heading', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG41', 'Title', 'Mayor', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG41', 'Title', 'Sindaco', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG43', 'Title', 'Council', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG43', 'Title', 'Giunta Comunale', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG44', 'Title', 'Municipal Council', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG44', 'Title', 'Consiglio Comunale', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG56', 'Title', 'Internal Servlet', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG56', 'Title', 'Internal Servlet', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG18', 'Title', 'Welcome!', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG18', 'Title', 'Welcome!', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG70', 'Title', 'Hello, world!', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG70', 'Title', 'Hello, world!', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG71', 'Title', 'Heading', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG71', 'Title', 'Heading', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG40', 'Title', 'Public Relations Office', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG40', 'Title', 'URP - Ufficio Relazioni con il Pubblico', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG72', 'Title', 'APIs', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG72', 'Title', 'APIs', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG46', 'Title', 'Statute', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG46', 'Title', 'Statuto', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL30', 'Number', NULL, NULL, 20, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL30', 'Date', NULL, '2013-10-04 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL26', 'Number', NULL, NULL, 15, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL26', 'Date', NULL, '2013-07-16 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL28', 'Number', NULL, NULL, 120, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL28', 'Date', NULL, '2013-07-01 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL32', 'Number', NULL, NULL, 133, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL32', 'Date', NULL, '2013-01-30 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL69', 'Number', NULL, NULL, 20, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL69', 'Date', NULL, '2013-06-13 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD54', 'Title', 'Residence Self Certification Form', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD54', 'Title', 'Modulo Autocertificazione Residenza', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD48', 'Title', 'Registry - Request Identity Card valid for foreign travel', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD48', 'Title', 'Anagrafe - Richiesta Carta Identità valida per espatrio', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD50', 'Title', 'Tax - Request ICI refund', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD50', 'Title', 'Tributi - Richiesta rimborso ICI', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD52', 'Title', 'Civil Status Self Certification Form', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD52', 'Title', 'Modulo Autocertificazione Stato Civile', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN20', 'StartDate', NULL, '2013-03-03 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN20', 'EndDate', NULL, '2013-11-14 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN22', 'StartDate', NULL, '2013-02-28 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN22', 'EndDate', NULL, '2013-10-27 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN57', 'StartDate', NULL, '2012-06-21 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN57', 'EndDate', NULL, '2012-08-31 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN58', 'StartDate', NULL, '2012-06-21 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN58', 'EndDate', NULL, '2012-08-31 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN59', 'StartDate', NULL, '2012-06-21 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN59', 'EndDate', NULL, '2012-08-31 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN60', 'StartDate', NULL, '2012-06-21 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN60', 'EndDate', NULL, '2012-08-31 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN61', 'StartDate', NULL, '2012-06-21 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN61', 'EndDate', NULL, '2012-08-31 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN62', 'StartDate', NULL, '2012-06-21 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN62', 'EndDate', NULL, '2012-08-31 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN24', 'StartDate', NULL, '2013-02-27 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN24', 'EndDate', NULL, '2013-11-30 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS34', 'Date', NULL, '2013-07-20 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS34', 'Title', 'Folk Music Festival', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS34', 'Title', 'Festival della canzone popolare', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS37', 'Date', NULL, '2013-03-27 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS37', 'Title', 'Ground Rent Contribution', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS37', 'Title', 'Contributo canone di locazione 2013', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS39', 'Date', NULL, '2013-03-29 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS39', 'Title', 'Online the Portal of Entando Town', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS39', 'Title', 'Online il Portale del Comune di Entando Town', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS63', 'Date', NULL, '2012-06-13 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS63', 'Title', 'Here come the news #1', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS63', 'Title', 'Here come the news #1', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS64', 'Date', NULL, '2012-06-13 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS64', 'Title', 'Here come the news #2', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS64', 'Title', 'Here come the news #2', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS65', 'Date', NULL, '2012-06-13 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS65', 'Title', 'Here come the news #3', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS65', 'Title', 'Here come the news #3', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS66', 'Date', NULL, '2012-06-13 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS66', 'Title', 'Here come the news #4', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS66', 'Title', 'Here come the news #4', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS67', 'Date', NULL, '2012-06-13 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS67', 'Title', 'Here come the news #5', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS67', 'Title', 'Here come the news #5', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS68', 'Date', NULL, '2012-06-13 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS68', 'Title', 'Here come the news #6', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS68', 'Title', 'Here come the news #6', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS33', 'Date', NULL, '2013-03-29 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS33', 'Title', 'The portal embraces responsiveness', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS33', 'Title', 'The portal embraces responsiveness', NULL, NULL, 'it');


INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG55', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG8', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG9', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG41', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG43', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG44', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG56', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG18', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG70', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG71', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG40', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG72', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG46', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('RSL30', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('RSL26', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('RSL28', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('RSL32', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('RSL69', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('DLD54', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('DLD48', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('DLD50', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('DLD52', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('ANN20', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('ANN22', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('ANN57', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('ANN58', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('ANN59', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('ANN60', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('ANN61', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('ANN62', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('ANN24', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('NWS34', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('NWS37', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('NWS39', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('NWS63', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('NWS64', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('NWS65', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('NWS66', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('NWS67', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('NWS68', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('NWS33', 'Title', 'jacms:title');


INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL30', 'resolutions_council');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL30', 'resolutions');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL26', 'resolutions_council');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL26', 'resolutions');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL28', 'documents');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL28', 'resolutions');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL28', 'resolutions_giunta');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL28', 'downloads');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL32', 'resolutions');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL32', 'resolutions_giunta');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD54', 'selcf_certifications');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD54', 'downloads');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD48', 'citizen_registry');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD48', 'documents');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD48', 'downloads');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD50', 'documents');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD50', 'downloads');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD50', 'taxes');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD52', 'selcf_certifications');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD52', 'downloads');


INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG55', 'Title', 'Application Service Example', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG55', 'Title', 'Esempio Servizio Applicativo', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG8', 'Title', 'Hello, world!', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG8', 'Title', 'Hello, world!', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG9', 'Title', 'Heading', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG9', 'Title', 'Heading', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG41', 'Title', 'Mayor', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG41', 'Title', 'Sindaco', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG43', 'Title', 'Council', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG43', 'Title', 'Giunta Comunale', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG44', 'Title', 'Municipal Council', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG44', 'Title', 'Consiglio Comunale', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG56', 'Title', 'Internal Servlet', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG56', 'Title', 'Internal Servlet', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG18', 'Title', 'Welcome!', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG18', 'Title', 'Welcome!', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG70', 'Title', 'Hello, world!', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG70', 'Title', 'Hello, world!', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG71', 'Title', 'Heading', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG71', 'Title', 'Heading', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG40', 'Title', 'Public Relations Office', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG40', 'Title', 'URP - Ufficio Relazioni con il Pubblico', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG72', 'Title', 'APIs', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG72', 'Title', 'APIs', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG46', 'Title', 'Statute', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG46', 'Title', 'Statuto', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL30', 'Number', NULL, NULL, 20, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL30', 'Date', NULL, '2013-10-04 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL26', 'Number', NULL, NULL, 15, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL26', 'Date', NULL, '2013-07-16 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL28', 'Number', NULL, NULL, 120, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL28', 'Date', NULL, '2013-07-01 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL32', 'Number', NULL, NULL, 133, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL32', 'Date', NULL, '2013-01-30 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL69', 'Number', NULL, NULL, 20, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL69', 'Date', NULL, '2013-06-13 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD54', 'Title', 'Residence Self Certification Form', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD54', 'Title', 'Modulo Autocertificazione Residenza', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD48', 'Title', 'Registry - Request Identity Card valid for foreign travel', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD48', 'Title', 'Anagrafe - Richiesta Carta Identità valida per espatrio', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD50', 'Title', 'Tax - Request ICI refund', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD50', 'Title', 'Tributi - Richiesta rimborso ICI', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD52', 'Title', 'Civil Status Self Certification Form', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD52', 'Title', 'Modulo Autocertificazione Stato Civile', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN20', 'StartDate', NULL, '2013-03-03 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN20', 'EndDate', NULL, '2013-11-14 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN22', 'StartDate', NULL, '2013-02-28 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN22', 'EndDate', NULL, '2013-10-27 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN57', 'StartDate', NULL, '2012-06-21 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN57', 'EndDate', NULL, '2012-08-31 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN58', 'StartDate', NULL, '2012-06-21 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN58', 'EndDate', NULL, '2012-08-31 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN59', 'StartDate', NULL, '2012-06-21 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN59', 'EndDate', NULL, '2012-08-31 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN60', 'StartDate', NULL, '2012-06-21 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN60', 'EndDate', NULL, '2012-08-31 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN61', 'StartDate', NULL, '2012-06-21 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN61', 'EndDate', NULL, '2012-08-31 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN62', 'StartDate', NULL, '2012-06-21 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN62', 'EndDate', NULL, '2012-08-31 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN24', 'StartDate', NULL, '2013-02-27 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN24', 'EndDate', NULL, '2013-11-30 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS34', 'Date', NULL, '2013-07-20 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS34', 'Title', 'Folk Music Festival', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS34', 'Title', 'Festival della canzone popolare', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS37', 'Date', NULL, '2013-03-27 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS37', 'Title', 'Ground Rent Contribution', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS37', 'Title', 'Contributo canone di locazione 2013', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS39', 'Date', NULL, '2013-03-29 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS39', 'Title', 'Online the Portal of Entando Town', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS39', 'Title', 'Online il Portale del Comune di Entando Town', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS63', 'Date', NULL, '2012-06-13 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS63', 'Title', 'Here come the news #1', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS63', 'Title', 'Here come the news #1', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS64', 'Date', NULL, '2012-06-13 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS64', 'Title', 'Here come the news #2', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS64', 'Title', 'Here come the news #2', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS65', 'Date', NULL, '2012-06-13 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS65', 'Title', 'Here come the news #3', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS65', 'Title', 'Here come the news #3', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS66', 'Date', NULL, '2012-06-13 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS66', 'Title', 'Here come the news #4', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS66', 'Title', 'Here come the news #4', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS67', 'Date', NULL, '2012-06-13 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS67', 'Title', 'Here come the news #5', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS67', 'Title', 'Here come the news #5', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS68', 'Date', NULL, '2012-06-13 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS68', 'Title', 'Here come the news #6', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS68', 'Title', 'Here come the news #6', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS33', 'Date', NULL, '2013-03-29 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS33', 'Title', 'The portal embraces responsiveness', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS33', 'Title', 'The portal embraces responsiveness', NULL, NULL, 'it');


INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG55', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG8', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG9', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG41', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG43', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG44', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG56', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG18', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG70', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG71', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG40', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG72', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG46', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('RSL30', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('RSL26', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('RSL28', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('RSL32', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('RSL69', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('DLD54', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('DLD48', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('DLD50', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('DLD52', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('ANN20', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('ANN22', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('ANN57', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('ANN58', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('ANN59', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('ANN60', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('ANN61', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('ANN62', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('ANN24', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('NWS34', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('NWS37', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('NWS39', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('NWS63', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('NWS64', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('NWS65', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('NWS66', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('NWS67', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('NWS68', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('NWS33', 'Title', 'jacms:title');
