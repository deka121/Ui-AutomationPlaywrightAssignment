Feature:  Contact Form Functionality
  As a user of the website
  I want to receive appropriate error messages
  So that I know when I have not filled out the form correctly

  Background: navigation to contact page
        Given the user navigates to the Contact page

  Scenario Outline: Submitting a contact form with valid details
    When the user fills in the Name field with "<Name>"
    And the user fills in the Email field with "<Email>"
    And the user fills in the Phone field with "<Phone>"
    And the user fills in the Subject field with "<Subject>"
    And the user fills in the Message field with "<Message>"
    And the user clicks the Submit button
    Then the user should see a confirmation message "Thanks for getting in touch <Name>!"

    Examples:
      | Name     | Email                   | Phone        | Subject | Message                                                 |              
      | Mark Stw | mark.stw@gmail.com      | 07435493973  | Inquiry | I would like more information about your services.      | 
      | Deka D   | deka.d@example.com      | 07435493977  | Inquiry | Could you provide details on pricing for a single room ?|               




  Scenario: Display error messages when the contact form is submitted with empty fields
    When the user submits the contact form with all fields blank
    Then the user should see the following error messages:
      | Field    | Error Message                                 |
      | Phone    | Phone may not be blank                        |
      | Name     | Name may not be blank                         |
      | Subject  | Subject may not be blank                      |
      | Message  | Message must be between 20 and 2000 characters|
      | Message  | Message may not be blank                      |
      | Subject  | Subject must be between 5 and 100 characters  |
      | Phone    | Phone must be between 11 and 21 characters    |
      | Email    | Email may not be blank                        |
