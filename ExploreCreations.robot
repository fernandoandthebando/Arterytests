*** Settings ***
Resource                  common.txt
Suite Setup               Setup Suite simple
Suite Teardown            Teardown Suite
#Test Setup                common.Begin Web Test
#Test Teardown             common.End Web Test



***Test Cases***

Filter creation results and find item genre all
	Navbar explore creations
	Algolia sort
	Algolia enter location               ${Search_Location}
	Algolia select radius                ${Radius}
	
	Algolia submit filter
	Verify creation explore item   ${Explore_Item}
	

Filter creation results and find item genre 1
	Navbar explore creations
	Algolia sort
	Algolia uncheck all genres
	Algolia check genre                  1
	Algolia enter location               ${Search_Location}
	Algolia select radius                ${Radius}
	
	Algolia submit filter
	Verify creation explore item   ${Explore_Item}
	

Filter creation results and find item genre 2
	Navbar explore creations
	Algolia sort
	Algolia uncheck all genres
	Algolia check genre                  2
	Algolia enter location               ${Search_Location}
	Algolia select radius                ${Radius}
	
	Algolia submit filter
	Verify creation explore item   ${Explore_Item}
	

Filter creation results and find item genre 3
	Navbar explore creations
	Algolia sort
	Algolia uncheck all genres
	Algolia check genre                  3
	Algolia enter location               ${Search_Location}
	Algolia select radius                ${Radius}
	
	Algolia submit filter
	Verify creation explore item   ${Explore_Item}
	

Filter creation results and find item genre 4
	Navbar explore creations
	Algolia sort
	Algolia uncheck all genres
	Algolia check genre                  4
	Algolia enter location               ${Search_Location}
	Algolia select radius                ${Radius}
	
	Algolia submit filter
	Verify creation explore item   ${Explore_Item}
	

Filter creation results and find item genre 5
	Navbar explore creations
	Algolia sort
	Algolia uncheck all genres
	Algolia check genre                  5
	Algolia enter location               ${Search_Location}
	Algolia select radius                ${Radius}
	
	Algolia submit filter
	Verify creation explore item   ${Explore_Item}
	

Filter creation results and find item genre 6
	Navbar explore creations
	Algolia sort
	Algolia uncheck all genres
	Algolia check genre                  6
	Algolia enter location               ${Search_Location}
	Algolia select radius                ${Radius}
	
	Algolia submit filter
	Verify creation explore item   ${Explore_Item}
	

Filter creation results and find item genre 7
	Navbar explore creations
	Algolia sort
	Algolia uncheck all genres
	Algolia check genre                  7
	Algolia enter location               ${Search_Location}
	Algolia select radius                ${Radius}
	
	Algolia submit filter
	Verify creation explore item   ${Explore_Item}
	

Filter creation results and find item genre 8
	Navbar explore creations
	Algolia sort
	Algolia uncheck all genres
	Algolia check genre                  8
	Algolia enter location               ${Search_Location}
	Algolia select radius                ${Radius}
	
	Algolia submit filter
	Verify creation explore item   ${Explore_Item}
	

Filter creation results and find item genre 9
	Navbar explore creations
	Algolia sort
	Algolia uncheck all genres
	Algolia check genre                  9
	Algolia enter location               ${Search_Location}
	Algolia select radius                ${Radius}
	
	Algolia submit filter
	Verify creation explore item   ${Explore_Item}
	

Filter creation results and find item genre 10
	Navbar explore creations
	Algolia sort
	Algolia uncheck all genres
	Algolia check genre                  10
	Algolia enter location               ${Search_Location}
	Algolia select radius                ${Radius}
	
	Algolia submit filter
	Verify creation explore item   ${Explore_Item}
	

Filter creation results and find item genre 11
	Navbar explore creations
	Algolia sort
	Algolia uncheck all genres
	Algolia check genre                  11
	Algolia enter location               ${Search_Location}
	Algolia select radius                ${Radius}
	
	Algolia submit filter
	Verify creation explore item   ${Explore_Item}
	