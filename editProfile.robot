*** Settings ***
Resource                  common.txt
Suite Setup               Setup Suite
Suite Teardown            Teardown Suite
Test Setup                common.Begin Web Test
Test Teardown             common.End Web Test


***Test Cases***


Fill in all profile questions

	Go to login page
	Login with email
	Edit profile about
	Edit profile location
	Edit profile check genre   2  3  4  5  6  7  8  9
	Sleep      5
	Edit profile photo
	Edit profile hosting
	Edit profile allow yes
	Sleep   30

