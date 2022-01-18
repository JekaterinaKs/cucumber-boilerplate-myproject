Feature: User is able to search in product list

 Background:
        Given I open the site "/"
    
    Scenario: Validate searchbar ir present on homepage
        Then I expect that element "[name = 'search']" is displayed
        
    Scenario: Validate searchbar ir present on category page
        When I click on the button "//*[@id='menu']/div[2]/ul/li[7]/a"
        Then I expect that the url is "http://www.demoshop24.com/index.php?route=product/category&path=33"
        And I expect that element "[name = 'search']" is displayed

    Scenario: Validate that search results return product descriptions
        When I click on the button "//*[@id='search']/span/button"
        Then I expect that element "//*[@id='content']/h1" matches the text "Search"
        When I add "Lorem ipsum is a pseudo-Latin" in the inputfield "#input-search"
        And I click on the element "[name = 'description']"
        And I click on the button "#button-search"
        Then I expect that element "//*[@id='content']/p[2]" matches the text "There is no product that matches the search criteria."
        When I clear the inputfield "#input-search"
        And I click on the element "[name = 'description']"
        Then I expect that checkbox "[name = 'description']" is not checked 
        When I add "new mobile phone" in the inputfield "#input-search"
        And I click on the element "[name = 'description']"
        And I click on the button "#button-search"
        Then I expect that element "//*[@id='content']/div[3]/div/div/div[2]/div[1]/p[1]" contains the text "new mobile phone"
        When I clear the inputfield "#input-search"
        And I click on the element "[name = 'description']"
        Then I expect that checkbox "[name = 'description']" is not checked
        When I add "Iph" in the inputfield "#input-search"
        And I click on the button "#button-search"
        Then I expect that element "//*[@id='content']/div[3]/div/div/div[2]/div[1]/h4/a" contains the text "iPhone"


