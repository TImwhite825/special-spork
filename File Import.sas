*------------------------------------------------------------*;
* EM Version: 15.1;
* SAS Release: 9.04.01M6P110718;
* Host: odaws02-usw2.oda.sas.com;
* Project Path: ~;
* Project Name: CAP STONE;
* Diagram Id: EMWS1;
* Diagram Name: CAPSTONE;
* Generated by: timwhite8250;
* Date: 01MAY2021:17:36:05;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* Macro Variables;
*------------------------------------------------------------*;
%let EM_PROJECT =;
%let EM_PROJECTNAME =;
%let EM_WSNAME =;
%let EM_WSDESCRIPTION =CAPSTONE;
%let EM_SUMMARY =WORK.SUMMARY;
%let EM_NUMTASKS =SINGLE;
%let EM_EDITMODE =R;
%let EM_DEBUGVAL =;
%let EM_ACTION =run;
*------------------------------------------------------------*;
%macro em_usedatatable;
%if ^%symexist(EM_USEDATATABLE) %then %do;
%let EM_USEDATATABLE = Y;
%end;
%if "&EM_USEDATATABLE" ne "N" %then %do;
*------------------------------------------------------------*;
* Data Tables;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
%end;
%mend em_usedatatable;
%em_usedatatable;
*------------------------------------------------------------*;
* Create workspace data set;
*------------------------------------------------------------*;
data workspace;
length property $64 value $200;
property= 'PROJECTLOCATION';
value= "&EM_PROJECT";
output;
property= 'PROJECTNAME';
value= "&EM_PROJECTNAME";
output;
property= 'WORKSPACENAME';
value= "&EM_WSNAME";
output;
property= 'WORKSPACEDESCRIPTION';
value= "&EM_WSDESCRIPTION";
output;
property= 'SUMMARYDATASET';
value= "&EM_SUMMARY";
output;
property= 'NUMTASKS';
value= "&EM_NUMTASKS";
output;
property= 'EDITMODE';
value= "&EM_EDITMODE";
output;
property= 'DEBUG';
value= "&EM_DEBUGVAL";
output;
run;
*------------------------------------------------------------*;
* Create nodes data set;
*------------------------------------------------------------*;
data nodes;
length id $12 component $32 description $64 X 8 Y 8 diagramID $32 parentID $32;
id= "FIMPORT2";
component="FileImport";
description= "File Import (2)";
diagramID="_ROOT_";
parentID="";
X=169;
Y=291;
output;
run;
*------------------------------------------------------------*;
* USERTRAINCODE File for FIMPORT2;
*------------------------------------------------------------*;
data _null_;
if symget('sysscp')=:'WIN' then dsep='\';
else if symget('sysscp')=:'DNT' then dsep='\';
else dsep = '/';
filepath = pathname('work')!!dsep!!"FIMPORT2_USERTRAINCODE.sas";
call symput('DSPATH', filepath);
run;
data _null_;
filename dspath "&dspath";
file dspath;
run;
*------------------------------------------------------------*;
* VARIABLESETDELTA File for FIMPORT2;
*------------------------------------------------------------*;
data _null_;
if symget('sysscp')=:'WIN' then dsep='\';
else if symget('sysscp')=:'DNT' then dsep='\';
else dsep = '/';
filepath = pathname('work')!!dsep!!"FIMPORT2_VARIABLESETDELTA.txt";
call symput('DSPATH', filepath);
run;
data _null_;
filename dspath "&dspath";
file dspath;
run;
*------------------------------------------------------------*;
* DELTACODE File for FIMPORT2;
*------------------------------------------------------------*;
data _null_;
if symget('sysscp')=:'WIN' then dsep='\';
else if symget('sysscp')=:'DNT' then dsep='\';
else dsep = '/';
filepath = pathname('work')!!dsep!!"FIMPORT2_DELTACODE.txt";
call symput('DSPATH', filepath);
run;
data _null_;
filename dspath "&dspath";
file dspath;
run;
*------------------------------------------------------------*;
* EMNOTES File for FIMPORT2;
*------------------------------------------------------------*;
data _null_;
if symget('sysscp')=:'WIN' then dsep='\';
else if symget('sysscp')=:'DNT' then dsep='\';
else dsep = '/';
filepath = pathname('work')!!dsep!!"FIMPORT2_EMNOTES.txt";
call symput('DSPATH', filepath);
run;
data _null_;
filename dspath "&dspath" encoding="utf-8" NOBOM;
file dspath;
run;
*------------------------------------------------------------*;
* Create node properties data set;
*------------------------------------------------------------*;
data nodeprops;
length id $12 property $64 value $400;
id= "FIMPORT2";
property="Location";
value= "CATALOG";
output;
id= "FIMPORT2";
property="Catalog";
value= "SASHELP.EMSAMP.Fimport.SOURCE";
output;
id= "FIMPORT2";
property="ImportType";
value= "Local";
output;
id= "FIMPORT2";
property="GuessRows";
value= "500";
output;
id= "FIMPORT2";
property="Delimiter";
value= ",";
output;
id= "FIMPORT2";
property="NameRow";
value= "Y";
output;
id= "FIMPORT2";
property="SkipRows";
value= "0";
output;
id= "FIMPORT2";
property="MaxRows";
value= "1000000";
output;
id= "FIMPORT2";
property="MaxCols";
value= "10000";
output;
id= "FIMPORT2";
property="FileType";
value= "xlsx";
output;
id= "FIMPORT2";
property="Role";
value= "TRAIN";
output;
id= "FIMPORT2";
property="ForceRun";
value= "N";
output;
id= "FIMPORT2";
property="Summarize";
value= "N";
output;
id= "FIMPORT2";
property="AdvancedAdvisor";
value= "N";
output;
id= "FIMPORT2";
property="RunAction";
value= "Train";
output;
id= "FIMPORT2";
property="Component";
value= "FileImport";
output;
id= "FIMPORT2";
property="IFileName";
value= "C:\Users\timwh\OneDrive\Documents\CSU\CAPSToNE - TEXAS DEATH ROW LAST STATEMENTS.xlsx";
output;
id= "FIMPORT2";
property="AccessTable";
value= "NoTableName";
output;
id= "FIMPORT2";
property="UserID";
value= "NoUserID";
output;
id= "FIMPORT2";
property="Password";
value= "NoPassword";
output;
id= "FIMPORT2";
property="ToolType";
value= "SAMPLE";
output;
id= "FIMPORT2";
property="ToolPrefix";
value= "FIMPORT";
output;
id= "FIMPORT2";
property="EM_FILE_USERTRAINCODE";
value= "FIMPORT2_USERTRAINCODE.sas";
output;
id= "FIMPORT2";
property="EM_FILE_VARIABLESETDELTA";
value= "FIMPORT2_VARIABLESETDELTA.txt";
output;
id= "FIMPORT2";
property="EM_FILE_DELTACODE";
value= "FIMPORT2_DELTACODE.txt";
output;
id= "FIMPORT2";
property="EM_FILE_EMNOTES";
value= "FIMPORT2_EMNOTES.txt";
output;
run;
*------------------------------------------------------------*;
* Create actions to run data set;
*------------------------------------------------------------*;
%macro emaction;
%let actionstring = %upcase(&EM_ACTION);
%if %index(&actionstring, RUN) or %index(&actionstring, REPORT) %then %do;
data actions;
length id $12 action $40;
id="FIMPORT2";
%if %index(&actionstring, RUN) %then %do;
action='run';
output;
%end;
%if %index(&actionstring, REPORT) %then %do;
action='report';
output;
%end;
run;
%end;
%mend;
%emaction;
*------------------------------------------------------------*;
* Execute the actions;
*------------------------------------------------------------*;
%em5batch(execute, workspace=workspace, nodes=nodes, connect=connect, datasources=datasources, nodeprops=nodeprops, action=actions);
