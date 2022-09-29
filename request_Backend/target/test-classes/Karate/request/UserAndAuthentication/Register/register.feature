Feature: Post
  As QA automation
  I want to register a new client
  to validate status code

  Background: consume service
    * url url

  Scenario: Register a user Post Method

    * def requestBody = read('Karate/request/UserAndAuthentication/Register/requestBody.json')
    * def responsePost = read('Karate/request/UserAndAuthentication/Register/responsePost.json')

    Given path 'users'
    And request requestBody
    When method POST
    Then status 200
    And match response == responsePost
