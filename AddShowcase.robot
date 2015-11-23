*** Settings ***
Resource                  common.txt
Suite Setup               Setup Suite
Suite Teardown            Teardown Suite
Test Setup                common.Begin Web Test
Test Teardown             common.End Web Test

*** Variables ***
${Showcase_What}   Showcase What 
${Showcase_Why}    Showcase why
${Location_input}
${Showcase_Contact}
${Showcase_Additional}

*** Keywords ***

Add showcase input title
	[Arguments]    ${Showcase_Title} 
	Input Text                              id=title                      ${Showcase_Title}

Add showcase input description
	[Arguments]    ${Showcase_Description} 
	Input Text                              id=description                ${Showcase_Description}

Add showcase input performing
	[Arguments]    ${Showcase_Performing}
	Input Text                              id=performers-exhibitors      ${Showcase_Performing}

Add showcase input ticket number
	[Arguments]    ${Number_Of_Tickets}
	Select From List By Label               id=ticket-number-menu         ${Number_Of_Tickets}

Add showcase input privacy
	[Arguments]    ${Public_or_Private}
	Select From List By Label               id=privacy                ${Public_or_Private}

Add showcase click continue
	Click Element                           //div[@id='step-1']//button[.='CONTINUE']

Add showcase input what
	[Arguments]   ${Showcase_What}
	#Wait Until Element Is Visible           //textarea[@id='expect_what']
	Input Text                              //textarea[@id='expect_what']              ${Showcase_What}

Add showcase input why     
	[Arguments]   ${Showcase_Why}
	Input Text                              id=why                                       ${Showcase_Why}

Add showcase input start date
	[Arguments]      ${Start_Date}
	Click Element                            css=span.glyphicon.glyphicon-calendar
	Snap
	Clear Element Text                       //html/body/form/div/div[2]/div[1]/div/div/div/div[1]/div[1]/div[3]/div/div[1]/div/div/input
	Press Key                                name=begins     \\08  
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08
	Press Key                                name=begins     \\08 
	Press Key                                name=begins     \\08
	Press Key                                name=begins     ${Start_Date}
	Click Element                            css=span.glyphicon.glyphicon-calendar


Add showcase input end date
	[Arguments]      ${End_Date}
	Clear Element Text                            //input[@name='ends'] 
	Click Element                                 name=ends
	Press Key                                     name=ends     ${End_Date}
	
                   
Add showcase input location
	[Arguments]     ${Location_input}
	Input Text                              location     ${Location_input}
	Press Key                               location     \\\\ARROW_DOWN
	Press Key                               location     \\13

Add showcase input address
	[Arguments]     ${Street_Address}
	Input Text                              address_street           ${Street_Address}
	Press Key                               address_street        \\\\ARROW_DOWN
	Press Key                               address_street        \\13

Add showcase input contact 
	[Arguments]      ${Showcase_Contact}
	Input Text                              contact_info          ${Showcase_Contact}

Add showcase input additional
	[Arguments]      ${Showcase_Additional}
	Input Text                              additional_info       ${Showcase_Additional}

Add showcase click launch
	Click Element                           xpath=//div[@id='step-2']//button[.='LAUNCH SHOWCASE']
	Wait Until Element Is Visible           LAUNCH
	Click Link                              LAUNCH
	Wait Until Element Is Visible           //div[@id='pre-launch-modal']/div/div/div[3]/button
	Click Element                           //div[@id='pre-launch-modal']/div/div/div[3]/button


***Test Cases***


Add showcase
	Go to login page
	Login with email
	Navbar dropdown add showcase
	Click dragpane
	Filepicker add photo from url         ${Image_URL}
	Add showcase input title              ${Showcase_Title}
	Add showcase input description        ${Showcase_Description}
	Add Showcase Check Genre              @{Showcase_Genre}
	Add showcase input performing         ${Showcase_Performing}
	Add showcase input ticket number         250
	Add showcase input privacy               Private
	Add showcase click continue          
	Add showcase input what               ${Showcase_What}
	Add showcase input why                ${Showcase_Why}
	Add showcase input start date           12/25/2017
	Add showcase input end date             12/26/2017
	Add showcase input location           ${Location_input}
	Add showcase input address            ${Street_Address}
	Add showcase input contact            ${Showcase_Contact}
	Add showcase input additional         ${Showcase_Additional}
	Add showcase click launch
	
