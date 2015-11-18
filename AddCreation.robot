*** Settings ***
Resource                  common.txt
Suite Setup               Setup Suite
Suite Teardown            Teardown Suite
Test Setup                common.Begin Web Test
Test Teardown             common.End Web Test

***Variables***

${Add_Creation_Genre}   Music
${Add_Creation_Media}   Audio
${Media_URL}  https://www.youtube.com/watch?v=wHLGqjoeLS0


***Keywords***

Add creation select genre  
	Click Element                     id=genre
	Select From List By Label         id=genre    ${Add_Creation_Genre}
	Press Key                         id=genre    \\13

Add creation select media 
	Click Element                     id=media
	Select From List By Label         id=media    ${Add_Creation_Media}
	Press Key                         id=media    \\13
	Input Text                        id=creationEmbed     ${Media_URL}
	Click Element                     xpath=(//button[@type='button'])[2]
	


***Test Cases***


Add creation
	Go to login page
	Login with email
	Navbar dropdown add creation
	Add creation select genre
	Add creation select media       
	Click Element               xpath=(//button[@type='button'])[3]
	Select Frame                     filepicker_dialog
	Wait Until Element Is Visible    xpath=//div/div[1]/ng-include[3]/div/nav/ul/li[6]/a
	Click Element                    xpath=//div/div[1]/ng-include[3]/div/nav/ul/li[6]/a
	Input Text                       xpath=//input[@id='linkAddress']   http://sockeye.tv/blog/wp-content/uploads/2014/03/sockeye-makes-a-robot.jpg
	Click Element                    xpath=//input[@value='Search']
	Wait Until Element Is Visible    xpath=//button[@id='e2e_url_select']
	Click Element                    xpath=//button[@id='e2e_url_select']
	Unselect Frame
	Input Text                  id=title          ${Input_nospaces}
	Input Text                  id=description    ${Input_nospaces}
	Wait Until Element Is Not Visible   xpath=//img[contains(@src,'http://proarteryimgix.imgix.net/assets/defaultAvatar.png')]
	Click Element               xpath=//button[@type='submit']

