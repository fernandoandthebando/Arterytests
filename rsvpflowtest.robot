*** Settings ***
Resource                  common.txt
Suite Setup               Setup Suite 
Suite Teardown            Teardown Suite
Test Setup                #Begin Web Test
Test Teardown             #End Web Test


***Test Cases***

No session rsvp signup buy ticket
	${Timedate_String} =  Get Current Date  result_format=%m%d%H%M
	Go to     ${START_URL}/showcases/jbHjzWGqQalK1445906191
	Click showcase specific attend
	Click buy ticket
	Signup with email
	Buy ticket with paypal	
	Go to explore showcases
	Navbar dropdown logout
	Go to login page
	Login with this session signup
	Run Keyword And Continue On Failure  Page Should Contain Element    css=h3.panel-title-profile      message=If the issue is fixed we will be at edit profile now


