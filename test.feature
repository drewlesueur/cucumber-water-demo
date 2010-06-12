Feature: Google Search
  In order to find out more info
  I need to be able to search Google
  
  Scenario: Google search for picaxe
    Given that I am on the Google Homepage
    When I search for "pickaxe"
    Then I should see "The Pragmatic Bookshelf"