#created by Forest Yang on Christmas Day 2015

@supplementarysecondary
Feature: Loan Out Secondary Tab

  #Test 1
  Scenario: Basic Secondary Tab Testing
    Given user is on the "Create New" page
      And selects the "Cataloging" radio button on the Create New page
      And clicks on the Create button
      And enters "1234321" in the "Cataloging" "Identification Number" field
      And saves the record
    Then the record is successfully saved
      And selects the "Loan Out" tab
    Then "No related record selected" should be displayed
      And clicks the "+ Add Record" button
      And clicks the "Create" button
    Then an empty form should be present
    Then "Creating new record..." should be displayed
    Then the "Cancel changes" button at the top of the page should not be clickable
    Then the "Cancel changes" button at the bottom of the page should not be clickable
    Then the "Delete this relation." button at the top of the page should not be clickable
    Then the "Delete this relation." button at the bottom of the page should not be clickable
      And clicks the "Select number pattern" button
      And selects something from dropdown in "Loan Out Number" row
    Then the "Cancel changes" button at the top of the page should be clickable
    Then the "Cancel changes" button at the bottom of the page should be clickable
    Then the "Delete this relation." button at the top of the page should be clickable
    Then the "Delete this relation." button at the bottom of the page should be clickable
      And fills in all the fields of the "Loan Out" record
      And saves the record
    Then the record entry should be displayed under "Related Loan Out Records"
      And clicks the newly created record 
    Then the "Cancel changes" button at the top of the page should not be clickable
    Then the "Cancel changes" button at the bottom of the page should not be clickable
    Then the "Delete this relation." button at the top of the page should be clickable
    Then the "Delete this relation." button at the bottom of the page should be clickable
      And selects the "Current Record" tab
      And saves the record
    Given user is on the "My Collectionspace" page
      And enters "1234321" in the top nav search field
      And selects "Cataloging" from the top nav search record type select field
      And clicks on result with text "1234321"
    Then the related record should appear in the sidebar
      And clicks on the related record
    Then "1234321" should appear in the sidebar
    Then close the browser

  #Test 3
  Scenario: Search to Relate Dialog
    Given user is on the "My Collectionspace" page
      And enters "1234231" in the top nav search field
      And selects "Cataloging" from the top nav search record type select field
      And clicks on result with text "1234231"
      And selects the "Loan Out" tab
      And clicks the "+ Add Record" button
      And presses the "Esc" key
    Then no changes should occur
      And clicks the "+ Add Record" button
      And clicks the search button
    Then a list of records should appear
      And marks two records
      And clicks the "Add to Current Record" button
    Then the dialog should be dismissed
    Then the newly added records should be displayed under "Related Loan Out Records"
    Then the newly added records should appear in the sidebar
      And clicks on a newly added record
    Then an "Edit Record" form for the newly added record should be displayed
    Then close the browser

  #Test 9
  Scenario: Keyboard Navigation
    Given user is on a blank "Cataloging" record
      And tabs to "Loan Out" tab
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



