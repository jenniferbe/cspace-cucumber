#created by Forest Yang

@administration
Feature: General Administration

  #Crippling lack of stepdefs

  #Test1
  Scenario: Administration is available for administrative account
    Given user is on the "My CollectionSpace" page
      And selects the "Administration" tab
    Then the url should contain "collectionspace/ui/core/html/administration.html"
    Then close the browser

  #Test2

  #Likely a crippling lack of stepdefs

  Scenario: Administration is unavailable for user account without administrative privileges
    Given user is on the "My CollectionSpace" page
      And selects the "Administration" tab
      And selects the "Roles & Permissions" tab
      And clicks the "+ Role" button
      And enters "No Admin" in the "Administration" "Role Name" field
      And sets Permissions for "termlist" to None
      And sets Permissions for "users" to None
      And sets Permissions for "role" to None
      And clicks the "Save" button
      And selects the "Users" tab
      And clicks the "+ User" button
      And enters "Notanemail@notanemail.com" in the "Administration" "Email Address" field
      And enters "No Admin User" in the "Administration" "Full Name" field
      And enters "12341234" in the "Administration" "Password" field
      And enters "12341234" in the "Administration" "Confirm Password" field
      And clicks "No Admin" from Roles list 
      And clicks the "Save" button
      And clicks the "Sign Out" button
      And enters "Notanemail@notanemail.com" in the "Email" field
      And enters "12341234" in the "Password" field
      And clicks the "Sign In" button
    Then the Adminstration tab should not appear

  #Test 21
  Scenario: Navigation to Administration tab possible with keys
    Given user is on the "My CollectionSpace" page
      And tabs to "Administration" tab
      And presses enter
    Then the titlebar should contain "Administration"
      And presses spacebar
    Then nothing should happen
    Then the url should contain "collectionspace/ui/core/html/administration.html"
