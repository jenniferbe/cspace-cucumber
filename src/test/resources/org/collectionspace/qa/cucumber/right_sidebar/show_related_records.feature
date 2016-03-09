# Created by Cesar Villalobos on 03/08/2016

@rightsidebar
Feature: Right Frame - Show Related Records 


  Scenario: Show Related Records
    Given user is in a blank "Acquisition" record
    And user enters "CQA16.1" in the "Acquisition Reference Number" field
    And the user saves the record
    Then the "Show" button in the "Cataloging" right area should be disabled
    
    And user selects the "Cataloging" tab
    And the user clicks the "Add record" button
    And the user clicks the "Create" button
    And user enters "CQA16.2" in the "Identification Number" field
    And the user saves the record
    Then the "Related Cataloging Records" area should contain "CQA16.2"

    And user selects the "Cataloging" tab
    And the user clicks the "Add record" button
    And the user clicks the "Create" button
    And user enters "CQA16.3" in the "Identification Number" field
    And the user saves the record
    Then the "Related Cataloging Records" area should contain "CQA16.3"
    Then the "Show" button in the "Cataloging" right area should be enabled

    And the user clicks the "Show" button in the "Cataloging" right area

    Then the titlebar should contain "Found 3 records related to CQA16.1" 
    Then the search results should contain "CQA16.2"
    Then the search results should contain "CQA16.3"
    Then the "Edit existing advanced search" button should not be visible
    Then close the browser

  Scenario: Record Deletion for Recycling
    Given user is in the "Create New" page
    And user goes to the record with identification number "CQA16.1"
    And the user clicks the delete button
    Then a delete confirmation dialogue should appear
    And the user clicks the delete button 
    Then the deletion should be confirmed in a dialogue

    And user goes to the record with identification number "CQA16.2"
    And the user clicks the delete button
    Then a delete confirmation dialogue should appear
    And the user clicks the delete button 
    Then the deletion should be confirmed in a dialogue

    And user goes to the record with identification number "CQA16.3"
    And the user clicks the delete button
    Then a delete confirmation dialogue should appear
    And the user clicks the delete button 
    Then the deletion should be confirmed in a dialogue
    
    Then close the browser
