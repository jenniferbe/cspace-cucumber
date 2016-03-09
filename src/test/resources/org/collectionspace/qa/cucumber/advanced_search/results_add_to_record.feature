# Created by Cesar Villalobos on 01/07/2016

@advancedsearch
Feature: Advanced Search results Add to Record
    Adding search results to a group

    Scenario: Relate cataloging records to an existing Group record.
        Given user is in the "Create New" page
        And user selects the "Group" radio button on the Create New page
        And user enters "CQA-86 Group" in the "Title" field
        And user saves the record
        And clicks the "Advanced Search button"
        And user enters "CQA86" in the in the search field
        Then the results should contain "CQA86.1"
        Then the results should contain "CQA86.2"
        Then the results should contain "CQA86.3"

        And clicks the "Add to Record" button
        And user selects "Group" from the "Record Type Select" drop down box
        And user enters "CQA-86 Group" in the search field
        And user selects "CQA-86 Group"
        And clicks the "Add search results" button
        Then the message "Added 3 records to test group" should appear
        Then close the browser

    Scenario: View procedure record to see related records
        # Using seach or advanced search search for "CQA-86 Group"
        Given user is in the "Find and Edit" page
        And clicks the "Advanced Search button"
        And user enters "CQA-86 Group" in the "search" field
        And user clicks on result with text "CQA-86 Group"
        And user selects the "Cataloging" tab 

        Then "120415.1" should appear in the "Cataloging" sidebar  
        Then "120415.2" should appear in the "Cataloging" sidebar  

        Then "CQA86.1" should appear in the "Related Cataloging Records" area
        Then "CQA86.2" should appear in the "Related Cataloging Records" area
        Then "CQA86.3" should appear in the "Related Cataloging Records" area
        And user clicks on result with text "CQA86.1"
        And clicks the "Delete this relation." button
        Then "CQA86.1" should not appear in the "Related Cataloging Records" area

        And user selects the "Current Record" tab 
        And user clicks the delete button
        Then a delete confirmation dialog should appear
        And user clicks the delete button 
        Then the deletion should be confirmed in a dialog
        Then close the browser 


    Scenario: Keyboard accessibility:
        Given user is in the "Create New" page
        And clicks the "Advanced Search button"
        And user enters "CQA86" in the in the search field
        Then the results should contain "CQA86.1"
        Then the results should contain "CQA86.2"
        Then the results should contain "CQA86.3"
        And user presses the "Tab" key until reaching the "Add record" button
        And user presses the "Enter" key
        Then an "Add Search Results to Record" menu should appear
        
        Then close the browser


## don't forget to delete the group!