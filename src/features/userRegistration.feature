Feature: Users are able to create their accounts via email
    
    Background:
        Given I open the site "/"
        When I click on the link "My Account" 
        And I click on the link "Register" 
        Then I expect that the url is "http://www.demoshop24.com/index.php?route=account/register"

    Scenario Outline: Scenario US01-T01: Verify User are Register
        When I click on the button "[value = 'Continue']" 
        When I add "<firstname>" in the inputfield "#input-firstname"
        And I add "<lasttname>" in the inputfield "#input-lastname"
        And I add "<email>" in the inputfield "#input-email"
        And I add "<telephone>" in the inputfield "#input-telephone"
        And I add "<password>" in the inputfield "#input-password"
        And I add "<password>" in the inputfield "#input-confirm"
        And I click on the element "[name = 'agree']"
        And I click on the button "[value = 'Continue']"
        Then I expect that element "//*[@id='content']/h1" matches the text "Your Account Has Been Created!"
        When I click on the link "My Account" 
        And I click on the link "Logout"
        Then I expect that the url is "http://www.demoshop24.com/index.php?route=account/logout"

        Examples:
        | firstname | lastname | email                 | telephone | password   |
        | John      | Doe      | john.doe42@gmail.com  | 29887766  | JohnDoe11  |
        | Tom       | Smith    | tom.smith42@gmail.com | 29334455  | TomSmith11 |

    Scenario Outline: Scenario US01-T05: After registration user are successful login
        When I add "<firstname>" in the inputfield "#input-firstname"
        And I add "<lasttname>" in the inputfield "#input-lastname"
        And I add "<email>" in the inputfield "#input-email"
        And I add "<telephone>" in the inputfield "#input-telephone"
        And I add "<password>" in the inputfield "#input-password"
        And I add "<password>" in the inputfield "#input-confirm"
        And I click on the element "[name = 'agree']"
        And I click on the button "[value = 'Continue']"
        Then I expect that element "//*[@id='content']/h1" matches the text "Your Account Has Been Created!"
        When I click on the link "My Account" 
        And I click on the link "Logout"
        Then I expect that element "//*[@id='content']/h1" matches the text "Account Logout"
        When I click on the link "My Account" 
        And I click on the link "Login" 
        And I add "<email>" in the inputfield "#input-email"
        And I add "<password>" in the inputfield "#input-password"
        And I click on the button "[value = 'Login']"
        Then I expect that element "//*[@id='content']/h2[1]" matches the text "My Account"
        When I click on the link "My Account" 
        And I click on the link "Logout"
        Then I expect that the url is "http://www.demoshop24.com/index.php?route=account/logout"

        Examples:
        | firstname | lastname | email                 | telephone | password   | 
        | Peter     | Johnson  | p.johnson20@gmail.com | 65432190  | Johnson!   | 

    Scenario Outline: Scenario XX: Check mandatory fields
        When I click on the button "[value = 'Continue']"
        Then I expect that element "//*[@id='account']/div[2]/div/div" matches the text "First Name must be between 1 and 32 characters!"
        And I expect that element "//*[@id='account']/div[3]/div/div" matches the text "Last Name must be between 1 and 32 characters!"
        And I expect that element "//*[@id='account']/div[4]/div/div" matches the text "E-Mail Address does not appear to be valid!"
        And I expect that element "//*[@id='account']/div[5]/div/div" matches the text "Telephone must be between 3 and 32 characters!"
        And I expect that element "//*[@id='content']/form/fieldset[2]/div[1]/div/div" matches the text "Password must be between 4 and 20 characters!"
        When I add "Sara" in the inputfield "#input-firstname"
        And I add "Smith" in the inputfield "#input-lastname"
        And I add "e-mail" in the inputfield "#input-email"
        And I add "33" in the inputfield "#input-telephone"
        And I add "22" in the inputfield "#input-password"
        And I add "22" in the inputfield "#input-confirm"
        And I click on the button "[value = 'Continue']"
        Then I expect that element "//*[@id='account']/div[4]/div/div" matches the text "E-Mail Address does not appear to be valid!"
        And I expect that element "//*[@id='account']/div[5]/div/div" matches the text "Telephone must be between 3 and 32 characters!"
        And I expect that element "//*[@id='content']/form/fieldset[2]/div[1]/div/div" matches the text "Password must be between 4 and 20 characters!"
        When I add "s.smith55@yahoo.com" in the inputfield "#input-email"
        And I add "333333333333333333333333333333333" in the inputfield "#input-telephone"
        And I add "222222222222222222222" in the inputfield "#input-password"
        Then I expect that element "//*[@id='account']/div[5]/div/div" matches the text "Telephone must be between 3 and 32 characters!"
        And I expect that element "//*[@id='content']/form/fieldset[2]/div[1]/div/div" matches the text "Password must be between 4 and 20 characters!"
 


