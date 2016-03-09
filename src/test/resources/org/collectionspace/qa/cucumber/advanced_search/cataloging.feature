# Created by Cesar Villalobos on 01/07/2016

@advancedsearch
Feature: Advanced Search ­Cataloging

    Scenario: Advanced Search Fields
        Given user is in the "Create New" page
        And selects the "Cataloging" radio button on the Create New page
        And enters "CQA72.1" in the "Identification Number" field 
        And enters "Nameless Object" in the "Object Name" field
        And selects "Antiquities" from the "Responsible Department" drop down box
        And selects "Study Collection" from the "Collection" drop down box
        And enters "CQA72 Test 1" in the "Title" field
        And selects "New" from the "Record Status" drop down box
        And enters "72.1.1" in the "Copy Number" field
        And enters "72.1.2" in the "Edition Number" field
        And selects "dry" from the "Form" drop down box
        And enters "Cesar Villalobos" in the "Inscriber" field
        And selects "Cesar Villalobos" from autocomplete options
        And enters "Drawings" in the "Inscription Method" fieldnamed "Inscription Method" but rather just
        And enters "Polyester" in the "Material" field
        And selects "forgery" from the "Object Status" drop down box
        And selects "larva" from the "Phase" drop down box
        And selects "female" from the "Sex" drop down box
        And enters "French" in the "Style" field
        And selects "record speed" from the "Technical Attribute" drop down box
        And selects "handle" from the "Object Component Name" drop down box
        And enters "2016-01-01" in the "Production Date" field
        And enters "Water Tribe" in the "Production organization" field
        And selects "Water Tribe" from autocomplete options
        And enters "Southern Water Tribe" in the "Production people" field
        And enters "Cesar Villalobos" in the "Production person" field
        And selects "Cesar Villalobos" from autocomplete options
        And enters "Mexico" in the "Production place" field
        And enters "Hydration" in the "Technique" field
        And enters "textbook" in the "Field collection event name" field
        And saves the record

        # Identification Number 
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And enters "CQA72.1" in the "Identification Number" field 
        And clicks the "search" button
        Then the search results should contain "CQA72.1"

        # Object Name
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And enters "Nameless Object" in the "Object Name" field
        And clicks the "search" button
        Then the search results should contain "CQA72.1" 
    
        # Responsible Department 
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And selects "Antiquities" from the "Responsible Department" drop down box
        And clicks the "search" button
        Then the search results should contain "CQA72.1"

        # Collection
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And selects "Study Collection" from the "Collection" drop down box
        And clicks the "search" button
        Then the search results should contain "CQA72.1"

        # Title
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And enters "CQA72 Test 1" in the "Title" field
        And clicks the "search" button
        Then the search results should contain "CQA72.1"

        # Record Status
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And selects "New" from the "Record Status" drop down box
        And clicks the "search" button
        Then the search results should contain "CQA72.1"

        # Copy Number
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And enters "72.1.1" in the "Copy Number" field
        And clicks the "search" button
        Then the search results should contain "CQA72.1"

        # Edition Number
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And enters "72.1.2" in the "Edition Number" field
        And clicks the "search" button
        Then the search results should contain "CQA72.1"

        # Form
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And selects "dry" from the "Form" drop down box
        And clicks the "search" button
        Then the search results should contain "CQA72.1"

        # Inscriber (Non­Textual Inscription)
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And enters "Cesar Villalobos" in the "Inscriber" field
        And selects "Cesar Villalobos" from autocomplete options
        And clicks the "search" button
        Then the search results should contain "CQA72.1"

        # Inscription Method (Non­Textual Inscription) 
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And enters "Drawings" in the "Inscription Method" fieldnamed "Inscription Method" but rather just
        And clicks the "search" button
        Then the search results should contain "CQA72.1"

        # Material
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And enters "Polyester" in the "Material" field
        And clicks the "search" button
        Then the search results should contain "CQA72.1"

        # Object Status
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And selects "forgery" from the "Object Status" drop down box
        And clicks the "search" button
        Then the search results should contain "CQA72.1"

        # Phase
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And selects "larva" from the "Phase" drop down box
        And clicks the "search" button
        Then the search results should contain "CQA72.1"

        # Sex
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And selects "female" from the "Sex" drop down box
        And clicks the "search" button
        Then the search results should contain "CQA72.1"

        # Style
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And enters "French" in the "Style" field
        And clicks the "search" button
        Then the search results should contain "CQA72.1"

        # Technical Attribute
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And selects "record speed" from the "Technical Attribute" drop down box
        And clicks the "search" button
        Then the search results should contain "CQA72.1"
    
        # Object Component Name
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And selects "handle" from the "Object Component Name" drop down box
        And clicks the "search" button
        Then the search results should contain "CQA72.1"
    
        # Production Date
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And enters "2016-01-01" in the "Production Date" field
        And clicks the "search" button
        Then the search results should contain "CQA72.1"
    
        # Production Organization
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And enters "Water Tribe" in the "Production organization" field
        And selects "Water Tribe" from autocomplete options
        And clicks the "search" button
        Then the search results should contain "CQA72.1"
    
        # Production People
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And enters "Southern Water Tribe" in the "Production people" field
        And clicks the "search" button
        Then the search results should contain "CQA72.1"
    
        # Production Person
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And enters "Cesar Villalobos" in the "Production person" field
        And selects "Cesar Villalobos" from autocomplete options
        And clicks the "search" button
        Then the search results should contain "CQA72.1"
    
        # Production Place
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And enters "Mexico" in the "Production place" field
        And clicks the "search" button
        Then the search results should contain "CQA72.1"
    
        # Production Technique
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And enters "Hydration" in the "Technique" field
        And clicks the "search" button
        Then the search results should contain "CQA72.1"

        # Last edited
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And enters today's date in the "Earliest Modified Date" field
        And clicks the "search" button
        Then the search results should contain "CQA72.1"

        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And enters "admin@Collectionspace.org" in the "Record last modified by" date
        And clicks the "search" button
        Then the search results should contain "CQA72.1"
    
        #wildcard
        And clicks the "Advanced Search" button
        And selects "Cataloging" from the "Record Type Select" drop down box
        And enters "textb*" in the "Field collection event name" date
        And clicks the "search" button
        Then the search results should contain "CQA72.1"
        Then close the browser


    Scenario: Boolean field-­based search

        Given user is in the "Create New" page
        And selects the "Cataloging" radio button on the Create New page
        And enters "CQA72.2" in the "Cataloging/Assessment Reference Number" field
        And selects "Study Collection" from the "Collection" drop down box
        And selects "New" from the "Record Status" drop down box
        And enters "testtest" in the "Brief Description" field
        And saves the record

        And goes to the "Create New" page 
        And selects the "Cataloging" radio button on the Create New page
        And enters "CQA72.3" in the "Cataloging/Assessment Reference Number" field
        And selects "Study Collection" from the "Collection" drop down box
        And selects "New" from the "Record Status" drop down box
        And enters "testtest" in the "Distinguishing Features" field
        And saves the record     
    
        And goes to the "Create New" page 
        And selects the "Cataloging" radio button on the Create New page
        And enters "CQA72.4" in the "Cataloging/Assessment Reference Number" field
        And selects "Study Collection" from the "Collection" drop down box
        And selects "Temporary" from the "Record Status" drop down box
        And enters "testtest" in the "Comments" field
        And saves the record  


        And clicks the "Advanced Search button"
        And selects "Cataloging" from the "Record Type Select" drop down box
        And selects "any (OR)" from the "Field-based Search" drop down box
        And selects "Study Collection" from the "Collection" drop down box
        And selects "New" from the "Record Status" drop down box
        And clicks the "search" button
        Then the search results should contain "CQA72.2"
        Then the search results should contain "CQA72.3"        
        Then the search results should contain "CQA72.4"

        And clicks the "Advanced Search button"
        And selects "Cataloging" from the "Record Type Select" drop down box
        And selects "all (AND)" from the "Field-based Search" drop down box
        And selects "Study Collection" from the "Collection" drop down box
        And selects "New" from the "Record Status" drop down box
        And clicks the "search" button
        Then the search results should contain "CQA72.2"
        Then the search results should contain "CQA72.3"        
        Then the search results should not contain "CQA72.4"
        Then close the browser


    Scenario: Boolean and Keyword Search
        Given user is in the "My CollectionSpace" page
        And clicks the "Advanced Search" button
        And enters "testtest" in the "Keyword Search" field
        And selects "any (OR)" from the "Field-based Search" drop down box
        And selects "Study Collection" from the "Collection" drop down box
        And selects "New" from the "Record Status" drop down box
        And clicks the "search" button
        Then the search results should contain "CQA72.2"
        Then the search results should contain "CQA72.3"
        Then the search results should contain "CQA72.4"

        And clicks the "Advanced Search" button
        And enters "testtest" in the "Keyword Search" field
        And selects "all (AND)" from the "Field-based Search" drop down box
        And selects "Study Collection" from the "Collection" drop down box
        And selects "New" from the "Record Status" drop down box
        And clicks the "search" button
        Then the search results should contain "CQA72.2"
        Then the search results should contain "CQA72.3"
        Then the search results should not contain "CQA72.4"


        And goes to the record with identification number "CQA72.1"
        And clicks the delete button
        Then a delete confirmation dialogue should appear
        And clicks the delete button 
        Then the deletion should be confirmed in a dialogue
        And goes to the record with identification number "CQA72.2"
        And clicks the delete button
        Then a delete confirmation dialogue should appear
        And clicks the delete button 
        Then the deletion should be confirmed in a dialogue
        And goes to the record with identification number "CQA72.3"
        And clicks the delete button
        Then a delete confirmation dialogue should appear
        And clicks the delete button 
        Then the deletion should be confirmed in a dialogue
        And goes to the record with identification number "CQA72.3"
        And clicks the delete button
        Then a delete confirmation dialogue should appear
        And clicks the delete button 
        Then the deletion should be confirmed in a dialogue        
        Then close the browser

