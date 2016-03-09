#created by Forest Yang on 1/8/2016

@supplementarysecondary
Feature: Intake Secondary Tab

  #Test21
  Scenario: Basic Secondary Tab Testing
    Given user is on the "Create New" page
      And selects the "Cataloging" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Cataloging"
      And enters "NeedleDrop" in the "Cataloging" "Identification Number" field
      And saves the record
    Then the record is successfully saved
      And selects the "Intake" tab
    Then "No related record selected" should be displayed
      And clicks the "+ Add Record" button
      And clicks the "Create" button
    Then an empty form should be present
    Then "Creating a new record..." should be displayed
    Then the "Cancel changes" button at the bottom of the record should not be clickable
    Then the "Cancel changes" button at the top of the record should not be clickable
    Then the "Delete this relation." button at the bottom of the record should not be clickable
    Then the "Delete this relation." button at the top of the record should not be clickable
      And enters "Donnie" in the "Cataloging" "Intake Entry Number" field
    Then the "Cancel changes" button at the bottom of the record should be clickable
    Then the "Cancel changes" button at the top of the record should be clickable
    Then "Donnie" should be in the "Cataloging" "Intake Entry Number" field
      And fills in required fields for "Intake" record
      And enters "Darko" in the "Cataloging" "Current Owner" vocab field
      And adds "Darko" to "Local Persons"
      And saves the record
    Then the record is successfully saved
    Then the record entry should be displayed under "Related Intake Records"
      And clicks on related record entry "Donnie"
    Then the "Cancel changes" button at the bottom of the record should not be clickable
    Then the "Cancel changes" button at the top of the record should not be clickable
    Then the "Delete this relation." button at the bottom of the record should be clickable
    Then the "Delete this relation." button at the top of the record should be clickable
      And selects the "Current Record" tab
      And saves the record
    Then the record is successfully saved
      And enters "NeedleDrop" in the top nav search field 
      And selects "Cataloging" from top nav search record type select field
      And clicks on result with text "NeedleDrop"
    Then the titlebar should contain "Cataloging"
    Then "Donnie" should appear in the "Procedures" sidebar
      And clicks on "Donnie" from Procedures sidebar
    Then the titlebar should contain "Intake" 
    Then "NeedleDrop" should appear in the Cataloging sidebar
      And clicks on "NeedleDrop" from Cataloging sidebar
    Then the titlebar should contain "Cataloging"
  #Test3: Search to relate Dialog
      And selects the "Intake" tab
      And clicks the "+ Add Record" button
      And presses the "Esc" key
    Then no changes should occur
      And clicks the "+ Add Record" button
      And clicks the search button
    Then a list of records should appear
      And marks two records
      And clicks the "Add to Current Record" button
    Then the dialog should be dismissed
    Then the newly added records should be displayed under "Related Intake Records"
    Then the newly added records should be in the Procedures sidebar
      And clicks on a newly added record 
    Then an "Edit Record" form for the newly added record should be displayed
    Then close the browser

    #Test 9
  Scenario: Keyboard Navigation
    Given user is on a blank "Cataloging" record
      And tabs to "Intake" tab
      And presses enter
      And tabs to the "+ Add New" button
      And presses enter
    # Then each field should be reachable by keyboard
    # The following may first require entering data in required fields; see
    # the related location_movement_inventory.feature for a possible approach
      And tabs to the "Save" button
      And presses enter
    Then the record is successfully saved
    # Then the newly created record should be reachable by keyboard
    Then close the record
