*** Settings ***
Resource                  common.txt
Suite Setup               Setup Suite
Suite Teardown            Teardown Suite
Test Setup                Begin Web Test
Test Teardown             End Web Test


***Test Cases***


No session rsvp login
	Go to     ${START_URL}/showcases/jbHjzWGqQalK1445906191
	Click showcase specific attend
	Click buy ticket
	Click log in
	Login with email
	Wait Until Element Is Enabled    xpath=//input[@id='loadLogin']
	Go to explore showcases
	Navbar dropdown logout
	Go to login page
	Login with email
	Run Keyword And Continue On Failure  Page Should Contain Element    css=h3.panel-title-profile      message=If the issue is fixed we will be at edit profile now


No session rsvp signup
	Go to     ${START_URL}/showcases/jbHjzWGqQalK1445906191
	Click showcase specific attend
	Click buy ticket
	Signup with email
	Wait Until Element Is Enabled    xpath=//input[@id='loadLogin']
	Go to explore showcases
	Navbar dropdown logout
	Go to login page
	Login with this session signup
	Run Keyword And Continue On Failure  Page Should Contain Element    css=h3.panel-title-profile      message=If the issue is fixed we will be at edit profile now




No session rsvp login buy ticket
	Go to     ${START_URL}/showcases/jbHjzWGqQalK1445906191
	Click showcase specific attend
	Click buy ticket
	Click log in
	Login with email
	Buy ticket with paypal
	Go to explore showcases
	Navbar dropdown logout
	Go to login page
	Login with email
	Run Keyword And Continue On Failure  Page Should Contain Element    css=h3.panel-title-profile      message=If the issue is fixed we will be at edit profile now

