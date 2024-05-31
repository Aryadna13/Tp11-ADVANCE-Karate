
Feature: sample karate test script


  @getAllWorkspaces
  Scenario: get all users and then get the first user by id
    Given url 'https://api.clockify.me/api/'
    And path 'v1/workspaces'
    And header x-api-key = 'MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx'
    #and params si lleva
    When method get
    Then status 200
    * print response

