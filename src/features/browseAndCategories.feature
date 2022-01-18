Feature: All products should have own page and category
    
    Scenario: Scenario US10-T02: Some product has category and sub-category
        Given I open the url "http://demoshop24.com/index.php?route=product/product&path=18_46&product_id=43"
        Then I expect that element "//*[@id='product-product']/ul/li[2]/a" is displayed
        And I expect that element "//*[@id='product-product']/ul/li[3]/a" is displayed
        And I expect that element "//*[@id='product-product']/ul/li[4]/a" is displayed
        And I expect that element "//*[@id='product-product']/ul/li[2]/a" matches the text "Laptops & Notebooks"
        And I expect that element "//*[@id='product-product']/ul/li[3]/a" matches the text "Macs"
        And I expect that element "//*[@id='product-product']/ul/li[4]/a" matches the text "MacBook"

Scenario: Scenario US10-T04: Categories are see on browse page
        Given I open the url "http://www.demoshop24.com/index.php?route=product/category&path=20"
        Then  I expect that the css attribute "float" from element "#column-left" is "left"
        And I expect that element "//*[@id='column-left']/div[1]/a[1]" contains the text "(12)"
        And I expect that element "#input-sort" is displayed
        And I expect that element "//*[@id='content']/div[3]/div[3]/div/label" matches the text "Sort By:"
        And I expect that element "#input-limit" is displayed
        And I expect that element "//*[@id='content']/div[3]/div[4]/div/label" matches the text "Show:"
        And I expect that element "//*[@id='content']/div[4]/div[1]/div/div[2]/div[2]/button[1]" is displayed
        And I expect that element "//*[@id='content']/div[4]/div[1]/div/div[2]/div[2]/button[2]" is displayed
        And I expect that element "//*[@id='content']/div[4]/div[1]/div/div[2]/div[2]/button[3]" is displayed
       
        
        
