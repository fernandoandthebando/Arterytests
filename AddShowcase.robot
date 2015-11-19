*** Settings ***
Resource                  common.txt
Suite Setup               Setup Suite
Suite Teardown            Teardown Suite
Test Setup                common.Begin Web Test
Test Teardown             common.End Web Test


***Test Cases***


Add showcase
	Go to login page
	Login with email
	Navbar dropdown add showcase
	Click dragpane
	Filepicker add photo from url
	Input Text                              title                      ${Input_nospaces}
	Input Text                              description                ${Input_nospaces}
	Add Showcase Check Genre                @{Showcase_Genre}
	Input Text                              performers-exhibitors      ${Input_nospaces}
	Select From List By Label               ticket-number-menu         250
	Click Element                           //div[@id='step-1']//button[.='CONTINUE']
	Input Text                              expect_what                ${Input_nospaces}
	Input Text                              why                        ${Input_nospaces}
	Click Element                           css=span.input-group-addon
	Click Element                           xpath=//div[@class='datepicker-days']/table/tbody/tr[6]/td[7]
	Input Text                              location     ${Location_input}
	Press Key                               location     \\\\ARROW_DOWN
	Press Key                               location     \\13
	Input Text                              address_street           ${Street_Address}
	Press Key                               address_street        \\\\ARROW_DOWN
	Press Key                               address_street        \\13
	Input Text                              contact_info          ${Input_nospaces}
	Input Text                              additional_info       ${Input_nospaces}
	Click Element                           xpath=//div[@id='step-2']//button[.='LAUNCH SHOWCASE']
	Click Link                              LAUNCH
	Click Element                           //div[@id='pre-launch-modal']/div/div/div[3]/button


