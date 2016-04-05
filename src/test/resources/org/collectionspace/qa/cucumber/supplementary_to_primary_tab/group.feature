# Created by Jennifer Lynn Be on 01/05/2016
# needs to be tested

@supplementaryprimary
Feature: Supplementary Manual QA - Group

  Scenario: New Record Behavior
    Given user is on the "Create New" page
      And selects the "Group" radio button on the Create New page
      And clicks on the Create button
    Then the "cancel" button "should not" be clickable
    Then the "delete" button "should not" be clickable
    When user clicks the "add" button on the "Cataloging" area to the right
    Then the message "Please save the record you are creating before trying to relate other records to it." should be displayed
    When user clicks the "add" button on the "Procedures" area to the right
    Then the message "Please save the record you are creating before trying to relate other records to it." should be displayed
    Then close the browser

  Scenario: Record Title
    Given user is on the "Create New" page
      And selects the "Group" radio button on the Create New page
      And clicks on the Create button
      And enters "Blue" in the "Group" "Title" field
      And adds "Albert Smith" to the "Group" "Group Owner" vocab field
    Then the titlebar should contain "Blue"
    Then the titlebar should contain "Albert Smith"
    Then close the browser

  Scenario: Behavior After Save
    Given user is on the "Create New" page
      And selects the "Group" radio button on the Create New page
      And clicks on the Create button
      And enters "Red" in the "Group" "Title" field
      And clicks the "Save" button
    Then the record is successfully saved
    Then "GMT-0800 (PST)" should be displayed in the message bar
    Then disables top and bottom "cancel" buttons
    Then enables top and bottom "delete" buttons
    Then close the browser

  Scenario: Docking Title Bar
    Given user is on the "Create New" page
      And selects the "Group" radio button on the Create New page
      And clicks on the Create button
      And enters "Red" in the "Group" "Title" field
      # cannot enable a scroll to bottom of page
      And scrolls to the bottom of the page
    # not sure if titlebar term works for docking bar
    Then the titlebar should contain "Red"
    Then the titlebar should contain "Group"
    Then close the browser

  Scenario: Folding/Unfolding Boxes
    # folding steps do not exist
    Given user is on the "Create New" page
      And selects the "Group" radio button on the Create New page
      And clicks on the Create button
    Given user clicks on the "Fold" symbol next to "Group Information"
    Then the "Group Information" section should "fold"
    Then the "Fold" symbol next to "Group Information" should be a "folded" symbol
    Given user clicks on the "Fold" symbol next to "Group Information"
    Then the "Group Information" section should "unfold"
    Then the "Fold" symbol next to "Group Information" should be a "unfolded" symbol
    Then close the browser

  Scenario: Vocabulary Pivoting
    Given user is on the "Create New" page
      And selects the "Group" radio button on the Create New page
      And clicks on the Create button
      And enters "Blue" in the "Group" "Title" field
      And adds "Albert Smith" to the "Group" "Group Owner" vocab field
      And clicks the "Save" button
    Then the record is successfully saved
    Then disables top and bottom "cancel" buttons
    Then enables top and bottom "delete" buttons
    # not sure if types should be specified
    Then "Albert Smith" should appear in the "Terms Used" area
    Then "person" should appear in the "Terms Used" area
    Then "owner" should appear in the "Terms Used" area
      And clicks on "Albert Smith" in the "Terms Used" area
    Then the titlebar should contain "Albert Smith"
    # Used By steps do not exist
    Then "Blue" should in the Used By sidebar
      And clicks on "Blue" in the Used By sidebar
    Then the titlebar should contain "Blue"
      And clicks on the delete button 

      And clicks the confirmation delete button
      And clicks delete confirmation OK button
    Then close the browser

