Feature: Post a new article
  As QA Automation
  I want to post a new article into the API service
  To validate response and status code

  Background: Base URL
    * url url
    * def requestBody = read('Karate/request/Article/requestBody.json')
    * def responsePost = read('Karate/request/Article/responsePost.json')

  Scenario: Post an article with correct data

    Given header Authorization = 'Bearer '+ token
    Given path 'articles'
    And request requestBody
    When method POST
    Then status 200
    And match response == responsePost
