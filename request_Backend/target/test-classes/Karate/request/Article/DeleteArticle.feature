Feature: Delete an article
  As QA Automation
  I want to delete an article

  Background: Base URL
    * url url

  Scenario: delete an article
    Given header Authorization = 'Bearer '+ token
    Given path 'articles'
    And path slug
    When method DELETE
    Then status 204