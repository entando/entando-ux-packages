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
		<code>it</code>
		<descr>Italiano</descr>
	</Lang>
	<Lang>
		<code>en</code>
		<descr>English</descr>
		<default>true</default>
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
	<Param name="firstTimeMessages">true</Param>
	<Param name="baseUrl">static</Param>
	<Param name="baseUrlContext">true</Param>
	<SpecialPages>
		<Param name="notFoundPageCode">notfound</Param>
		<Param name="homePageCode">homepage</Param>
		<Param name="errorPageCode">errorpage</Param>
		<Param name="loginPageCode">login</Param>
	</SpecialPages>
	<FeaturesOnDemand>
		<Param name="groupsOnDemand">false</Param>
		<Param name="categoriesOnDemand">false</Param>
		<Param name="contentTypesOnDemand">false</Param>
		<Param name="contentModelsOnDemand">false</Param>
		<Param name="apisOnDemand">false</Param>
		<Param name="resourceArchivesOnDemand">false</Param>
	</FeaturesOnDemand>
	<ExtendendPrivacyModule>
		<Param name="extendedPrivacyModuleEnabled">false</Param>
		<Param name="maxMonthsSinceLastAccess">6</Param>
		<Param name="maxMonthsSinceLastPasswordChange">3</Param>
	</ExtendendPrivacyModule>
