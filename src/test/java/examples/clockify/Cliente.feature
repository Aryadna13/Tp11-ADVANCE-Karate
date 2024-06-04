@Regression @Cliente
Feature: Cliente

  Background:
    Given url BaseUrl
    And header x-api-key = Token

  @PostAddClients
  Scenario: Agregar un nuevo cliente
    * def body = read ('classpath:examples/request/AddClient.json')
    Given path 'v1','workspaces','6537291f940183327c06fc57','clients'
    And request body
    When method POST
    Then status 201
    And match response.name == 'Tutor'
    * def clientId = response.id

    #otra forma de llamar albody y hacerle modificaciones and set body.name ('nuevo nombre')

