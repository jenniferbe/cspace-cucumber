#Created by Forest Yang on 1/8/2016

@advancedsearch
Feature: Advanced Search - Intake

  #Test1
  Scenario: Advanced Search Fields
    # Given user is on the "Create New" page
    #   And selects the "Intake" radio button on the Create New page
    #   And clicks on the Create button
    Given user is on a blank "Intake" record
    Then the titlebar should contain "Intake"
      And enters "Lagume" in the "Intake" "Intake Entry Number" field
      And enters "Samwise" in the "Intake" "Current Owner" vocab field
      And adds "Samwise" to "Local Persons" # make sure this works somehow
      And enters "Anathema" in the "Intake" "Depositor" vocab field
      And adds "Anathema" to "Local Persons" # and this
      And enters "2011-01-01" in the "Intake" "Entry Date" field
      And enters "2011-01-01" in the "Intake" "Return Date" field
    #   And clicks on the "Intake" "Entry Method" field  #unnecessary
    # Then a dropdown list should appear in the "Entry Method" row #unnecessary
      And selects "Found on doorstep" from the "Intake" "Entry Method" dropdown
    #   And selects "Found on doorstep" from dropdown in "Entry Method" row
    #   And clicks on the "Intake" "Entry Reason" field
    # Then a dropdown list should appear in the "Entry Reason" row
      And selects "Enquiry" from the "Intake" "Entry Reason" dropdown
    #   And selects "Enquiry" from dropdown in "Entry Reason" row
      And enters "Azkaban" in the "Intake" "Current Location" vocab field
      And adds "Azkaban" to "Local Storage Locations" # make sure this works
      And enters "textbook" in the "Intake" "Field collection event name" field
      And clicks the "Save" button
    Then the record is successfully saved
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And enters "Samwise" in the "Intake" "Current Owner" vocab field
      And clicks on "Samwise" from autocomplete options #make sure this works
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by Intake Entry Number
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And enters "Lagume" in the "Intake" "Intake Entry Number" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by Depositor
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And enters "Anathema" in the "Intake" "Depositor" vocab field
      And clicks on "Anathema" from autocomplete options
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by Entry Date
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And enters "2011-01-01" in the "Intake" "Entry Date" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by Return Date
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And enters "2011-01-01" in the "Intake" "Return Date" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by Entry Method
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And selects "Found on doorstep" from the "Intake" "Entry Method" dropdown
    #   And clicks on the "Intake" "Entry Method" field
    # Then a dropdown list should appear in the "Entry Method" row
    #   And selects "Found on doorstep" from dropdown in "Entry Method" row
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by Entry Reason
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And selects "Enquiry" from the "Intake" "Entry Reason" dropdown
    #   And clicks on the "Intake" "Entry Reason" field
    # Then a dropdown list should appear in the "Entry Reason" row
    #   And selects "Enquiry" from dropdown in "Entry Reason" row
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by Current Location
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And enters "Azkaban" in the "Intake" "Current Location" vocab field #remember to look at dis
      And clicks on "Azkaban" from autocomplete options
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by Field collection event name
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And enters "textbook" in the "Intake" "Field collection event name" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by Edit Date
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And enters today's date in the "GeneralPages" "Earliest Modified Date" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"
    Then close the browser

  Scenario: Search by username
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And enters "admin@core.CollectionSpace.org" in the "Intake" "Record last modified by" field #make sure this work
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lagume"
    Then close the browser

  #test2
  Scenario: Boolean field-based Search
    # Given user is on the "Create New" page
    #   And selects the "Intake" radio button on the Create New page
    #   And clicks on the Create button
    Given user is on a blank "Intake" record
    Then the titlebar should contain "Intake"
      And enters "maSkArA" in the "Intake" "Intake Entry Number" field
      And enters "Jane Doe" in the "Intake" "Current Owner" vocab field
      And adds "Jane Doe" to "Local Persons" #to be checked
    #   And clicks on the "Intake" "Entry Reason" field
    # Then a dropdown list should appear in the "Entry Reason" row
    #   And selects "Consideration" from dropdown in "Entry Reason" row
      And selects "Consideration" from the "Intake" "Entry Reason" dropdown
      And enters "testtest" in the "Intake" "Entry Note" field
      And clicks the "Save" button
    Then the record is successfully saved


    # Given user is on the "Create New" page
    #   And selects the "Intake" radio button on the Create New page
    #   And clicks on the Create button
      And user is on a blank "Intake" record
    Then the titlebar should contain "Intake"
      And enters "KaNoRrA" in the "Intake" "Intake Entry Number" field
      And enters "Jane Doe" in the "Intake" "Current Owner" vocab field
      And clicks on "Jane Doe" from autocomplete options
    #   And clicks on the "Intake" "Entry Reason" field
    # Then a dropdown list should appear in the "Entry Reason" row
    #   And selects "Consideration" from dropdown in "Entry Reason" row
      And selects "Consideration" from the "Intake" "Entry Reason" dropdown
      And enters "testtest" in the "Intake" "Packing Note" field
      And clicks the "Save" button
    Then the record is successfully saved

    # Given user is on the "Create New" page
    #   And selects the "Intake" radio button on the Create New page
    #   And clicks on the Create button
      And user is on a blank "Intake" record
    Then the titlebar should contain "Intake"
      And enters "AnkORrA" in the "Intake" "Intake Entry Number" field
      And enters "Jane Doe" in the "Intake" "Current Owner" vocab field
      And clicks on "Jane Doe" from autocomplete options
    #   And clicks on the "Intake" "Entry Reason" field
    # Then a dropdown list should appear in the "Entry Reason" row
    #   And selects "Loan" from dropdown in "Entry Reason" row
      And selects "Loan" from the "Intake" "Entry Reason" dropdown
      And enters "testtest" in the "Intake" "Field collection note" field
      And clicks the "Save" button
    Then the record is successfully saved

      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And selects "any (OR)" from the "AdvancedSearch" "Field-based search" dropdown
      And enters "Jane Doe" in the "Intake" "Current Owner" vocab field
      And clicks on "Jane Doe" from autocomplete options
    #   And clicks on the "Advanced Search" "Entry Reason" field
    # Then a dropdown list should appear in the "Entry Reason" row
    #   And selects "Consideration" from dropdown in "Entry Reason" row
      And selects "Consideration" from the "Intake" "Entry Reason" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "maSkArA"
    Then the search results should contain "KaNoRrA"
    Then the search results should contain "AnkORrA"
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And selects "all (AND)" from the "AdvancedSearch" "Field-based search" dropdown
      And enters "Jane Doe" in the "Intake" "Current Owner" vocab field
      And clicks on "Jane Doe" from autocomplete options
    #   And clicks on the "Advanced Search" "Entry Reason" field
    # Then a dropdown list should appear in the "Entry Reason" row
    #   And selects "Consideration" from dropdown in "Entry Reason" row
      And selects "Consideration" from the "Intake" "Entry Reason" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "maSkArA"
    Then the search results should contain "KaNoRrA"
    Then the search results should not contain "AnkORrA"
    Then close the browser

  #Test3
  Scenario: Boolean and Keyword Search
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And selects "any (OR)" from the "AdvancedSearch" "Field-based search" dropdown
      And enters "testtest" in the "AdvancedSearch" "search" field
      And enters "Jane Doe" in the "Intake" "Current Owner" vocab field
      And clicks on "Jane Doe" from autocomplete options
    #   And clicks on the "Advanced Search" "Entry Reason" field
    # Then a dropdown list should appear in the "Entry Reason" row
    #   And selects "Consideration" from dropdown in "Entry Reason" row
      And selects "Consideration" from the "Intake" "Entry Reason" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "maSkArA"
    Then the search results should contain "KaNoRrA"
    Then the search results should contain "AnkORrA"
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Intake" from the "AdvancedSearch" "record type" dropdown
      And selects "all (AND)" from the "AdvancedSearch" "Field-based search" dropdown
      And enters "testtest" in the "AdvancedSearch" "search" field
      And enters "Jane Doe" in the "Intake" "Current Owner" vocab field
      And clicks on "Jane Doe" from autocomplete options
    #   And clicks on the "Advanced Search" "Entry Reason" field
    # Then a dropdown list should appear in the "Entry Reason" row
    #   And selects "Consideration" from dropdown in "Entry Reason" row
    And selects "Consideration" from the "Intake" "Entry Reason" dropdown
      And clicks the "Search" button
    Then the search results should contain "maSkArA"
    Then the search results should contain "KaNoRrA"
    Then the search results should not contain "AnkORrA"
    Then close the browser


  Scenario: Record Deletion
      Given user is on the "My CollectionSpace" page
      And navigates to the record with identification number "Lagume"
      And clicks on the "Delete" button
      Then delete confirmation dialogue should appear
      And clicks the confirmation delete button
      Then "Acquisition" deletion should be confirmed in a dialog
      And clicks delete confirmation OK button

      And navigates to the record with identification number "maSkArA"
      And clicks on the "Delete" button
      Then delete confirmation dialogue should appear
      And clicks the confirmation delete button
      Then "Acquisition" deletion should be confirmed in a dialog
      And clicks delete confirmation OK button

      And navigates to the record with identification number "KaNoRrA"
      And clicks on the "Delete" button
      Then delete confirmation dialogue should appear
      And clicks the confirmation delete button
      Then "Acquisition" deletion should be confirmed in a dialog
      And clicks delete confirmation OK button

      And navigates to the record with identification number "AnkORrA"
      And clicks on the "Delete" button
      Then delete confirmation dialogue should appear
      And clicks the confirmation delete button
      Then "Acquisition" deletion should be confirmed in a dialog
      And clicks delete confirmation OK button
      Then close the browser
