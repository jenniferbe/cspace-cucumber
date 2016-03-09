# Created by Cesar Villalobos on 11/21/2015

@generalpages
Feature: Structured Objects- QA Test Plan


 	Scenario: User creates a new Cataloging Record and its hierarchy 
		Given user is on the "Create New" page
		And selects the "Cataloging" radio button on the Create New page
		And clicks on the "Create" button
		And enters "2012.12.1a" in the "Identification Number" field
		And enters "2012.12.1" in the "Broader object" field
		And clicks on the "Create new" button
	    And user selects "Word (verso)" from dropdown in "Broader object type" row
	    And enters "2012.12.1a.1" in the "Object component" field
		And clicks on the "Create new" button
		And user selects "Separable part" in the "Object component type"  row

		And user clicks the plus to repeat the "Object component" form   ??
		And enters "2012.12.1a.2" in the "Object component" field
		And clicks on the "Create new" button
		And user selects "Separable part" in the "Object component type"  row
		And user saves the record

		# For the following "Thens", they might not be specific enough
		# In the Webpage, there are different rows and I'm not entirely sure how to discriminate amongst them
		# So for Object component stuff, it might not be specific enough, though it should work
		Then the "Broader Object" field should contain "2012.12.1"
		Then the "Object component" field should contain "2012.12.1a.2"
		Then the "Object component" field should contain "2012.12.1a.1"
		Then the "Broader object type" field should contain "Work (verso)"
		Then the "Object component type" field should contain "separable part"

		###################
		##### BEGIN 1B#####
		###################
		And clicks on the "Go To" button next to the "Broader Object" field  , RETURN.
		Then the "Object component" field should contain "2012.12.1a"
		Then the "Object component type" field should contain "Verso"
		Then the "Broader Object" field should be empty
		Then close the browser
		###################
		##### BEGIN 1C#####
		###################

	Scenario: User searches for "family member" and makes sure everything is in place after adding some relations
		Given user is on the "My CollectionSpace" page
		And user enters "2012.12.1a.2" in the top nav search field
		And clicks on the top nav search submit button
		And user clicks on result with text "2012.12.1a.2"
		Then the "Equivalent component" field should not be editable  
		Then the "Equivalent component" field should contain "2012.12.1a.1"

		And enters "2012.12.1a.2a" in the "Object component" field
		And clicks on the "Create new" button
		And user clicks the plus to repeat the "Object component" form   ??
		
		And enters "2012.12.1a.2b" in the "Object component" field
		And clicks on the "Create new" button
		And user clicks the plus to repeat the "Object component" form

		And enters "2012.12.1a.2c" in the "Object component" field
		And clicks on the "Create new" button
		And user clicks the plus to repeat the "Object component" form
		And user saves the record

		Then the "Broader Object" field should contain "2012.12.1a.2a"
		Then the "Object component" field should contain "2012.12.1a.2b"
		Then the "Object component" field should contain "2012.12.1a.2c"

		And clicks on the "Go to" button next to the "Broader Object" field in the row containing "2012.12.1a.2b"  
		Then the "Broader object" field should contain "2012.12.1a.2"
		Then the "Equivalent component" field should contain "2012.12.1a.2a"
		Then the "Equivalent component" field should contain "2012.12.1a.2c"
		Then close the browser

	###################
	##### BEGIN 1D#####
	###################
	Scenario: User searches for a "family" member and proceeds to edit it. 
		Given user is on the "My CollectionSpace" page
		And user enters "2012.12.1a.1" in the top nav search field
		And clicks on the top nav search submit button
		And user clicks on result with text "2012.12.1a.1"
		Then the "Broader component" field should contain "2012.12.1a"
		Then the "Equivalent component" field should contain "2012.12.1a.2"


	###################
	##### BEGIN 1E#####
	###################
		And enters "2012.12.1a.1a" in the "Object component" field
		And clicks on the "Create new" button
		And user clicks the plus to repeat the "Object component" form   ??
		And enters "2012.12.1a.1b" in the "Object component" field
		And clicks on the "Create new" button
		And user saves the record

		Then the "Broader object" field should contain "2012.12.1a"
		Then the "Equivalent component" field should contain "2012.12.1a.2"
		Then the "Object component" field should contain "2012.12.1a.1a"
		Then the "Object component" field should contain "2012.12.1a.1b"

		And enters "0" in the "Field collection number" field
		Then the "Broader object" field should contain "2012.12.1a"
		Then the "Equivalent component" field should contain "2012.12.1a.2"
		Then the "Object component" field should contain "2012.12.1a.1a"
		Then the "Object component" field should contain "2012.12.1a.1b"
		Then close the browser

	###################
	##### BEGIN 1F#####
	###################
	Scenario: User searches for a "family" member and makes sure hierarchy is correct
		Given user is on the "My CollectionSpace" page
		And user enters "2012.12" in the top nav search field
		And clicks on the top nav search submit button

		Then the search results should contain "2012.12.1"
		Then the search results should contain "2012.12.1a"
		Then the search results should contain "2012.12.1a.1"
		Then the search results should contain "2012.12.1a.1a"
		Then the search results should contain "2012.12.1a.1b"
		Then the search results should contain "2012.12.1a.2"
		Then the search results should contain "2012.12.1a.2a"
		Then the search results should contain "2012.12.1a.2b"
		Then the search results should contain "2012.12.1a.2c"

		# NOTE: No efficient way to check the hierarchy....



	###################
	##### BEGIN 2A#####
	###################
	Scenario: User searches for a "family" member and makes sure hierarchy is correct
		Given user is on the "Create New" page
		And selects the "Cataloging" radio button on the Create New page
		And clicks on the "Create" button
		And enters "00002012.12.1a" in the "Identification Number" field

		And enters "2012.12.1a.2b" in the "Object component" field
		And user selects "2012.12.1a.2b" from dropdown 
		Then a dialog containing the message "Warning: null currently has broader term 2012.12.1a.2. Change broader term?" should be displayed

	## 2B
		And user clicks the "No" button
		Then the dialogue should be dismissed
		Then the "Object component" field should contain ""

	## 2c
		And enters "2012.12.1a.2b" in the "Object component" field
		And user selects "2012.12.1a.2b" from dropdown 
		Then a dialog containing the message "Warning: null currently has broader term 2012.12.1a.2. Change broader term?" should be displayed
		And user clicks the "Close" button
		Then the dialogue should be dismissed
		Then the "Object component" field should contain ""

	## 2d
		And enters "2012.12.1a.2b" in the "Object component" field
		And user selects "2012.12.1a.2b" from dropdown 
		Then a dialog containing the message "Warning: null currently has broader term 2012.12.1a.2. Change broader term?" should be displayed

		And user clicks the "Yes" button
		And user saves the record

		Then the "Object component" field should contain "012.12.1a.2b" 
		And user goes to the record with Identification Number "012.12.1a.2b"
		Then the "Broader object" field should contain "00002012.12.1a" 

	# 2e
		And user goes to the record with Identification Number "00002012.12.1a"
		And user clicks on the delete button
		Then a dialog containing the message "This Cataloging record can not be removed. It has a Narrower Context." should be displayed

	#2g
		And user clicks the plus to repeat the "Object component" form   ??
		And enters "2012.12.1a.2b.0000" in the "Object component" field 
 		And clicks on the "Create new" button
		And user saves the record
		And user clicks on the delete button
		Then a dialog containing the message "This Cataloging record can not be removed. It has a Narrower Context." should be displayed

	# 2h
		And user clicks the "Delete"  button in the "Object component" field in the row containing "2012.12.1a.2b.0000" 
		And user clicks the "Delete"  button in the "Object component" field in the row containing "2012.12.1a.2b" 
		And user clicks on the delete button
		Then a delete confirmation dialogue should appear
    	And user clicks the delete button 
		Then the deletion should be confirmed in a dialogue

		Given user is on the "My CollectionSpace" page
		And user enters "00002012.12.1a" in the top nav search field
		And clicks on the top nav search submit button
		Then the search results should not contain "00002012.12.1a"
		Then close the browser

	# TO DO:
	Scenario: user deletes all the previously made records
		Given user is on the "Create New" page
		And user goes to the record with Identification Number "012.12.1"
		And user clicks the delete button
	    Then a delete confirmation dialogue should appear  
	    And user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue

		And user goes to the record with Identification Number "2012.12.1a"
		And user clicks the delete button
	    Then a delete confirmation dialogue should appear  
	    And user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue

		And user goes to the record with Identification Number "2012.12.1a.1"
		And user clicks the delete button
	    Then a delete confirmation dialogue should appear  
	    And user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue

		And user goes to the record with Identification Number "2012.12.1a.1a"
		And user clicks the delete button
	    Then a delete confirmation dialogue should appear  
	    And user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue

		And user goes to the record with Identification Number "2012.12.1a.1b"
		And user clicks the delete button
	    Then a delete confirmation dialogue should appear  
	    And user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue

		And user goes to the record with Identification Number "2012.12.1a.2"
		And user clicks the delete button
	    Then a delete confirmation dialogue should appear  
	    And user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue

		And user goes to the record with Identification Number "2012.12.1a.2a"
		And user clicks the delete button
    	Then a delete confirmation dialogue should appear  
    	And user clicks the delete button 
    	Then the deletion should be confirmed in a dialogue

		And user goes to the record with Identification Number "2012.12.1a.2b"
		And user clicks the delete button
	    Then a delete confirmation dialogue should appear  
	    And user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue

		And user goes to the record with Identification Number "2012.12.1a.2c"
		And user clicks the delete button
	    Then a delete confirmation dialogue should appear  
	    And user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue

		And user goes to the record with Identification Number "2012.12.1a.2b.0000"
		And user clicks the delete button
	    Then a delete confirmation dialogue should appear  
	    And user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue

	    And user goes to the record with Identification Number "00002012.12.1a"
		And user clicks the delete button
	    Then a delete confirmation dialogue should appear  
	    And user clicks the delete button 
	    Then the deletion should be confirmed in a dialogue
	    Then close the browser


	###################
	##### BEGIN 3
	###################
	Scenario: User _____
		Given user is on the "Create New" page
		And selects the "Cataloging" radio button on the Create New page
		And clicks on the "Create" button
		And enters "2013.12.1a" in the "Identification Number" field
		And enters "test" in the "Brief Description" field
		And enters "2013.12.1" in the "Broader object" field
		And clicks on the "Create new" button
		And user saves the record

		And clicks on the "Add" button in the "Procedures" box
		# And user adds any related procedural record of any kind
		And enters "2013.12.2" in the "Object component" field
		And clicks on the "Create new" button
		And user saves the record
		And clicks on the "Go To" button next to the "Broader Object" field  , RETURN.

		Then the "Identification Number" field should contain "2013.12.2"
		# then the files should be the same. BUG????

		And user goes to the record with Identification Number "2013.12.1"
		Then the "Identification Number" field should contain "2013.12.1"

		# then the files should be the same. BUG???
		Then close the browser


	###################
	##### BEGIN 4
	###################
		Given user is on the "Create New" page
		And user goes to the record with Identification Number "2013.12.1a"
		Then the "Identification Number" field should contain "2013.12.1a"
		And enters "Test 4" in the "Comments" field

		And enters "2013.12.1a.1" in the "Object component" field
		# then a message will flash saying to not forget --> doesnt happen

		And user saves the record
		And clicks on the "Go To" button next to the "Object component" field  , RETURN.

		Then the "Identification Number" field should contain "2013.12.1a.1"
		# then te record should match 2013.12.a1 but with ID "2013.12.1a.1" and w/o related records

	###################
	##### BEGIN 15#####
	###################



























