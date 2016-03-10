#Created by Forest Yang on 12/24/2015

@functionality
Feature: Structured Dates Formatting



  #Test 1
  Scenario: Year value is fully displayed
    Given user is on the "Create New" page
      And selects the "Cataloging" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Cataloging" 
      And enters "1" in the "Cataloging" "Object Description Information" "Content" "Date" field
    Then the structured date popup should appear
      And enters "9999" in the "Cataloging" field
      And enters "9999" in the "Object Description Information" field
      And enters "9999" in the "Content" field
      And enters "9999" in the "Date" field
      And enters "9999" in the "Earliest/Single Year" field
    Then "9999" in "Cataloging" field is not cut off
    Then "9999" in "Object Description Information" field is not cut off
    Then "9999" in "Content" field is not cut off
    Then "9999" in "Date" field is not cut off
    Then "9999" in "Earliest/Single Year" field is not cut off
      And clicks in "Era" column in "Cataloging" "Object Description Information" "Content" "Date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Object Description Information" "Content" "Date" "Earliest/Single Date" row
      And selects "BCE" from dropdown in "Cataloging" "Object Description Information" "Content" "Date" "Earliest/Single Date" row
    Then "BCE" should be visible
      And clicks in "Certainty" column in "Cataloging" "Object Description Information" "Content" "Date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Object Descriptiong Information" "Content" "Date" "Earliest/Single Date" row
      And selects "Probably" from dropdown in "Cataloging" "Object Description Information" "Content" "Date" "Earliest/Single Date" row
    Then "Probably" should be visible
      And clicks in "Unit" column in "Cataloging" "Object Description Information" "Content" "Date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Object Descriptiong Information" "Content" "Date" "Earliest/Single Date" row
      And selects "Month(s)" from dropdown in "Cataloging" "Object Description Information" "Content" "Date" "Earliest/Single Date" row
    Then "Month(s)" should be visible
      And presses the "Esc" key
    Then the structured date popup should contain entered values

  #"Cataloging" "Object Description Information" "Textual Inscription" "Date" field
   
    Given user is on the "Create New" page
      And selects the "Cataloging" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Cataloging" 
      And enters "1" in the "Cataloging" "Object Description Information" "Textual Inscription" "Date" field
    Then the structured date popup should appear
      And enters "9999" in the "Cataloging" field
      And enters "9999" in the "Object Description Information" field
      And enters "9999" in the "Textual Inscription" field
      And enters "9999" in the "Date" field
      And enters "9999" in the "Earliest/Single Year" field
    Then "9999" in "Cataloging" field is not cut off
    Then "9999" in "Object Description Information" field is not cut off
    Then "9999" in "Textual Inscription" field is not cut off
    Then "9999" in "Date" field is not cut off
    Then "9999" in "Earliest/Single Year" field is not cut off
      And clicks in "Era" column in "Cataloging" "Object Description Information" "Textual Inscription" "Date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Object Description Information" "Textual Inscription" "Date" "Earliest/Single Date" row
      And selects "BCE" from dropdown in "Cataloging" "Object Description Information" "Textual Inscription" "Date" "Earliest/Single Date" row
    Then "BCE" should be visible
      And clicks in "Certainty" column in "Cataloging" "Object Description Information" "Textual Inscription" "Date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Object Descriptiong Information" "Textual Inscription" "Date" "Earliest/Single Date" row
      And selects "Probably" from dropdown in "Cataloging" "Object Description Information" "Textual Inscription" "Date" "Earliest/Single Date" row
    Then "Probably" should be visible
      And clicks in "Unit" column in "Cataloging" "Object Description Information" "Textual Inscription" "Date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Object Descriptiong Information" "Textual Inscription" "Date" "Earliest/Single Date" row
      And selects "Month(s)" from dropdown in "Cataloging" "Object Description Information" "Textual Inscription" "Date" "Earliest/Single Date" row
    Then "Month(s)" should be visible
      And presses the "Esc" key
    Then the structured date popup should contain entered values

  #Non-Textual Inscription -> Date

    Given user is on the "Create New" page
      And selects the "Cataloging" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Cataloging" 
      And enters "1" in the "Cataloging" "Non-Textual Inscription" "Date" field
    Then the structured date popup should appear
      And enters "9999" in the "Cataloging" field
      And enters "9999" in the "Non-Textual Inscription" field
      And enters "9999" in the "Date"  field
      And enters "9999" in the "Earliest/Single Year" field
    Then "9999" in "Cataloging" field is not cut off
    Then "9999" in "Non-Textual Inscription" field is not cut off
    Then "9999" in "Date" field is not cut off
    Then "9999" in "Earliest/Single Year" field is not cut off
      And clicks in "Era" column in "Cataloging" "Non-Textual Inscription" "Date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Non-Textual Inscription" "Date" "Earliest/Single Date" row
      And selects "BCE" from dropdown in "Cataloging" "Non-Textual Inscription" "Date" "Earliest/Single Date" row
    Then "BCE" should be visible
      And clicks in "Certainty" column in "Cataloging" "Non-Textual Inscription" "Date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Non-Textual Inscription" "Date" "Earliest/Single Date" row
      And selects "Probably" from dropdown in "Cataloging" "Non-Textual Inscription" "Date" "Earliest/Single Date" row
    Then "Probably" should be visible
      And clicks in "Unit" column in "Cataloging" "Non-Textual Inscription" "Date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Non-Textual Inscription" "Date" "Earliest/Single Date" row
      And selects "Month(s)" from dropdown in "Cataloging" "Non-Textual Inscription" "Date" "Earliest/Single Date" row
    Then "Month(s)" should be visible
      And presses the "Esc" key
    Then the structured date popup should contain entered values

  #Object Production Information -> Production date

    Given user is on the "Create New" page
      And selects the "Cataloging" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Cataloging" 
      And enters "1" in the "Cataloging" "Object Production Information" "Production date" field
    Then the structured date popup should appear
      And enters "9999" in the "Cataloging" field
      And enters "9999" in the "Object Production Information" field
      And enters "9999" in the "Production date" field
      And enters "9999" in the "Date" field
      And enters "9999" in the "Earliest/Single Year" field
    Then "9999" in "Cataloging" field is not cut off
    Then "9999" in "Object Production Information" field is not cut off
    Then "9999" in "Production date" field is not cut off
    Then "9999" in "Earliest/Single Year" field is not cut off
      And clicks in "Era" column in "Cataloging" "Object Production Information" "Production date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Object Production Information" "Production date" "Earliest/Single Date" row
      And selects "BCE" from dropdown in "Cataloging" "Object Production Information" "Production date" "Earliest/Single Date" row
    Then "BCE" should be visible
      And clicks in "Certainty" column in "Cataloging" "Object Production Information" "Production date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Object Production Information" "Production date" "Earliest/Single Date" row
      And selects "Probably" from dropdown in "Cataloging" "Object Production Information" "Production date" "Earliest/Single Date" row
    Then "Probably" should be visible
      And clicks in "Unit" column in "Cataloging" "Object Production Information" "Production date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Object Production Information" "Production date" "Earliest/Single Date" row
      And selects "Month(s)" from dropdown in "Cataloging" "Object Production Information" "Production date" "Earliest/Single Date" row
    Then "Month(s)" should be visible
      And presses the "Esc" key
    Then the structured date popup should contain entered values


  #Object History & Association -> Associated date

    Given user is on the "Create New" page
      And selects the "Cataloging" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Cataloging" 
      And enters "1" in the "Cataloging" "Object History & Association" "Associated date" field
    Then the structured date popup should appear
      And enters "9999" in the "Cataloging" field
      And enters "9999" in the "Object History & Association" field
      And enters "9999" in the "Associated date" field
      And enters "9999" in the "Earliest/Single Year" field
    Then "9999" in "Cataloging" field is not cut off
    Then "9999" in "Object History & Association" field is not cut off
    Then "9999" in "Associated date" field is not cut off
    Then "9999" in "Earliest/Single Year" field is not cut off
      And clicks in "Era" column in "Cataloging" "Object History & Association" "Associated date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Object History & Association" "Associated date" "Earliest/Single Date" row
      And selects "BCE" from dropdown in "Cataloging" "Object History & Association" "Associated date" "Earliest/Single Date" row
    Then "BCE" should be visible
      And clicks in "Certainty" column in "Cataloging" "Object History & Association" "Associated date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Object History & Association" "Associated date" "Earliest/Single Date" row
      And selects "Probably" from dropdown in "Cataloging" "Object History & Association" "Associated date" "Earliest/Single Date" row
    Then "Probably" should be visible
      And clicks in "Unit" column in "Cataloging" "Object History & Assocation" "Associated date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Object History & Assocation" "Associated date" "Earliest/Single Date" row
      And selects "Month(s)" from dropdown in "Cataloging" "Object History & Assocation" "Associated date" "Earliest/Single Date" row
    Then "Month(s)" should be visible
      And presses the "Esc" key
    Then the structured date popup should contain entered values

  #Object History & Association -> Ownership date

    Given user is on the "Create New" page
      And selects the "Cataloging" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Cataloging" 
      And enters "1" in the "Cataloging" field
      And enters "1" in the "Object History & Association" field
      And enters "1" in the "Ownership date" field
    Then the structured date popup should appear
      And enters "9999" in the "Cataloging" "Object History & Association" "Ownership date" "Earliest/Single Year" field
    Then "9999" in "Cataloging" field is not cut off
    Then "9999" in "Object History & Association" field is not cut off
    Then "9999" in "Ownership date" field is not cut off
    Then "9999" in "Earliest/Single Year" field is not cut off
      And clicks in "Era" column in "Cataloging" "Object History & Association" "Ownership date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Object History & Association" "Ownership date" "Earliest/Single Date" row
      And selects "BCE" from dropdown in "Cataloging" "Object History & Association" "Ownership date" "Earliest/Single Date" row
    Then "BCE" should be visible
      And clicks in "Certainty" column in "Cataloging" "Object History & Association" "Ownership date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Object History & Association" "Ownership date" "Earliest/Single Date" row
      And selects "Probably" from dropdown in "Cataloging" "Object History & Association" "Ownership date" "Earliest/Single Date" row
    Then "Probably" should be visible
      And clicks in "Unit" column in "Cataloging" "Object History & Assocation" "Ownership date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Object History & Assocation" "Ownership date" "Earliest/Single Date" row
      And selects "Month(s)" from dropdown in "Cataloging" "Object History & Assocation" "Ownership date" "Earliest/Single Date" row
    Then "Month(s)" should be visible
      And presses the "Esc" key
    Then the structured date popup should contain entered values


  #Object Collection Information -> Field collection date

    Given user is on the "Create New" page
      And selects the "Cataloging" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Cataloging" 
      And enters "1" in the "Cataloging" field
      And enters "1" in the "Object Collection Information" field
      And enters "1" in the "Field collection date" field
    Then the structured date popup should appear
      And enters "9999" in the "Cataloging" "Object Collection Information" "Field collection date" "Earliest/Single Year" field
    Then "9999" in "Cataloging" field is not cut off
    Then "9999" in "Object Collection Information" field is not cut off
    Then "9999" in "Field collection date" field is not cut off
    Then "9999" in "Earliest/Single Year" field is not cut off
      And clicks in "Era" column in "Cataloging" "Object Collection Information" "Field collection date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Object Collection Information" "Field collection date" "Earliest/Single Date" row
      And selects "BCE" from dropdown in "Cataloging" "Object Collection Information" "Field collection date" "Earliest/Single Date" row
    Then "BCE" should be visible
      And clicks in "Certainty" column in "Cataloging" "Object Collection Information" "Field collection date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Object Collection Information" "Field collection date" "Earliest/Single Date" row
      And selects "Probably" from dropdown in "Cataloging" "Object Collection Information" "Field collection date" "Earliest/Single Date" row
    Then "Probably" should be visible
      And clicks in "Unit" column in "Cataloging" "Object Collection Information" "Field collection date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Cataloging" "Object Collection Information" "Field collection date" "Earliest/Single Date" row
      And selects "Month(s)" from dropdown in "Cataloging" "Object Collection Information" "Field collection date" "Earliest/Single Date" row
    Then "Month(s)" should be visible
      And presses the "Esc" key
    Then the structured date popup should contain entered values

  #Media Handling dates

    Given user is on the "Create New" page
      And selects the "Media Handling" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Media Handling" 
      And enters "1" in the "Media Handling" field
      And enters "1" in the "Dates" field
    Then the structured date popup should appear
      And enters "9999" in the "Media Handling" field
      And enters "9999" in the "Dates" field
      And enters "9999" in the "Earliest/Single Year" field
    Then "9999" in "Media Handling" field is not cut off
    Then "9999" in "Dates" field is not cut off
    Then "9999" in "Earliest/Single Year" field is not cut off
      And clicks in "Era" column in "Media Handling" "Dates" "Earliest/Single Date" row
    Then a drop down list should appear in the "Media Handling" "Dates" "Earliest/Single Date" row
      And selects "BCE" from dropdown in "Media Handling" "Dates" "Earliest/Single Date" row
    Then "BCE" should be visible
      And clicks in "Certainty" column in "Media Handling" "Dates" "Earliest/Single Date" row
    Then a drop down list should appear in the "Media Handling" "Dates" "Earliest/Single Date" row
      And selects "Probably" from dropdown in "Media Handling" "Dates" "Earliest/Single Date" row
    Then "Probably" should be visible
      And clicks in "Unit" column in "Media Handling" "Dates" "Earliest/Single Date" row
    Then a drop down list should appear in the "Media Handling" "Dates" "Earliest/Single Date" row
      And selects "Month(s)" from dropdown in "Media Handling" "Dates" "Earliest/Single Date" row
    Then "Month(s)" should be visible
      And presses the "Esc" key
    Then the structured date popup should contain entered values

  #Organization - Foundation date

    Given user is on the "Create New" page
      And selects the "Organization" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Organization" 
      And enters "1" in the "Organization" field
      And enters "1" in the "Foundation date" field
    Then the structured date popup should appear
      And enters "9999" in the "Organization" field
      And enters "9999" in the "Foundation date" field
      And enters "9999" in the "Earliest/Single Year" field
    Then "9999" in "Organization" field is not cut off
    Then "9999" in "Foundation date" field is not cut off
    Then "9999" in "Earliest/Single Year" field is not cut off
      And clicks in "Era" column in "Organization" "Foundation date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Organization" "Foundation date" "Earliest/Single Date" row
      And selects "BCE" from dropdown in "Organization" "Foundation date" "Earliest/Single Date" row
    Then "BCE" should be visible
      And clicks in "Certainty" column in "Organization" "Foundation date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Organization" "Foundation date" "Earliest/Single Date" row
      And selects "Probably" from dropdown in "Organization" "Foundation date" "Earliest/Single Date" row
    Then "Probably" should be visible
      And clicks in "Unit" column in "Organization" "Foundation date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Organization" "Foundation date" "Earliest/Single Date" row
      And selects "Month(s)" from dropdown in "Organization" "Foundation date" "Earliest/Single Date" row
    Then "Month(s)" should be visible
      And presses the "Esc" key
    Then the structured date popup should contain entered values

  #Organization - Dissolution date

    Given user is on the "Create New" page
      And selects the "Organization" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Organization" 
      And enters "1" in the "Organization" field
      And enters "1" in the "Dissolution date" field
    Then the structured date popup should appear
      And enters "9999" in the "Organization" field
      And enters "9999" in the "Dissolution date" field
      And enters "9999" in the "Earliest/Single Year" field
    Then "9999" in "Organization" field is not cut off
    Then "9999" in "Dissolution date" field is not cut off
    Then "9999" in "Earliest/Single Year" field is not cut off
      And clicks in "Era" column in "Organization" "Dissolution date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Organization" "Dissolution date" "Earliest/Single Date" row
      And selects "BCE" from dropdown in "Organization" "Dissolution date" "Earliest/Single Date" row
    Then "BCE" should be visible
      And clicks in "Certainty" column in "Organization" "Dissolution date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Organization" "Dissolution date" "Earliest/Single Date" row
      And selects "Probably" from dropdown in "Organization" "Dissolution date" "Earliest/Single Date" row
    Then "Probably" should be visible
      And clicks in "Unit" column in "Organization" "Dissolution date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Organization" "Dissolution date" "Earliest/Single Date" row
      And selects "Month(s)" from dropdown in "Organization" "Dissolution date" "Earliest/Single Date" row
    Then "Month(s)" should be visible
      And presses the "Esc" key
    Then the structured date popup should contain entered values

  #Person - Birth date

    Given user is on the "Create New" page
      And selects the "Person" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Person" 
      And enters "1" in the "Person" field
      And enters "1" in the "Birth date" field
    Then the structured date popup should appear
      And enters "9999" in the "Person" field
      And enters "9999" in the "Birth date" field
      And enters "9999" in the "Earliest/Single Year" field
    Then "9999" in "Person" field is not cut off
    Then "9999" in "Birth date" field is not cut off
    Then "9999" in "Earliest/Single Year" field is not cut off
      And clicks in "Era" column in "Person" "Birth date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Person" "Birth date" "Earliest/Single Date" row
      And selects "BCE" from dropdown in "Person" "Birth date" "Earliest/Single Date" row
    Then "BCE" should be visible
      And clicks in "Certainty" column in "Person" "Birth date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Person" "Birth date" "Earliest/Single Date" row
      And selects "Probably" from dropdown in "Person" "Birth date" "Earliest/Single Date" row
    Then "Probably" should be visible
      And clicks in "Unit" column in "Person" "Birth date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Person" "Birth date" "Earliest/Single Date" row
      And selects "Month(s)" from dropdown in "Person" "Birth date" "Earliest/Single Date" row
    Then "Month(s)" should be visible
      And presses the "Esc" key
    Then the structured date popup should contain entered values

  #Person - Death date

    Given user is on the "Create New" page
      And selects the "Person" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Person" 
      And enters "1" in the "Person" field
      And enters "1" in the "Death date" field
    Then the structured date popup should appear
      And enters "9999" in the "Person" field
      And enters "9999" in the "Death date" field
      And enters "9999" in the "Earliest/Single Year" field
    Then "9999" in "Person" field is not cut off
    Then "9999" in "Death date" field is not cut off
    Then "9999" in "Earliest/Single Year" field is not cut off
      And clicks in "Era" column in "Person" "Death date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Person" "Death date" "Earliest/Single Date" row
      And selects "BCE" from dropdown in "Person" "Death date" "Earliest/Single Date" row
    Then "BCE" should be visible
      And clicks in "Certainty" column in "Person" "Death date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Person" "Death date" "Earliest/Single Date" row
      And selects "Probably" from dropdown in "Person" "Death date" "Earliest/Single Date" row
    Then "Probably" should be visible
      And clicks in "Unit" column in "Person" "Death date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Person" "Death date" "Earliest/Single Date" row
      And selects "Month(s)" from dropdown in "Person" "Death date" "Earliest/Single Date" row
    Then "Month(s)" should be visible
      And presses the "Esc" key
    Then the structured date popup should contain entered values

  #Work - Work date

    Given user is on the "Create New" page
      And selects the "Work" radio button on the Create New page
      And clicks on the Create button
    Then the titlebar should contain "Work" 
      And enters "1" in the "Work" "Work date" field
    Then the structured date popup should appear
      And enters "9999" in the "Work" field
      And enters "9999" in the "Work date" field
      And enters "9999" in the "Earliest/Single Year" field
    Then "9999" in "Work" field is not cut off
    Then "9999" in "Work date" field is not cut off
    Then "9999" in "Earliest/Single Year" field is not cut off
      And clicks in "Era" column in "Work" "Work date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Work" "Work date" "Earliest/Single Date" row
      And selects "BCE" from dropdown in "Work" "Work date" "Earliest/Single Date" row
    Then "BCE" should be visible
      And clicks in "Certainty" column in "Work" "Work date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Work" "Work date" "Earliest/Single Date" row
      And selects "Probably" from dropdown in "Work" "Work date" "Earliest/Single Date" row
    Then "Probably" should be visible
      And clicks in "Unit" column in "Work" "Work date" "Earliest/Single Date" row
    Then a drop down list should appear in the "Person" "Work date" "Earliest/Single Date" row
      And selects "Month(s)" from dropdown in "Person" "Work date" "Earliest/Single Date" row
    Then "Month(s)" should be visible
      And presses the "Esc" key
    Then the structured date popup should contain entered values
    Then close the browser 
