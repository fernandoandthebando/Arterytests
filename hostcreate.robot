*** Settings ***
Resource                  common.txt
Suite Setup               Setup Suite
Suite Teardown            Teardown Suite
Test Setup                common.Begin Web Test
Test Teardown             common.End Web Test

***Variables***


***Keywords***




***Test Cases***

Signup become host
	Go to     ${START_URL}/showcases/jbHjzWGqQalK1445906191
	Click showcase specific attend
	Click buy ticket
	Click email signup
	Enter signup firstname
	Wait Until Element Is Enabled    first-name
	Input text                       first-name                    ${Signup_First_Name}
	Input text                       last-name                     ${Signup_Last_Name}
	Input text                       username                      TestFood		
	Input text                       email                         test${Timedate_String}@mailinator.com
	Enter signup password
	Enter signup verify-password
	Submit signup form
	Wait Until Element Is Enabled    xpath=//input[@id='loadLogin']
	Go to explore showcases
	Navbar dropdown my profile
	#Edit profile about
	Edit profile location
	Edit profile check genre         11
	Sleep      5
	Wait Until Element Is Visible                   css=#edit-hosting > i.glyphicon.glyphicon-pencil
	Click Element                   css=#edit-hosting > i.glyphicon.glyphicon-pencil
	Click Element                   //h4[@id='hosting-edit-modal-label']/span/div/div/span[3]
	Wait Until Element Is Visible                    xpath=//form[@id='venue_image']/button
	Click Element                    venue-type
	Press Key                        venue-type     \\\\ARROW_DOWN
	Press Key                        venue-type    \\13
	Input Text                       name=description            ${Input_nospaces}
	Input Text                       name=why_become_host        ${Input_nospaces}
	Edit profile check host genre    11
	Input Text                       name=host_what_type         ${Input_nospaces}
	Click Element  save-hosting-info
	Edit profile allow yes
	




