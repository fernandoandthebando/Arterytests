*** Settings ***
Resource                  common.txt
Suite Setup               Setup Suite
Suite Teardown            Teardown Suite
Test Setup                common.Begin Web Test
Test Teardown             common.End Web Test

***Variables***

${Add_Creation_Genre}   Film & Video
${Add_Creation_Media}   Audio
${Media_URL}            https://www.youtube.com/watch?v=wHLGqjoeLS0
${Creation_Image_URL}   http://www.sprutcam.com/images/products/SprutCAM/robots/robots02.png
${Add_Creation_Title}         Creation Title
${Add_Creation_Description}   Creation Description


***Keywords***

Add creation select genre  
	[Arguments]    ${Add_Creation_Genre}
	Click Element                     id=genre
	Select From List By Label         id=genre    ${Add_Creation_Genre}
	Press Key                         id=genre    \\13

Add creation select media 
	[Arguments]    ${Add_Creation_Media}
	Click Element                     id=media
	Select From List By Label         id=media    ${Add_Creation_Media}
	Press Key                         id=media    \\13

Add creation media URL
	[Arguments]    ${Media_URL} 
	Input Text                        id=creationEmbed     ${Media_URL}
	Click Element                     xpath=(//button[@type='button'])[2]

Add creation upload image
	Click Element                     xpath=(//button[@type='button'])[3]

Add creation title
	[Arguments]    ${Add_Creation_Title}
	Input Text                          id=title          ${Add_Creation_Title}

Add creation description
	[Arguments]    ${Add_Creation_Description}
	Input Text                          id=description    ${Add_Creation_Description}

Add creation save
	Wait Until Element Is Not Visible   xpath=//img[contains(@src,'http://proarteryimgix.imgix.net/assets/defaultAvatar.png')]
	Click Element                       xpath=//button[@type='submit']
	


***Test Cases***


Add creation
	Go to login page
	Login with email
	Navbar dropdown add creation
	Add creation select genre                ${Add_Creation_Genre}
	Add creation select media                ${Add_Creation_Media} 
	Add creation media URL                   ${Media_URL}
	Add creation upload image
	Filepicker add photo from url no crop    ${Creation_Image_URL}
	Add creation title                       ${Add_Creation_Title}
	Add creation description                 ${Add_Creation_Description}
	Add creation save

