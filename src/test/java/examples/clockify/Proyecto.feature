@Regression @Proyecto
Feature: Proyecto

  Background:
    Given url BaseUrl
    And header x-api-key = Token

  @PostNuevoProyecto
  Scenario: Agregar un nuevo proyecto relacionado con el cliente
    #*def responseCleinte = call read ('classpath:examples/users/Cliente.feature@PostAddClients')
    #*def clientId = responseCliente.clienteID
    Given path 'v1','workspaces','6537291f940183327c06fc57', 'projects'
    And request { name: 'ProyectoTutor' }
    When method POST
    Then status 201
    And match response.name == 'ProyectoTutor'

    #nota: No se puede relacionar con el cliente en la version gratuita