</Params>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'subIndexDir', 'Name of the sub-directory containing content indexing files', 'indexdir20130218162539');
INSERT INTO sysconfig (version, item, descr, config) values ('production', 'userProfileTypes', 'User Profile Types Definitions', '<?xml version="1.0" encoding="UTF-8"?>
<profiletypes>
	<profiletype typecode="PFL" typedescr="Default user profile">
		<attributes>
			<attribute name="fullname" attributetype="Monotext" description="Full Name" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>userprofile:fullname</role>
				</roles>
			</attribute>
			<attribute name="email" attributetype="Monotext" description="Email" searcheable="true">
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
</profiletypes>');

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
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('RESERVED_AREA', 'it', 'È necessario autenticarsi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USERNAME', 'en', 'Username');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USERNAME', 'it', 'Utente');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PASSWORD', 'en', 'Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PASSWORD', 'it', 'Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SIGNIN', 'en', 'Sign in');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SIGNIN', 'it', 'Entra');
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
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_NO_SERVICES', 'en', 'No API Services available.<br />The system administrator is able to create some.');
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
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('COPYRIGHT', 'en', 'Copyright &copy; Entando Srl 2013');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('COPYRIGHT', 'it', 'Copyright &copy; Entando Srl 2013');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_CONFIGURATION','it','Configura il profile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_CONFIGURATION','en','Edit profile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_CONFIRM_NEWPASS','it','Conferma nuova password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_CONFIRM_NEWPASS','en','Confirm new password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_EDITPASSWORD','it','Modifica Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_EDITPASSWORD','en','Edit Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_EDITPASSWORD_TITLE','it','Modifica Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_EDITPASSWORD_TITLE','en','Edit Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_EDITPROFILE_TITLE','it','Modifica profilo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_EDITPROFILE_TITLE','en','Edit Profile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_MOVEUP','it','Sposta su');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_MOVEUP','en','Move up');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_MOVEUP_IN','it','Sposta su in posizione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_MOVEUP_IN','en','Move at position');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_MOVEDOWN','it','Sposta giu');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_MOVEDOWN','en','Move down');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_MOVEDOWN_IN','it','Sposta giu in posizione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_MOVEDOWN_IN','en','Move down at position');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_REMOVE','it','Rimuovi dalla lista'); 
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ITEM_REMOVE','en','Remove from list'); 
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_MESSAGE_TITLE_FIELDERRORS','it','Attenzione, si sono verificati i seguenti errori nella compilazione del modulo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_MESSAGE_TITLE_FIELDERRORS','en','Warning, please check the module');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_NEWPASS','it','Nuova password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_NEWPASS','en','New password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_OLDPASSWORD','it','Vecchia password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_OLDPASSWORD','en','Old password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PASSWORD_UPDATED','it','La password è stata aggiornata correttamente.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PASSWORD_UPDATED','en','Your password updated successfully.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PLEASE_LOGIN','it','E'' necessario effettuare l''accesso');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PLEASE_LOGIN','en','Please login');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PLEASE_LOGIN_AGAIN','it','E'' necessario riloggarsi.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PLEASE_LOGIN_AGAIN','en','Please logout and login again.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PLEASE_LOGIN_TO_EDIT_PASSWORD','it','E'' necessario effettuare l''accesso per cambiare la password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PLEASE_LOGIN_TO_EDIT_PASSWORD','en','Please login in order to change your password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PROFILE_UPDATED','it','Profilo aggiornato correttamente.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_PROFILE_UPDATED','en','Your profile is now updated.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_SAVE_PASSWORD','it','Salva password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_SAVE_PASSWORD','en','Save password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_SAVE_PROFILE','it','Salva il profilo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_SAVE_PROFILE','en','Save profile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ADDITEM_LIST','it','Aggiungi nuovo elemento alla lista');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_ADDITEM_LIST','en','Add an element to the list');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_YES','it','Si');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_YES','en','Yes');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_NO','it','No');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_NO','en','No');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_BOTH_YES_AND_NO','it','Indifferente');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('userprofile_BOTH_YES_AND_NO','en','Both');
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
INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_KEY','en','Key');
INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_KEY','it','Id');
INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARENT_API','en','Parent API');
INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARENT_API','it','API Padre');
INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTHORIZATION','en','Authorization');
INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTHORIZATION','it','Autorizzazione');
INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTH_FREE','en','Free');
INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTH_FREE','it','Accesso Libero');
INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_URI','en','URI');
INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_URI','it','URI');
INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAMETERS','en','Parameters');
INSERT INTO localstrings(keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAMETERS','it','Parametri');


INSERT INTO pagemodels (code, descr, frames, plugincode, templategui) VALUES ('service', 'Service Page', '<frames>
	<frame pos="0">
		<descr>Sample Frame</descr>
	</frame>	
</frames>', NULL, NULL);
INSERT INTO pagemodels (code, descr, frames, plugincode, templategui) VALUES ('entando-page-2columns-left', '2 Columns - Left', '<frames>
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
</frames>', NULL, NULL);
INSERT INTO pagemodels (code, descr, frames, plugincode, templategui) VALUES ('home', 'Home Page', NULL, NULL, NULL);
INSERT INTO pagemodels (code, descr, frames, plugincode, templategui) VALUES ('entando-page-bootstrap-hero', 'Bootstrap - Hero Unit', '<frames>
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
	<frame pos="7" main="true">
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
	<frame pos="15">
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
</frames>', NULL, '<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
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
		<@c.import url="/WEB-INF/aps/jsp/models/inc/lesscss-active/lesscss.jsp" />
		<@c.import url="/WEB-INF/aps/jsp/models/inc/models-common-utils.jsp" />
		<#--
		<jsp:include page="inc/lesscss-active/lesscss.jsp" />
		<jsp:include page="inc/models-common-utils.jsp" />
		-->
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
				<a class="brand" href="#"><img src="<@wp.imgURL />entando-logo.png" alt="Entando - Simplifying Enterprise Portals" /></a>
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
					<p class="span12 text-center margin-medium-top"><@wp.i18n key="COPYRIGHT" escapeXml=false /> - Powered by <a href="http://www.entando.com/">Entando - Simplifying Enterprise Portals</a></p>
				</div>
			</div>
		</footer>
</body>
</html>');


INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('service', 'homepage', 5, 'service', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="it">Pagine di Servizio</property>
<property key="en">Service</property>
</properties>', 'free', 0, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('login', 'service', 6, 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Sign In</property>
<property key="it">Autenticazione</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('notfound', 'service', 4, 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Page not found</property>
<property key="it">Pagina non trovata</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('errorpage', 'service', 5, 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">System Error</property>
<property key="it">Errore di Sistema</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('municipality', 'homepage', 2, 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Municipality</property>
<property key="it">Il Comune</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('online_services', 'homepage', 4, 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Online Services</property>
<property key="it">Servizi Online</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('homepage', 'homepage', -1, 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Home</property>
<property key="it">Home</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('announcements', 'informations', 1, 'entando-page-2columns-left', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Announcements</property>
<property key="it">Bandi</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('resolutions', 'informations', 2, 'entando-page-2columns-left', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Resolutions</property>
<property key="it">Delibere</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('news', 'informations', 3, 'entando-page-2columns-left', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News</property>
<property key="it">Notizie</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('search_result', 'service', 4, 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search Result</property>
<property key="it">Risultati della Ricerca</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('announcements_read', 'announcements', 1, 'entando-page-2columns-left', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the Announcement</property>
<property key="it">Leggi il Bando</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('resolutions_read', 'resolutions', 1, 'entando-page-2columns-left', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the Resolution</property>
<property key="it">Leggi la Delibera</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('news_read', 'news', 1, 'entando-page-2columns-left', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the News</property>
<property key="it">Leggi la Notizia</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('contents_read', 'service', 5, 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the Content</property>
<property key="it">Leggi il Contenuto</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('mayor', 'municipality', 1, 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Mayor</property>
<property key="it">Sindaco</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('council', 'municipality', 2, 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Council</property>
<property key="it">Giunta Comunale</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('municipal_council', 'municipality', 3, 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Municipal Council</property>
<property key="it">Consiglio Comunale</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('statute', 'municipality', 4, 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Statute</property>
<property key="it">Statuto</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('documents', 'online_services', 1, 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Documents</property>
<property key="it">Modulistica</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('download', 'documents', 1, 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Download</property>
<property key="it">Scarica</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('self_certifications', 'online_services', 2, 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Self Certifications</property>
<property key="it">Autocertificazioni</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('old_town_traffic_pass', 'online_services', 3, 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Limited Traffic Zone Pass</property>
<property key="it">Pass ZTL</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('old_town_traffic_pass_intservl', 'old_town_traffic_pass', 1, 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Limited Traffic Zone Pass - Internal Servlet</property>
<property key="it">Pass ZTL - Internal Servlet</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('public_api', 'online_services', 4, 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Public API</property>
<property key="it">API Pubblica</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('informations', 'homepage', 3, 'entando-page-bootstrap-hero', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Info</property>
<property key="it">Info</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');


INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish a Content</property>
<property key="it">Contenuti - Pubblica un Contenuto</property>
</properties>', '<config>
	<parameter name="contentId">
		Content ID
	</parameter>
	<parameter name="modelId">
		Content Model ID
	</parameter>
	<action name="viewerConfig"/>
</config>', 'jacms', NULL, NULL, 1, NULL);
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
</properties>', NULL, NULL, NULL, NULL, 1, NULL);
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
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('entando-widget-language_choose', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Choose a Language</property>
<property key="it">Choose a Language</property>
</properties>', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('entando-widget-login_form', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Dropdown Sign In</property>
<property key="it">Dropdown Sign In</property>
</properties>', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation - Bar</property>
<property key="it">Navigazione - Barra Orizzontale</property>
</properties>', '<config>
	<parameter name="navSpec">Rules for the Page List auto-generation</parameter>
	<action name="navigatorConfig" />
</config>', NULL, NULL, NULL, 1, NULL);
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('entando-widget-navigation_breadcrumbs', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation - Breadcrumbs</property>
<property key="it">Navigazione - Briciole di Pane</property>
</properties>', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation - Vertical Menu</property>
<property key="it">Navigazione - Menù Verticale</property>
</properties>', '<config>
	<parameter name="navSpec">Rules for the Page List auto-generation</parameter>
	<action name="navigatorConfig" />
</config>', NULL, NULL, NULL, 1, NULL);
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('entando-widget-search_form', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search Form</property>
<property key="it">Search Form</property>
</properties>', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish a List of Contents</property>
<property key="it">Contenuti - Pubblica una Lista di Contenuti</property>
</properties>', '<config>
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
</config>', 'jacms', NULL, NULL, 1, NULL);
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
</properties>', NULL, NULL, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
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
</properties>', 0, 'free');
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
</properties>', NULL, NULL, NULL, NULL, 1, NULL);
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
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked) VALUES ('userprofile_editCurrentUser', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit Current User</property>
<property key="it">Edita Utente Corrente</property>
</properties>', NULL, NULL, 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/CurrentUser/edit.action</property>
</properties>', 1);
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked) VALUES ('userprofile_editCurrentUser_password', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit Current User Password</property>
<property key="it">Edita Password Utente Corrente</property>
</properties>', NULL, NULL, 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/CurrentUser/editPassword.action</property>
</properties>', 1);
INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked) VALUES ('userprofile_editCurrentUser_profile', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit Current User Profile</property>
<property key="it">Edita Profilo Utente Corrente</property>
</properties>', NULL, NULL, 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/CurrentUser/Profile/edit.action</property>
</properties>', 1);


INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('news', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('news', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('news', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('news', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('news', 4, 'entando-widget-navigation_breadcrumbs', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('news', 11, 'NWS_Archive', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('homepage', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('homepage', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('homepage', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('homepage', 5, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG18</property>
<property key="modelId">10012</property>
</properties>

', 'CNG18');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('homepage', 24, 'URP_Public_Relations_Office', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('announcements', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('announcements', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('announcements', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('announcements', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('announcements', 4, 'entando-widget-navigation_breadcrumbs', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('announcements', 11, 'ANN_Archive', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('resolutions', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('resolutions', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('resolutions', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('resolutions', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('resolutions', 4, 'entando-widget-navigation_breadcrumbs', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('resolutions', 11, 'RSL_Archive', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('homepage', 9, 'RSL_Latest', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('search_result', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('search_result', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('search_result', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('search_result', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('search_result', 7, 'search_result', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('announcements_read', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('announcements_read', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('announcements_read', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('announcements_read', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('announcements_read', 4, 'entando-widget-navigation_breadcrumbs', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('announcements_read', 5, 'entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('announcements_read', 11, 'content_viewer', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('resolutions_read', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('resolutions_read', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('resolutions_read', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('resolutions_read', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('resolutions_read', 4, 'entando-widget-navigation_breadcrumbs', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('resolutions_read', 5, 'entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('resolutions_read', 11, 'content_viewer', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('news_read', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('news_read', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('news_read', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('news_read', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('news_read', 4, 'entando-widget-navigation_breadcrumbs', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('news_read', 5, 'entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('news_read', 11, 'content_viewer', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('contents_read', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('contents_read', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('contents_read', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('contents_read', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('contents_read', 5, 'content_viewer', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('mayor', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('mayor', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('mayor', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('mayor', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('mayor', 24, 'URP_Public_Relations_Office', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('council', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('council', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('council', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('council', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('council', 24, 'URP_Public_Relations_Office', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('council', 7, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG43</property>
<property key="modelId">10001</property>
</properties>

', 'CNG43');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('municipal_council', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('municipal_council', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('municipal_council', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('municipal_council', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('municipal_council', 24, 'URP_Public_Relations_Office', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('statute', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('statute', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('statute', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('statute', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('statute', 24, 'URP_Public_Relations_Office', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('news', 5, 'entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(informations).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('announcements', 5, 'entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(informations).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('resolutions', 5, 'entando-widget-navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(informations).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('documents', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('documents', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('documents', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('documents', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('documents', 24, 'URP_Public_Relations_Office', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('download', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('download', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('download', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('download', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('download', 7, 'content_viewer', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('documents', 7, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">15</property>
<property key="title_it">Documenti</property>
<property key="categories">documents</property>
<property key="filters">(order=ASC;attributeFilter=true;key=Title)</property>
<property key="title_en">Documents</property>
<property key="contentType">DLD</property>
<property key="modelId">10031</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('self_certifications', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('self_certifications', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('self_certifications', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('self_certifications', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('self_certifications', 24, 'URP_Public_Relations_Office', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('self_certifications', 7, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">15</property>
<property key="title_it">Autocertificazioni</property>
<property key="categories">selcf_certifications</property>
<property key="filters">(order=ASC;attributeFilter=true;key=Title)</property>
<property key="title_en">Self Certifications</property>
<property key="contentType">DLD</property>
<property key="modelId">10031</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('old_town_traffic_pass', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('old_town_traffic_pass', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('old_town_traffic_pass', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('old_town_traffic_pass', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('old_town_traffic_pass', 24, 'URP_Public_Relations_Office', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('old_town_traffic_pass', 15, 'card_list', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('old_town_traffic_pass', 7, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG55</property>
<property key="modelId">10001</property>
</properties>

', 'CNG55');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('old_town_traffic_pass_intservl', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('old_town_traffic_pass_intservl', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('old_town_traffic_pass_intservl', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('old_town_traffic_pass_intservl', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('old_town_traffic_pass_intservl', 24, 'URP_Public_Relations_Office', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('old_town_traffic_pass_intservl', 15, 'card_list_detail', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('old_town_traffic_pass_intservl', 7, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG56</property>
<property key="modelId">10001</property>
</properties>

', 'CNG56');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('login', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('login', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('login', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('login', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('login', 7, 'login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('notfound', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('notfound', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('notfound', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('notfound', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('notfound', 7, 'messages_system', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('errorpage', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('errorpage', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('errorpage', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('errorpage', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('errorpage', 7, 'messages_system', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('mayor', 7, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG41</property>
<property key="modelId">10014</property>
</properties>

', 'CNG41');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('public_api', 0, 'entando-widget-language_choose', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('public_api', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('public_api', 2, 'entando-widget-search_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('public_api', 3, 'entando-widget-login_form', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('homepage', 1, 'entando-widget-navigation_bar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage) + code(municipality).subtree(1) + code(informations).subtree(1) + code(online_services).subtree(1)</property>
</properties>

', NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('homepage', 10, 'NWS_Latest', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('homepage', 8, 'ANN_Latest', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('public_api', 16, 'entando_apis', NULL, NULL);
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('public_api', 15, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG72</property>
<property key="modelId">10001</property>
</properties>

', 'CNG72');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('statute', 7, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG46</property>
<property key="modelId">10014</property>
</properties>

', 'CNG46');
INSERT INTO widgetconfig (pagecode, framepos, widgetcode, config, publishedcontent) VALUES ('municipal_council', 7, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG44</property>
<property key="modelId">10014</property>
</properties>

', 'CNG44');


INSERT INTO uniquekeys (id, keyvalue) VALUES (1, 74);


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
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('ANN20', 'ANN', 'Announcement for special maintenance Nautical Institute', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN20" typecode="ANN" typedescr="Announcement"><descr>Announcement for special maintenance Nautical Institute</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="it">Bando di gara per l''esecuzione dei Lavori per la manutenzione dell''Istituto Nautico</text><text lang="en">Announcement for special maintenance Nautical Institute.</text></attribute><attribute name="StartDate" attributetype="Date"><date>20130303</date></attribute><attribute name="EndDate" attributetype="Date"><date>20131114</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Bando di gara per l&#39;esecuzione dei &quot;Lavori per la manutenzione straordinaria dell&#39;Istituto Nautico, per la realizzazione di laboratorio informatico&quot;.</p>
<p>
	Appalto n. 3 anno 2009 - Procedura Aperta</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Announcement for special maintenance of Nautical Institute. Realization of a computer lab on the first floor of the institute.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="19" lang="en" /><text lang="it">Bando</text><text lang="en">Announcement for maintenance Nautical Institute</text></attribute></list></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20121017110305</created><lastModified>20121017110305</lastModified></content>
', '20121017110305', '20121017110305', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN20" typecode="ANN" typedescr="Announcement"><descr>Announcement for special maintenance Nautical Institute</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="it">Bando di gara per l''esecuzione dei Lavori per la manutenzione dell''Istituto Nautico</text><text lang="en">Announcement for special maintenance Nautical Institute.</text></attribute><attribute name="StartDate" attributetype="Date"><date>20130303</date></attribute><attribute name="EndDate" attributetype="Date"><date>20131114</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Bando di gara per l&#39;esecuzione dei &quot;Lavori per la manutenzione straordinaria dell&#39;Istituto Nautico, per la realizzazione di laboratorio informatico&quot;.</p>
<p>
	Appalto n. 3 anno 2009 - Procedura Aperta</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Announcement for special maintenance of Nautical Institute. Realization of a computer lab on the first floor of the institute.</p>
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
<content id="RSL26" typecode="RSL" typedescr="Resolution"><descr>Resolution 15</descr><groups mainGroup="free" /><categories><category id="resolutions_council" /></categories><attributes><attribute name="Number" attributetype="Number"><number>15</number></attribute><attribute name="Date" attributetype="Date"><date>20130716</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Approvazione programma di incarichi di consulenza autonoma nel settore turistico</text><text lang="en">Approval for charge of consultant program in tourism sector for 2013.</text></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Approvazione programma di&nbsp; incarichi di consulenza autonoma nel settore turistico &ndash; lavori pubblici &ndash; servizi tecnologici, per l&#39;anno 2013.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Approval for charge of consultant program in tourism sector for 2013.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="25" lang="en" /><text lang="it">Delibera del Consiglio Comunale numero 15 del 09 Luglio 2011</text><text lang="en">Resolution 15</text></attribute></list></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018153131</created><lastModified>20130314131754</lastModified></content>
', '20121018153131', '20130314131754', '<?xml version="1.0" encoding="UTF-8"?>
<content id="RSL26" typecode="RSL" typedescr="Resolution"><descr>Resolution 15</descr><groups mainGroup="free" /><categories><category id="resolutions_council" /></categories><attributes><attribute name="Number" attributetype="Number"><number>15</number></attribute><attribute name="Date" attributetype="Date"><date>20130716</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Approvazione programma di incarichi di consulenza autonoma nel settore turistico</text><text lang="en">Approval for charge of consultant program in tourism sector for 2013.</text></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Approvazione programma di&nbsp; incarichi di consulenza autonoma nel settore turistico &ndash; lavori pubblici &ndash; servizi tecnologici, per l&#39;anno 2013.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Approval for charge of consultant program in tourism sector for 2013.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="25" lang="en" /><text lang="it">Delibera del Consiglio Comunale numero 15 del 09 Luglio 2011</text><text lang="en">Resolution 15</text></attribute></list></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018153131</created><lastModified>20130314131754</lastModified></content>
', 'free', '2.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('RSL28', 'RSL', 'Resolution 120', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="RSL28" typecode="RSL" typedescr="Resolution"><descr>Resolution 120</descr><groups mainGroup="free" /><categories><category id="resolutions_giunta" /><category id="documents" /></categories><attributes><attribute name="Number" attributetype="Number"><number>120</number></attribute><attribute name="Date" attributetype="Date"><date>20130701</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Organizzazione della manifestazione "Festival della canzone popolare” III Edizione.</text><text lang="en">Organization of the event "Folk Music Festival" III Edition.</text></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Organizzazione della manifestazione &quot;Festival della canzone popolare&rdquo; III Edizione che si terr&agrave; a Villamarina&nbsp; nei mesi di Agosto e Settembre 2013.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Organization of the event &quot;Folk Music Festival&quot; III edition to be held in Villamarina in the months of August and September 2013.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="27" lang="en" /><text lang="it">Delibera della Giunta Comunale numero 120 dell'' 8 Luglio 2013</text><text lang="en">Resolution 120</text></attribute></list></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018153416</created><lastModified>20130314132121</lastModified></content>
', '20121018153416', '20130314132121', '<?xml version="1.0" encoding="UTF-8"?>
<content id="RSL28" typecode="RSL" typedescr="Resolution"><descr>Resolution 120</descr><groups mainGroup="free" /><categories><category id="resolutions_giunta" /><category id="documents" /></categories><attributes><attribute name="Number" attributetype="Number"><number>120</number></attribute><attribute name="Date" attributetype="Date"><date>20130701</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Organizzazione della manifestazione "Festival della canzone popolare” III Edizione.</text><text lang="en">Organization of the event "Folk Music Festival" III Edition.</text></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Organizzazione della manifestazione &quot;Festival della canzone popolare&rdquo; III Edizione che si terr&agrave; a Villamarina&nbsp; nei mesi di Agosto e Settembre 2013.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Organization of the event &quot;Folk Music Festival&quot; III edition to be held in Villamarina in the months of August and September 2013.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="27" lang="en" /><text lang="it">Delibera della Giunta Comunale numero 120 dell'' 8 Luglio 2013</text><text lang="en">Resolution 120</text></attribute></list></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018153416</created><lastModified>20130314132121</lastModified></content>
', 'free', '2.0', 'admin');
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
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NWS39', 'NWS', 'Online the Portal of Entando Town', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS39" typecode="NWS" typedescr="News"><descr>Online the Portal of Entando Town</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20130329</date></attribute><attribute name="Title" attributetype="Text"><text lang="it">Online il Portale del Comune di Entando Town</text><text lang="en">Online the Portal of Entando Town</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Online il Portale del Comune di Entando Town realizzato con la piattaforma <strong>Entando</strong>.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Online the Portal of Entando Town, built with the <strong>Entando - Simplifying Enterprise Portals</strong>.</p>
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
	Online the Portal of Entando Town, built with the <strong>Entando - Simplifying Enterprise Portals</strong>.</p>
<p>
	In the institutional portal you can find all the information relating to the municipality and its activities: the offices, decisions and results.</p>
<p>
	The new portal is designed to respond to the expectations of citizens who every day are connected to find news and updated information.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image"><resource resourcetype="Image" id="38" lang="en" /><text lang="it">Una spiaggia, e il mare smeraldino della Sardegna</text><text lang="en">A beach, the emerald sea of Sardinia</text></attribute><attribute name="Caption" attributetype="Text"><text lang="it">Uno scorcio incantevole di Entando Town</text><text lang="en">A beautiful view of Entando Town</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018160819</created><lastModified>20130314130734</lastModified></content>
', '20121018160819', '20130314130734', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS39" typecode="NWS" typedescr="News"><descr>Online the Portal of Entando Town</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20130329</date></attribute><attribute name="Title" attributetype="Text"><text lang="it">Online il Portale del Comune di Entando Town</text><text lang="en">Online the Portal of Entando Town</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Online il Portale del Comune di Entando Town realizzato con la piattaforma <strong>Entando</strong>.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Online the Portal of Entando Town, built with the <strong>Entando - Simplifying Enterprise Portals</strong>.</p>
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
	Online the Portal of Entando Town, built with the <strong>Entando - Simplifying Enterprise Portals</strong>.</p>
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
<content id="ANN57" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 1</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 1.</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', '20130115182926', '20130115182926', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN57" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 1</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 1.</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('ANN58', 'ANN', 'Sample - Announcement 2', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN58" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 2</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 2.</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', '20130115182926', '20130115182926', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN58" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 2</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 2.</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('ANN59', 'ANN', 'Sample - Announcement 3', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN59" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 3</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 3.</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', '20130115182926', '20130115182926', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN59" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 3</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 3.</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('ANN60', 'ANN', 'Sample - Announcement 4', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN60" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 4</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 4.</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', '20130115182926', '20130115182926', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN60" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 4</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 4.</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('ANN61', 'ANN', 'Sample - Announcement 5', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN61" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 5</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 5.</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', '20130115182926', '20130115182926', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN61" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 5</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 5.</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182926</created><lastModified>20130115182926</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('ANN62', 'ANN', 'Sample - Announcement 6', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN62" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 6</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 6.</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', '20130115182927', '20130115182927', '<?xml version="1.0" encoding="UTF-8"?>
<content id="ANN62" typecode="ANN" typedescr="Announcement"><descr>Sample - Announcement 6</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Longtext"><text lang="en">Lorem ipsum for the management of dolor sit amet - 6.</text></attribute><attribute name="StartDate" attributetype="Date"><date>20120621</date></attribute><attribute name="EndDate" attributetype="Date"><date>20120831</date></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Quinoa cardigan bushwick, non PBR aesthetic aliqua.<br /> Put a bird on it artisan terry richardson in, skateboard delectus food truck irure.</p> <p> Fugiat godard odd future scenester messenger bag ut readymade qui.</p>
			
			]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NWS63', 'NWS', 'Sample - News 1', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS63" typecode="NWS" typedescr="News"><descr>Sample - News 1</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news 1</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers salvia vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', '20130115182927', '20130115182927', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS63" typecode="NWS" typedescr="News"><descr>Sample - News 1</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news 1</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers salvia vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NWS64', 'NWS', 'Sample - News 2', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS64" typecode="NWS" typedescr="News"><descr>Sample - News 2</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news 2</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers salvia vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', '20130115182927', '20130115182927', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS64" typecode="NWS" typedescr="News"><descr>Sample - News 2</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news 2</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers salvia vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NWS65', 'NWS', 'Sample - News 3', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS65" typecode="NWS" typedescr="News"><descr>Sample - News 3</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news 3</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers salvia vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', '20130115182927', '20130115182927', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS65" typecode="NWS" typedescr="News"><descr>Sample - News 3</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news 3</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers salvia vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NWS66', 'NWS', 'Sample - News 4', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS66" typecode="NWS" typedescr="News"><descr>Sample - News 4</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news 4</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers salvia vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', '20130115182927', '20130115182927', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS66" typecode="NWS" typedescr="News"><descr>Sample - News 4</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news 4</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers salvia vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NWS67', 'NWS', 'Sample - News 5', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS67" typecode="NWS" typedescr="News"><descr>Sample - News 5</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news 5</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers salvia vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', '20130115182927', '20130115182927', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS67" typecode="NWS" typedescr="News"><descr>Sample - News 5</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news 5</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers salvia vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182927</created><lastModified>20130115182927</lastModified></content>
', 'free', '1.0', NULL);
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NWS68', 'NWS', 'Sample - News 6', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS68" typecode="NWS" typedescr="News"><descr>Sample - News 6</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news 6</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers salvia vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
			]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Link" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando.com</text></attribute></list><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><created>20130115182928</created><lastModified>20130115182928</lastModified></content>
', '20130115182928', '20130115182928', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NWS68" typecode="NWS" typedescr="News"><descr>Sample - News 6</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Date" attributetype="Date"><date>20120613</date></attribute><attribute name="Title" attributetype="Text"><text lang="en">Here come the news 6</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p>
			
			]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[
			
			<p> Scenester farm-to-table, ethical pinterest DIY quinoa before they sold out cardigan. Wolf sriracha portland ethical freegan. Fingerstache locavore +1 selvage chambray. Flexitarian umami cray quinoa raw denim whatever. American apparel viral vegan DIY polaroid, cosby sweater etsy williamsburg +1 bicycle rights whatever PBR hoodie photo booth. Master cleanse blog mumblecore vice, pork belly fap leggings cosby sweater. Synth whatever put a bird on it lo-fi, stumptown tumblr typewriter helvetica odd future banksy terry richardson post-ironic selvage.</p> <p> Mustache brunch single-origin coffee, pitchfork hoodie messenger bag freegan fixie fingerstache twee ethical pour-over. Stumptown lomo DIY art party organic next level. Squid cliche gentrify mustache. American apparel chambray leggings PBR pour-over skateboard. Mcsweeney&#39;s next level retro tumblr, ethical fanny pack beard. Put a bird on it mustache art party, biodiesel banh mi artisan direct trade thundercats trust fund wayfarers salvia vice authentic. Lo-fi chillwave small batch, organic pour-over williamsburg VHS narwhal leggings ennui ethnic tofu.</p>
			
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
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG18', 'CNG', 'Welcome', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG18" typecode="CNG" typedescr="Generic Content"><descr>Welcome</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Welcome!</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	Entando Town is a demo portal built with Entando.</p>
<p>
	With this demo you can have a flavour of a bootstrap framework.<br />
	In addition you will benefit from the responsive design feature....simply try to resize the window of your browser or to load this page from a mobile device to appreciate the responsive design capabilities.</p>
<p>
	What are you waiting for?<br />
	Try the Administration Area using the <strong>Sign in</strong> drop-down up there in the top bar with the following account:</p>
<p>
	Username: <strong>admin</strong><br />
	Password: <strong>adminadmin</strong></p>
<p>
	Enjoy Entando!</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	Entando Town is a demo portal built with Entando.</p>
<p>
	With this demo you can have a flavour of a bootstrap framework.<br />
	In addition you will benefit from the responsive design feature....simply try to resize the window of your browser or to load this page from a mobile device to appreciate the responsive design capabilities.</p>
<p>
	What are you waiting for?<br />
	Try the Administration Area!</p>
<p>
	Use the <strong>Sign in</strong> drop-down up there in the top bar with the following account:</p>
<p>
	Username: <strong>admin&nbsp;</strong><br />
	Password: <strong>adminadmin</strong></p>
<p>
	Find out how many things you can customize, create a new content, a new page or even your own user.</p>
<p>
	Enjoy Entando!</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image"><resource resourcetype="Image" id="17" lang="en" /><text lang="en">Official plaque</text></attribute><attribute name="Caption" attributetype="Text"><text lang="en">Entando Town portal new look</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>7.0</version><lastEditor>admin</lastEditor><created>20121010173248</created><lastModified>20130314141043</lastModified></content>
', '20121010173248', '20130314141043', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG18" typecode="CNG" typedescr="Generic Content"><descr>Welcome</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Welcome!</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	Entando Town is a demo portal built with Entando.</p>
<p>
	With this demo you can have a flavour of a bootstrap framework.<br />
	In addition you will benefit from the responsive design feature....simply try to resize the window of your browser or to load this page from a mobile device to appreciate the responsive design capabilities.</p>
<p>
	What are you waiting for?<br />
	Try the Administration Area using the <strong>Sign in</strong> drop-down up there in the top bar with the following account:</p>
<p>
	Username: <strong>admin</strong><br />
	Password: <strong>adminadmin</strong></p>
<p>
	Enjoy Entando!</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	Entando Town is a demo portal built with Entando.</p>
<p>
	With this demo you can have a flavour of a bootstrap framework.<br />
	In addition you will benefit from the responsive design feature....simply try to resize the window of your browser or to load this page from a mobile device to appreciate the responsive design capabilities.</p>
<p>
	What are you waiting for?<br />
	Try the Administration Area!</p>
<p>
	Use the <strong>Sign in</strong> drop-down up there in the top bar with the following account:</p>
<p>
	Username: <strong>admin&nbsp;</strong><br />
	Password: <strong>adminadmin</strong></p>
<p>
	Find out how many things you can customize, create a new content, a new page or even your own user.</p>
<p>
	Enjoy Entando!</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image"><resource resourcetype="Image" id="17" lang="en" /><text lang="en">Official plaque</text></attribute><attribute name="Caption" attributetype="Text"><text lang="en">Entando Town portal new look</text></attribute><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>7.0</version><lastEditor>admin</lastEditor><created>20121010173248</created><lastModified>20130314141043</lastModified></content>
', 'free', '7.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG40', 'CNG', 'Public Relations Office', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG40" typecode="CNG" typedescr="Generic Content"><descr>Public Relations Office</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">URP - Ufficio Relazioni con il Pubblico</text><text lang="en">Public Relations Office</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Telefono: <strong>+39070240053</strong><br />
	E-mail: <strong>info@entando.com</strong></p>
<p>
	Orario di Ricevimento:<br />
	dal <strong>Luned&igrave;</strong>&nbsp;al&nbsp;<strong>Venerd&igrave;</strong>: dalle <strong>8.00 </strong>alle&nbsp;<strong>13</strong>.<strong>00</strong><br />
	<strong>Marted&igrave;</strong> e <strong>Mercoled&igrave;</strong>: dalle <strong>15.00 </strong>alle&nbsp;<strong>17.00</strong></p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Phone: <strong>+39070240053</strong><br />
	E-mail: <strong>info@entando.com</strong></p>
<p>
	Open:<br />
	from <strong>Monday</strong> to <strong>Friday</strong>: <strong>8.00 a.m.</strong> to <strong>1.00 p.m.</strong><br />
	<strong>Tuesday</strong>&nbsp;and&nbsp;<strong>Wednesday</strong>: <strong>4.00 p.m.</strong> to <strong>5.00 p.m.</strong></p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Telefono: <strong>+39070240053</strong><br />
	E-mail: <strong>info@entando.com</strong></p>
<p>
	Orario di Ricevimento:<br />
	dal <strong>Luned&igrave;</strong>&nbsp;al&nbsp;<strong>Venerd&igrave;</strong>: dalle <strong>8.00</strong> alle&nbsp;<strong>13.00</strong><br />
	<strong>Marted&igrave;</strong> e <strong>Mercoled&igrave;</strong>: dalle <strong>15.00</strong> alle&nbsp;<strong>17.00</strong></p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Phone: <strong>+39070240053</strong><br />
	E-mail: <strong>info@entando.com</strong></p>
<p>
	Open:<br />
	from <strong>Monday</strong> to <strong>Friday</strong>: <strong>8.00 a.m.</strong> to <strong>1.00 p.m.</strong><br />
	<strong>Tuesday</strong>&nbsp;and&nbsp;<strong>Wednesday</strong>: <strong>3.00 p.m.</strong> to <strong>5.00 p.m.</strong></p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20121122184256</created><lastModified>20130314145742</lastModified></content>
', '20121122184256', '20130314145742', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG40" typecode="CNG" typedescr="Generic Content"><descr>Public Relations Office</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">URP - Ufficio Relazioni con il Pubblico</text><text lang="en">Public Relations Office</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Telefono: <strong>+39070240053</strong><br />
	E-mail: <strong>info@entando.com</strong></p>
<p>
	Orario di Ricevimento:<br />
	dal <strong>Luned&igrave;</strong>&nbsp;al&nbsp;<strong>Venerd&igrave;</strong>: dalle <strong>8.00 </strong>alle&nbsp;<strong>13</strong>.<strong>00</strong><br />
	<strong>Marted&igrave;</strong> e <strong>Mercoled&igrave;</strong>: dalle <strong>15.00 </strong>alle&nbsp;<strong>17.00</strong></p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Phone: <strong>+39070240053</strong><br />
	E-mail: <strong>info@entando.com</strong></p>
<p>
	Open:<br />
	from <strong>Monday</strong> to <strong>Friday</strong>: <strong>8.00 a.m.</strong> to <strong>1.00 p.m.</strong><br />
	<strong>Tuesday</strong>&nbsp;and&nbsp;<strong>Wednesday</strong>: <strong>4.00 p.m.</strong> to <strong>5.00 p.m.</strong></p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Telefono: <strong>+39070240053</strong><br />
	E-mail: <strong>info@entando.com</strong></p>
<p>
	Orario di Ricevimento:<br />
	dal <strong>Luned&igrave;</strong>&nbsp;al&nbsp;<strong>Venerd&igrave;</strong>: dalle <strong>8.00</strong> alle&nbsp;<strong>13.00</strong><br />
	<strong>Marted&igrave;</strong> e <strong>Mercoled&igrave;</strong>: dalle <strong>15.00</strong> alle&nbsp;<strong>17.00</strong></p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Phone: <strong>+39070240053</strong><br />
	E-mail: <strong>info@entando.com</strong></p>
<p>
	Open:<br />
	from <strong>Monday</strong> to <strong>Friday</strong>: <strong>8.00 a.m.</strong> to <strong>1.00 p.m.</strong><br />
	<strong>Tuesday</strong>&nbsp;and&nbsp;<strong>Wednesday</strong>: <strong>3.00 p.m.</strong> to <strong>5.00 p.m.</strong></p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20121122184256</created><lastModified>20130314145742</lastModified></content>
', 'free', '3.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('RSL32', 'RSL', 'Resolution 133', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="RSL32" typecode="RSL" typedescr="Resolution"><descr>Resolution 133</descr><groups mainGroup="free" /><categories><category id="resolutions_giunta" /></categories><attributes><attribute name="Number" attributetype="Number"><number>133</number></attribute><attribute name="Date" attributetype="Date"><date>20130130</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Manutenzione straordinaria Istituto Nautico - Lavori per la realizzazione di laboratorio informatico.</text><text lang="en">Special maintenance of Nautical Institute.</text></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Manutenzione straordinaria Istituto Nautico. Lavori per la realizzazione di un laboratorio informatico nel primo piano dell&#39;istituto.</p>
<p>
	Approvazione progetto definitivo - esecutivo.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Special maintenance of Nautical Institute. Realization of a computer lab on the first floor of the institute.</p>
<p>
	Approval of final project.</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Documents" nestedtype="Attach"><attribute name="Documents" attributetype="Attach"><resource resourcetype="Attach" id="31" lang="en" /><text lang="it">Delibera della Giunta Comunale numero 133 del 20 Luglio 2011</text><text lang="en">Resolution 133</text></attribute></list></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20121018153757</created><lastModified>20130314131648</lastModified></content>
', '20121018153757', '20130314131648', '<?xml version="1.0" encoding="UTF-8"?>
<content id="RSL32" typecode="RSL" typedescr="Resolution"><descr>Resolution 133</descr><groups mainGroup="free" /><categories><category id="resolutions_giunta" /></categories><attributes><attribute name="Number" attributetype="Number"><number>133</number></attribute><attribute name="Date" attributetype="Date"><date>20130130</date></attribute><attribute name="Title" attributetype="Longtext"><text lang="it">Manutenzione straordinaria Istituto Nautico - Lavori per la realizzazione di laboratorio informatico.</text><text lang="en">Special maintenance of Nautical Institute.</text></attribute><attribute name="Summary" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
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
	The API Engine allows to expose information, contents of the CMS and platform services, through REST interfaces. Each resource can be exposed through the operations of research, creation, modification and deletion. Each API resource is also protected by an authorization check, through the use of OAuth protocol, whose policies are configurable by the administrator of the system.</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	The API Engine allows to expose information, contents of the CMS and platform services, through REST interfaces. Each resource can be exposed through the operations of research, creation, modification and deletion. Each API resource is also protected by an authorization check, through the use of OAuth protocol, whose policies are configurable by the administrator of the system.</p>
]]></hypertext></attribute><attribute name="Picture" attributetype="Image" /><attribute name="Caption" attributetype="Text" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><list attributetype="Monolist" name="Attaches" nestedtype="Attach" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>admin</lastEditor><created>20130314132427</created><lastModified>20130314132427</lastModified></content>
', '20130314132427', '20130314132427', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG72" typecode="CNG" typedescr="Generic Content"><descr>APIs</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">APIs</text></attribute><attribute name="Abstract" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	The API Engine allows to expose information, contents of the CMS and platform services, through REST interfaces. Each resource can be exposed through the operations of research, creation, modification and deletion. Each API resource is also protected by an authorization check, through the use of OAuth protocol, whose policies are configurable by the administrator of the system.</p>
]]></hypertext></attribute><attribute name="MainBody" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	The API Engine allows to expose information, contents of the CMS and platform services, through REST interfaces. Each resource can be exposed through the operations of research, creation, modification and deletion. Each API resource is also protected by an authorization check, through the use of OAuth protocol, whose policies are configurable by the administrator of the system.</p>
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


INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('38', 'Image', 'A beautiful view of Entando Town', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="38"><descr>A beautiful view of Entando Town</descr><groups mainGroup="free" /><categories /><masterfile>Immagine1.jpg</masterfile><instance><size>3</size><filename>Immagine1_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>6 Kb</weight></instance><instance><size>2</size><filename>Immagine1_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>5 Kb</weight></instance><instance><size>1</size><filename>Immagine1_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>0</size><filename>Immagine1_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>3444 Kb</weight></instance></resource>
', 'Immagine1.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('17', 'Image', 'Stemma', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="17"><descr>Stemma</descr><groups mainGroup="free" /><categories /><masterfile>Building.png</masterfile><instance><size>3</size><filename>Building_d3.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>2</size><filename>Building_d2.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>1</size><filename>Building_d1.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>0</size><filename>Building_d0.png</filename><mimetype>image/png</mimetype><weight>3 Kb</weight></instance></resource>
', 'Building.png');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('45', 'Attach', 'Statute', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="45"><descr>Statute</descr><groups mainGroup="free" /><categories /><masterfile>Entando_Statute.pdf</masterfile><instance><size>0</size><filename>Entando_Statute.pdf</filename><mimetype>application/pdf</mimetype><weight>289 Kb</weight></instance></resource>
', 'Entando_Statute.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('27', 'Attach', 'Resolution 120', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="27"><descr>Resolution 120</descr><groups mainGroup="free" /><categories /><masterfile>Resolution 120.pdf</masterfile><instance><size>0</size><filename>Resolution 120.pdf</filename><mimetype>application/pdf</mimetype><weight>288 Kb</weight></instance></resource>
', 'Resolution 120.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('21', 'Attach', 'Announcement for supply of stationery and accessories', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="21"><descr>Announcement for supply of stationery and accessories</descr><groups mainGroup="free" /><categories /><masterfile>Entando_Announcement_Supply_Stationery.pdf</masterfile><instance><size>0</size><filename>Entando_Announcement_Supply_Stationery.pdf</filename><mimetype>application/pdf</mimetype><weight>290 Kb</weight></instance></resource>
', 'Entando_Announcement_Supply_Stationery.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('19', 'Attach', 'Announcement for special maintenance Nautical Institute', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="19"><descr>Announcement for special maintenance Nautical Institute</descr><groups mainGroup="free" /><categories /><masterfile>Entando_Announcement_Maintenance_Nautical_Institute.pdf</masterfile><instance><size>0</size><filename>Entando_Announcement_Maintenance_Nautical_Institute.pdf</filename><mimetype>application/pdf</mimetype><weight>289 Kb</weight></instance></resource>
', 'Entando_Announcement_Maintenance_Nautical_Institute.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('49', 'Attach', 'Tax - Request ICI refund', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="49"><descr>Tax - Request ICI refund</descr><groups mainGroup="free" /><categories /><masterfile>Tax - Request ICI refund.pdf</masterfile><instance><size>0</size><filename>Tax - Request ICI refund.pdf</filename><mimetype>application/pdf</mimetype><weight>289 Kb</weight></instance></resource>
', 'Tax - Request ICI refund.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('47', 'Attach', 'Request Identity Card valid for foreign travel', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="47"><descr>Request Identity Card valid for foreign travel</descr><groups mainGroup="free" /><categories /><masterfile>Request Identity Card valid for foreign travel.pdf</masterfile><instance><size>0</size><filename>Request Identity Card valid for foreign travel.pdf</filename><mimetype>application/pdf</mimetype><weight>290 Kb</weight></instance></resource>
', 'Request Identity Card valid for foreign travel.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('36', 'Attach', 'Ground Rent Contribution', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="36"><descr>Ground Rent Contribution</descr><groups mainGroup="free" /><categories /><masterfile>Entando_Ground_Rent_Contribution.pdf</masterfile><instance><size>0</size><filename>Entando_Ground_Rent_Contribution.pdf</filename><mimetype>application/pdf</mimetype><weight>288 Kb</weight></instance></resource>
', 'Entando_Ground_Rent_Contribution.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('31', 'Attach', 'Resolution 133', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="31"><descr>Resolution 133</descr><groups mainGroup="free" /><categories /><masterfile>Resolution 133.pdf</masterfile><instance><size>0</size><filename>Resolution 133.pdf</filename><mimetype>application/pdf</mimetype><weight>288 Kb</weight></instance></resource>
', 'Resolution 133.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('25', 'Attach', 'Resolution 15', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="25"><descr>Resolution 15</descr><groups mainGroup="free" /><categories /><masterfile>Resolution 15.pdf</masterfile><instance><size>0</size><filename>Resolution 15.pdf</filename><mimetype>application/pdf</mimetype><weight>288 Kb</weight></instance></resource>
', 'Resolution 15.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('29', 'Attach', 'Resolution 20', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="29"><descr>Resolution 20</descr><groups mainGroup="free" /><categories /><masterfile>Resolution 20.pdf</masterfile><instance><size>0</size><filename>Resolution 20.pdf</filename><mimetype>application/pdf</mimetype><weight>288 Kb</weight></instance></resource>
', 'Resolution 20.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('51', 'Attach', 'Civil Status Self Certification Form', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="51"><descr>Civil Status Self Certification Form</descr><groups mainGroup="free" /><categories /><masterfile>Entando_Civil_Status_Self_Certification_Form.pdf</masterfile><instance><size>0</size><filename>Entando_Civil_Status_Self_Certification_Form.pdf</filename><mimetype>application/pdf</mimetype><weight>289 Kb</weight></instance></resource>
', 'Entando_Civil_Status_Self_Certification_Form.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('53', 'Attach', 'Residence Self Certification Form', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="53"><descr>Residence Self Certification Form</descr><groups mainGroup="free" /><categories /><masterfile>Residence Self Certification Form.pdf</masterfile><instance><size>0</size><filename>Residence Self Certification Form.pdf</filename><mimetype>application/pdf</mimetype><weight>289 Kb</weight></instance></resource>
', 'Residence Self Certification Form.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('42', 'Image', 'Mayor', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="42"><descr>Mayor</descr><groups mainGroup="free" /><categories /><masterfile>User_icon.png</masterfile><instance><size>3</size><filename>User_icon_d3.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>2</size><filename>User_icon_d2.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>1</size><filename>User_icon_d1.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>0</size><filename>User_icon_d0.png</filename><mimetype>image/png</mimetype><weight>6 Kb</weight></instance></resource>
', 'User_icon.png');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('73', 'Image', 'Council', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="73"><descr>Council</descr><groups mainGroup="free" /><categories /><masterfile>Group_Icon.png</masterfile><instance><size>3</size><filename>Group_Icon_d3.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>2</size><filename>Group_Icon_d2.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>1</size><filename>Group_Icon_d1.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>0</size><filename>Group_Icon_d0.png</filename><mimetype>image/png</mimetype><weight>10 Kb</weight></instance></resource>
', 'Group_Icon.png');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('74', 'Image', 'Entando town Statute', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="74"><descr>Entando town Statute</descr><groups mainGroup="free" /><categories /><masterfile>Statute_icon.png</masterfile><instance><size>3</size><filename>Statute_icon_d3.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>2</size><filename>Statute_icon_d2.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>1</size><filename>Statute_icon_d1.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>0</size><filename>Statute_icon_d0.png</filename><mimetype>image/png</mimetype><weight>3 Kb</weight></instance></resource>
', 'Statute_icon.png');


INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG8', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG9', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG55', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG55', 'old_town_traffic_pass_intservl', NULL, NULL, NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG55', 'old_town_traffic_pass_intservl', NULL, NULL, NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG56', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG70', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG71', NULL, NULL, NULL, NULL, 'free');
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
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD54', NULL, NULL, NULL, 'selcf_certifications', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD54', NULL, NULL, NULL, 'downloads', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD54', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DLD54', NULL, NULL, '53', NULL, NULL);
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
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS63', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS64', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS65', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS66', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS67', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS68', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG41', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG41', NULL, NULL, '42', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS39', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS39', NULL, NULL, '38', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS33', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS34', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL30', NULL, NULL, NULL, 'resolutions_council', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL30', NULL, NULL, NULL, 'resolutions', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL30', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL30', NULL, NULL, '29', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL32', NULL, NULL, NULL, 'resolutions', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL32', NULL, NULL, NULL, 'resolutions_giunta', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL32', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL32', NULL, NULL, '31', NULL, NULL);
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
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG72', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('RSL69', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS37', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NWS37', NULL, NULL, '36', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('ANN24', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG18', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG18', NULL, NULL, '17', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG40', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG43', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG43', NULL, NULL, '73', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG44', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG44', NULL, NULL, '17', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG46', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG46', NULL, NULL, '74', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG46', NULL, NULL, '45', NULL, NULL);


INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG8', 'Title', 'Hello, world!', NULL, 0, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG8', 'Title', 'Hello, world!', NULL, 0, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG9', 'Title', 'Heading', NULL, 0, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG9', 'Title', 'Heading', NULL, 0, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG55', 'Title', 'Application Service Example', NULL, 0, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG55', 'Title', 'Esempio Servizio Applicativo', NULL, 0, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG56', 'Title', 'Internal Servlet', NULL, 0, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG56', 'Title', 'Internal Servlet', NULL, 0, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG70', 'Title', 'Hello, world!', NULL, 0, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG70', 'Title', 'Hello, world!', NULL, 0, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG71', 'Title', 'Heading', NULL, 0, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG71', 'Title', 'Heading', NULL, 0, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD48', 'Title', 'Registry - Request Identity Card valid for foreign travel', NULL, 0, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD48', 'Title', 'Anagrafe - Richiesta Carta Identità valida per espatrio', NULL, 0, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD50', 'Title', 'Tax - Request ICI refund', NULL, 0, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD50', 'Title', 'Tributi - Richiesta rimborso ICI', NULL, 0, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD52', 'Title', 'Civil Status Self Certification Form', NULL, 0, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD52', 'Title', 'Modulo Autocertificazione Stato Civile', NULL, 0, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD54', 'Title', 'Residence Self Certification Form', NULL, 0, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD54', 'Title', 'Modulo Autocertificazione Residenza', NULL, 0, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN20', 'StartDate', NULL, '2013-03-03 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN20', 'EndDate', NULL, '2013-11-14 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN22', 'StartDate', NULL, '2013-02-28 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN22', 'EndDate', NULL, '2013-10-27 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN57', 'StartDate', NULL, '2012-06-21 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN57', 'EndDate', NULL, '2012-08-31 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN58', 'StartDate', NULL, '2012-06-21 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN58', 'EndDate', NULL, '2012-08-31 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN59', 'StartDate', NULL, '2012-06-21 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN59', 'EndDate', NULL, '2012-08-31 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN60', 'StartDate', NULL, '2012-06-21 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN60', 'EndDate', NULL, '2012-08-31 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN61', 'StartDate', NULL, '2012-06-21 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN61', 'EndDate', NULL, '2012-08-31 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN62', 'StartDate', NULL, '2012-06-21 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN62', 'EndDate', NULL, '2012-08-31 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS63', 'Date', NULL, '2012-06-13 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS63', 'Title', 'Here come the news 1', NULL, 0, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS63', 'Title', 'Here come the news 1', NULL, 0, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS64', 'Date', NULL, '2012-06-13 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS64', 'Title', 'Here come the news 2', NULL, 0, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS64', 'Title', 'Here come the news 2', NULL, 0, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS65', 'Date', NULL, '2012-06-13 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS65', 'Title', 'Here come the news 3', NULL, 0, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS65', 'Title', 'Here come the news 3', NULL, 0, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS66', 'Date', NULL, '2012-06-13 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS66', 'Title', 'Here come the news 4', NULL, 0, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS66', 'Title', 'Here come the news 4', NULL, 0, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS67', 'Date', NULL, '2012-06-13 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS67', 'Title', 'Here come the news 5', NULL, 0, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS67', 'Title', 'Here come the news 5', NULL, 0, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS68', 'Date', NULL, '2012-06-13 00:00:00', 0, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS68', 'Title', 'Here come the news 6', NULL, 0, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS68', 'Title', 'Here come the news 6', NULL, 0, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG41', 'Title', 'Mayor', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG41', 'Title', 'Sindaco', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS39', 'Date', NULL, '2013-03-29 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS39', 'Title', 'Online the Portal of Entando Town', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS39', 'Title', 'Online il Portale del Comune di Entando Town', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS33', 'Date', NULL, '2013-03-29 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS33', 'Title', 'The portal embraces responsiveness', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS33', 'Title', 'The portal embraces responsiveness', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS34', 'Date', NULL, '2013-07-20 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS34', 'Title', 'Folk Music Festival', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS34', 'Title', 'Festival della canzone popolare', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL30', 'Number', NULL, NULL, 20, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL30', 'Date', NULL, '2013-10-04 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL32', 'Number', NULL, NULL, 133, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL32', 'Date', NULL, '2013-01-30 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL26', 'Number', NULL, NULL, 15, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL26', 'Date', NULL, '2013-07-16 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL28', 'Number', NULL, NULL, 120, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL28', 'Date', NULL, '2013-07-01 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG72', 'Title', 'APIs', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG72', 'Title', 'APIs', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL69', 'Number', NULL, NULL, 20, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL69', 'Date', NULL, '2013-06-13 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS37', 'Date', NULL, '2013-03-27 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS37', 'Title', 'Ground Rent Contribution', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS37', 'Title', 'Contributo canone di locazione 2013', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN24', 'StartDate', NULL, '2013-02-27 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN24', 'EndDate', NULL, '2013-11-30 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG18', 'Title', 'Welcome!', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG18', 'Title', 'Welcome!', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG40', 'Title', 'Public Relations Office', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG40', 'Title', 'URP - Ufficio Relazioni con il Pubblico', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG43', 'Title', 'Council', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG43', 'Title', 'Giunta Comunale', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG44', 'Title', 'Municipal Council', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG44', 'Title', 'Consiglio Comunale', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG46', 'Title', 'Statute', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG46', 'Title', 'Statuto', NULL, NULL, 'it');


INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG8', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG9', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG41', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG43', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG44', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG55', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG56', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG70', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG71', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG18', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG40', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG72', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('CNG46', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('RSL26', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('RSL28', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('RSL30', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('RSL32', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('RSL69', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('DLD48', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('DLD50', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('DLD52', 'Title', 'jacms:title');
INSERT INTO contentattributeroles (contentid, attrname, rolename) VALUES ('DLD54', 'Title', 'jacms:title');
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


INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD48', 'citizen_registry');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD48', 'documents');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD48', 'downloads');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD50', 'documents');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD50', 'downloads');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD50', 'taxes');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD52', 'selcf_certifications');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD52', 'downloads');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD54', 'selcf_certifications');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('DLD54', 'downloads');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL30', 'resolutions_council');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL30', 'resolutions');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL32', 'resolutions');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL32', 'resolutions_giunta');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL26', 'resolutions_council');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL26', 'resolutions');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL28', 'documents');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL28', 'resolutions');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL28', 'resolutions_giunta');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('RSL28', 'downloads');


INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG8', 'Title', 'Hello, world!', NULL, 0, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG8', 'Title', 'Hello, world!', NULL, 0, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG9', 'Title', 'Heading', NULL, 0, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG9', 'Title', 'Heading', NULL, 0, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG55', 'Title', 'Application Service Example', NULL, 0, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG55', 'Title', 'Esempio Servizio Applicativo', NULL, 0, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG56', 'Title', 'Internal Servlet', NULL, 0, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG56', 'Title', 'Internal Servlet', NULL, 0, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG70', 'Title', 'Hello, world!', NULL, 0, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG70', 'Title', 'Hello, world!', NULL, 0, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG71', 'Title', 'Heading', NULL, 0, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG71', 'Title', 'Heading', NULL, 0, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD48', 'Title', 'Registry - Request Identity Card valid for foreign travel', NULL, 0, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD48', 'Title', 'Anagrafe - Richiesta Carta Identità valida per espatrio', NULL, 0, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD50', 'Title', 'Tax - Request ICI refund', NULL, 0, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD50', 'Title', 'Tributi - Richiesta rimborso ICI', NULL, 0, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD52', 'Title', 'Civil Status Self Certification Form', NULL, 0, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD52', 'Title', 'Modulo Autocertificazione Stato Civile', NULL, 0, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD54', 'Title', 'Residence Self Certification Form', NULL, 0, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DLD54', 'Title', 'Modulo Autocertificazione Residenza', NULL, 0, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN20', 'StartDate', NULL, '2013-03-03 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN20', 'EndDate', NULL, '2013-11-14 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN22', 'StartDate', NULL, '2013-02-28 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN22', 'EndDate', NULL, '2013-10-27 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN57', 'StartDate', NULL, '2012-06-21 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN57', 'EndDate', NULL, '2012-08-31 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN58', 'StartDate', NULL, '2012-06-21 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN58', 'EndDate', NULL, '2012-08-31 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN59', 'StartDate', NULL, '2012-06-21 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN59', 'EndDate', NULL, '2012-08-31 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN60', 'StartDate', NULL, '2012-06-21 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN60', 'EndDate', NULL, '2012-08-31 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN61', 'StartDate', NULL, '2012-06-21 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN61', 'EndDate', NULL, '2012-08-31 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN62', 'StartDate', NULL, '2012-06-21 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN62', 'EndDate', NULL, '2012-08-31 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS63', 'Date', NULL, '2012-06-13 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS63', 'Title', 'Here come the news 1', NULL, 0, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS63', 'Title', 'Here come the news 1', NULL, 0, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS64', 'Date', NULL, '2012-06-13 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS64', 'Title', 'Here come the news 2', NULL, 0, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS64', 'Title', 'Here come the news 2', NULL, 0, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS65', 'Date', NULL, '2012-06-13 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS65', 'Title', 'Here come the news 3', NULL, 0, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS65', 'Title', 'Here come the news 3', NULL, 0, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS66', 'Date', NULL, '2012-06-13 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS66', 'Title', 'Here come the news 4', NULL, 0, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS66', 'Title', 'Here come the news 4', NULL, 0, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS67', 'Date', NULL, '2012-06-13 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS67', 'Title', 'Here come the news 5', NULL, 0, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS67', 'Title', 'Here come the news 5', NULL, 0, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS68', 'Date', NULL, '2012-06-13 00:00:00', 0, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS68', 'Title', 'Here come the news 6', NULL, 0, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS68', 'Title', 'Here come the news 6', NULL, 0, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG41', 'Title', 'Mayor', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG41', 'Title', 'Sindaco', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS39', 'Date', NULL, '2013-03-29 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS39', 'Title', 'Online the Portal of Entando Town', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS39', 'Title', 'Online il Portale del Comune di Entando Town', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS33', 'Date', NULL, '2013-03-29 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS33', 'Title', 'The portal embraces responsiveness', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS33', 'Title', 'The portal embraces responsiveness', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS34', 'Date', NULL, '2013-07-20 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS34', 'Title', 'Folk Music Festival', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS34', 'Title', 'Festival della canzone popolare', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL30', 'Number', NULL, NULL, 20, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL30', 'Date', NULL, '2013-10-04 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL32', 'Number', NULL, NULL, 133, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL32', 'Date', NULL, '2013-01-30 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL26', 'Number', NULL, NULL, 15, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL26', 'Date', NULL, '2013-07-16 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL28', 'Number', NULL, NULL, 120, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL28', 'Date', NULL, '2013-07-01 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG72', 'Title', 'APIs', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG72', 'Title', 'APIs', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL69', 'Number', NULL, NULL, 20, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('RSL69', 'Date', NULL, '2013-06-13 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS37', 'Date', NULL, '2013-03-27 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS37', 'Title', 'Ground Rent Contribution', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NWS37', 'Title', 'Contributo canone di locazione 2013', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN24', 'StartDate', NULL, '2013-02-27 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('ANN24', 'EndDate', NULL, '2013-11-30 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG18', 'Title', 'Welcome!', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG18', 'Title', 'Welcome!', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG40', 'Title', 'Public Relations Office', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG40', 'Title', 'URP - Ufficio Relazioni con il Pubblico', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG43', 'Title', 'Council', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG43', 'Title', 'Giunta Comunale', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG44', 'Title', 'Municipal Council', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG44', 'Title', 'Consiglio Comunale', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG46', 'Title', 'Statute', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG46', 'Title', 'Statuto', NULL, NULL, 'it');


INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG8', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG9', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG41', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG43', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG44', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG55', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG56', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG70', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG71', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG18', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG40', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG72', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('CNG46', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('RSL26', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('RSL28', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('RSL30', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('RSL32', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('RSL69', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('DLD48', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('DLD50', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('DLD52', 'Title', 'jacms:title');
INSERT INTO workcontentattributeroles (contentid, attrname, rolename) VALUES ('DLD54', 'Title', 'jacms:title');
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


