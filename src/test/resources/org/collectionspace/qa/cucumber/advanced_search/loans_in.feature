#created by forest yang on 12/28/2015

@advancedsearch
Feature: Advanced Search - Loans In
  #Test1 LOANS IN
  Scenario: Search by Loan In Number
    # Given user is on the "Create New" page
    #   And selects the "Loan In" radio button on the Create New page
    #   And clicks on the Create button
    Given user is on a blank "Loan In" record
    Then the titlebar should contain "Loan In"
      And enters "textbook" in the "Loan In" "Loan In Number" field
    #   And clicks on the "Loan In" "Loan Purpose" field
    # Then a dropdown list should appear in the "Loan Purpose" row
    #   And selects "Exhibition" from dropdown in "Loan Purpose" row
      And selects "Exhibition" from the "Loan In" "Loan Purpose" dropdown
      And enters "textbook" in the "Loan In" "Lender" vocab field
      And adds "textbook" to "Local Persons" #check
      And enters "2011-01-01" in the "Loan In" "Loan In Date" field
      And enters "2011-01-01" in the "Loan In" "Loan In Return Date" field
      And enters "2011-01-01" in the "Loan In" "Loan Renewal Application Date" field
      And clicks the "Save" button
    Then the record is successfully saved
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from the "AdvancedSearch" "record type" dropdown
      And enters "textbook" in the "Loan In" "Loan In Number" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by Loan Purpose
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from the "AdvancedSearch" "record type" dropdown
    #   And clicks on the "Advanced Search" "Loan Purpose" field
    # Then a dropdown list should appear in the "Loan Purpose" row
    #   And selects "Exhibition" from dropdown in "Loan Purpose" row
      And selects "Exhibition" from the "Loan In" "Loan Purpose" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by Lender
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from the "AdvancedSearch" "record type" dropdown
      And enters "textbook" in the "Loan In" "Lender" vocab field
      And clicks on "textbook" from autocomplete options
      And clicks the "Advanced Search search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by Loan In Date
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from the "AdvancedSearch" "record type" dropdown
      And enters "2011-01-01" in the "Loan In" "Loan In Date" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by Loan In Return Date
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from the "AdvancedSearch" "record type" dropdown
      And enters "2011-01-01" in the "Loan In" "Loan In Return Date" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by Loan In Renewal Application Date
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from the "AdvancedSearch" "record type" dropdown
      And enters "2011-01-01" in the "Loan In" "Loan In Renewal Application" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by Edit Date
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from the "AdvancedSearch" "record type" dropdown
      And enters today's date in the "GeneralPages" "Earliest Modified Date" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "textbook"
    Then close the browser

  Scenario: Search by username
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from the "AdvancedSearch" "record type" dropdown
      And enters "admin@core.collectionspace.org" in the "Loan In" "Record last modified by" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "textbook"
    Then close the browser

  #Test2
  Scenario: Boolean field-based search
    # Given user is on the "Create New" page
    #   And selects the "Loan In" radio button on the Create New page
    #   And clicks on the Create button
    Given user is on a blank "Loan In" record
    Then the titlebar should contain "Loan In"
      And enters "textbook2" in the "Loan In" "Loan In Number" field
    #   And clicks on the "Loan In" "Loan Purpose" field
    # Then a dropdown list should appear in the "Loan Purpose" row
    #   And selects "Research" from dropdown in "Loan Purpose" row
      And selects "Research" from the "Loan In" "Loan Purpose" dropdown
      And enters "testtest" in the "Loan In" "Loan In Conditions" field
      And enters "2001-01-01" in the "Loan In" "Loan In Date" field
      And clicks the "Save" button
    Then the record is successfully saved

    # Given user is on the "Create New" page
    #   And selects the "Loan In" radio button on the Create New page
    #   And clicks on the Create button
    And user is on a blank "Loan In" record
    Then the titlebar should contain "Loan In"
      And enters "textbook3" in the "Loan In" "Loan In Number" field
    #   And clicks on the "Loan In" "Loan Purpose" field
    # Then a dropdown list should appear in the "Loan Purpose" row
    #   And selects "Research" from dropdown in "Loan Purpose" row
      And selects "Research" from the "Loan In" "Loan Purpose" dropdown
      And enters "testtest" in the "Loan In" "Loan In Conditions" field
      And enters "2001-01-01" in the "Loan In" "Loan In Date" field
      And clicks the "Save" button
    Then the record is successfully saved

    # Given user is on the "Create New" page
    #   And selects the "Loan In" radio button on the Create New page
    #   And clicks on the Create button
    And user is on a blank "Loan In" record
    Then the titlebar should contain "Loan In"
      And enters "textbook4" in the "Loan In" "Loan In Number" field
    #   And clicks on the "Loan In" "Loan Purpose" field
    # Then a dropdown list should appear in the "Loan Purpose" row
    #   And selects "Photography" from dropdown in "Loan Purpose" row
      And selects "Photography" from the "Loan In" "Loan Purpose" dropdown
      And enters "testtest" in the "Loan In" "Loan In Conditions" field
      And enters "2001-01-01" in the "Loan In" "Loan In Date" field
      And clicks the "Save" button
    Then the record is successfully saved

      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from the "AdvancedSearch" "record type" dropdown
      And selects "any (OR)" from the "AdvancedSearch" "Field-based search" dropdown
      And enters "2001-01-01" in the "Loan In" "Loan In Date" "Earliest" field #fix this
      And enters "2001-01-01" in the "Loan In" "Loan In Date" "Latest" field #fix this
    #   And clicks on the "Advanced Search" "Loan Purpose" field
    # Then a dropdown list should appear in the "Loan Purpose" row
    #   And selects "Research" from dropdown in "Loan Purpose" row
      And selects "Research" from the "Loan In" "Loan Purpose" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "textbook2"
    Then the search results should contain "textbook3"
    Then the search results should contain "textbook4"

    # Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And selects "Loan In" from the "AdvancedSearch" "record type" dropdown
      And selects "all (AND)" from the "AdvancedSearch" "Field-based search" dropdown
      And enters "2001-01-01" in the "Loan In" "Loan In Date" "Earliest" field #fix
      And enters "2001-01-01" in the "Loan In" "Loan In Date" "Latest" field #fix
    #   And clicks on the "Advanced Search" "Loan Purpose" field
    # Then a dropdown list should appear in the "Loan Purpose" row
    #   And selects "Research" from dropdown in "Loan Purpose" row
    And selects "Research" from the "Loan In" "Loan Purpose" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "textbook2"
    Then the search results should contain "textbook3"
    Then the search results should not contain "textbook4"
    Then close the browser

  #Test3
  Scenario: Boolean and Keyword Search
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And enters "testtest" in the "AdvancedSearch" "search" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "textbook2"
    Then the search results should contain "textbook3"
    Then the search results should contain "textbook4"

      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And enters "testtest" in the "AdvancedSearch" "search" field
      And selects "Loan In" from the "AdvancedSearch" "record type" dropdown
      And selects "any (OR)" from the "AdvancedSearch" "Field-based search" dropdown
      And enters "2001-01-01" in the "Loan In" "Loan In Date" "Earliest" field #fix this
      And enters "2001-01-01" in the "Loan In" "Loan In Date" "Latest" field #fix this
    #   And clicks on the "Loan In" "Loan Purpose" field
    # Then a dropdown list should appear in the "Loan Purpose" row
    #   And selects "Research" from dropdown in "Loan Purpose" row
      And selects "Research" from the "Loan In" "Loan Purpose" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "textbook2"
    Then the search results should contain "textbook3"
    Then the search results should contain "textbook4"

      And clicks the "Advanced Search" button
    Then the titlebar should contain "Advanced Search"
      And enters "testtest" in the "AdvancedSearch" "search" field
      And selects "Loan In" from the "AdvancedSearch" "record type" dropdown
      And selects "all (AND)" from the "AdvancedSearch" "Field-based search" dropdown
      And enters "2001-01-01" in the "Loan In" "Loan In Date" "Earliest" field #fix this
      And enters "2001-01-01" in the "Loan In" "Loan In Date" "Latest" field #fix this
    #   And clicks on the "Advanced Search" "Loan Purpose" field
    # Then a dropdown list should appear in the "Loan Purpose" row
    #   And selects "Research" from dropdown in "Loan Purpose" row
      And selects "Research" from the "Loan In" "Loan Purpose" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "textbook2"
    Then the search results should contain "textbook3"
    Then the search results should not contain "textbook4"
    Then close the browser

  Scenario: Record Deletion
    Given user is on the "My CollectionSpace" page
      And navigates to the record with identification number "textbook"
      And clicks on the "Delete" button
    Then delete confirmation dialogue should appear
      And clicks the confirmation delete button
    Then "Loan In" deletion should be confirmed in a dialog
      And clicks delete confirmation OK button

      And navigates to the record with identification number "textbook2"
      And clicks on the "Delete" button
    Then delete confirmation dialogue should appear
      And clicks the confirmation delete button
    Then "Loan In" deletion should be confirmed in a dialog
      And clicks delete confirmation OK button

      And navigates to the record with identification number "textbook3"
      And clicks on the "Delete" button
    Then delete confirmation dialogue should appear
      And clicks the confirmation delete button
    Then "Loan In" deletion should be confirmed in a dialog
      And clicks delete confirmation OK button

      And navigates to the record with identification number "textbook4"
      And clicks on the "Delete" button
    Then delete confirmation dialogue should appear
      And clicks the confirmation delete button
    Then "Loan In" deletion should be confirmed in a dialog
      And clicks delete confirmation OK button
    Then close the browser
