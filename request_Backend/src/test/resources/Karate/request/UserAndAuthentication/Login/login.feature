Feature: Service Post
  As QA automation
  I want to login an existing user

  Background: consume service
    * url url

  Scenario: Add a new user Using Post Method

    * def requestBody = read('Karate/request/UserAndAuthentication/Register/requestBody.json')
    * def responsePost = read('Karate/request/UserAndAuthentication/Register/responsePost.json')

    Given path 'users','login'
    And request requestBody
    When method POST
    Then status 200