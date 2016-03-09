#created by Forest Yang on 1/6/2016

@supplementarysecondary
Feature: Condition Check Secondary Tab

  #Test1
  Scenario: Basic Secondary Tab Testing
    Given user is on the "Create New" page
      And selects the "Cataloging" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Cataloging"
      And enters "Aligeiers" in the "Cataloging" "Identification Number" field
      And saves the record
      And selects the "Condition" tab
    Then "No related record selected" should be displayed
      And clicks the "+ Add Record" button
      And clicks the "Create" button
    Then an empty form should be present
    Then "Creating a new record..." should be displayed
    Then the "Cancel changes" button at the bottom of the record should not be clickable
    Then the "Cancel changes" button at the top of the record should not be clickable
    Then the "Delete this relation." button at the bottom of the record should not be clickable
    Then the "Delete this relation." button at the top of the record should not be clickable
      And enters "blastphemie" in the "Cataloging" "Condition Check/Assessment Reference Number" field
    Then the "Cancel changes" button at the bottom of the record should be clickable
    Then the "Cancel changes" button at the top of the record should be clickable
    Then "blastphemie" should be in the "Cataloging" "Condition Check/Assessment Reference Number" field
      And fills in all the fields of the "Condition Check" record
      And enters "alagrofortei" in the "Cataloging" "Condition Checker/Assessor" vocab field
      And adds "alagrofortei" to "Local Persons"
      And saves the record
    Then the record entry should be displayed under "Related Condition Check Records"
      And clicks on related record entry "blastphemie"
    Then the "Cancel changes" button at the bottom of the record should not be clickable
    Then the "Cancel changes" button at the top of the record should not be clickable
    Then the "Delete this relation." button at the bottom of the record should be clickable
    Then the "Delete this relation." button at the top of the record should be clickable
      And selects the "Current Record" tab
      And saves the record
    Then the record is successfully saved
      And enters "Aligeiers" in the top nav search field 
      And selects "Cataloging" from top nav search record type select field
      And clicks on result with text "Aligeiers"
    Then the titlebar should contain "Cataloging"
    Then "blastphemie" should appear in the "Procedures" sidebar
      And clicks on "blastphemie" from "Procedures" area
    Then the titlebar should contain "Condition Check" 
    Then "Aligeiers" should appear in the "Cataloging" area
      And clicks on "Aligeiers" from "Cataloging" area
    Then the titlebar should contain "Cataloging"
  #Test3: Search to relate Dialog
      And selects the "Condition" tab
      And clicks the "+ Add Record" button
      And presses the "Esc" key
    Then no changes should occur
      And clicks the "+ Add Record" button
      And clicks the search button
    Then a list of records should appear
      And marks two records
      And clicks the "Add to Current Record" button
    Then the dialog should be dismissed
    Then the newly added records should be displayed under "Related Condition Check Records"
    Then the newly added records should be in the "Procedures" area
      And clicks on a newly added record 
    Then an "Edit Record" form for the newly added record should be displayed
    Then close the browser

    #Test 9
  Scenario: Keyboard Navigation
    Given user is on a blank "Cataloging" record
      And tabs to "Condition" tab
      And presses the "Enter" key
      And tabs to the "+ Add New" button
      And presses the "Enter" key
    # Then each field should be reachable by keyboard
    # The following may first require entering data in required fields; see
    # the related location_movement_inventory.feature for a possible approach
      And tabs to the "Save" button
      And presses the "Enter" key
    Then the record is successfully saved
    # Then the newly created record should be reachable by keyboard
    Then close the record


