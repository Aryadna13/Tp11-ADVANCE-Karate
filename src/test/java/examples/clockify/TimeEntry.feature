@Regression @Users
Feature: Usuarios

  Background:
    Given url BaseUrl
    And header x-api-key = Token

  @GETusers
  Scenario: Agregar un nuevo proyecto relacionado con el cliente
    Given path 'v1','user'
    When method GET
    Then status 200
    * print response.id


  @GETusers
  Scenario: Agregar un nuevo proyecto relacionado con el cliente
    #*def userId = '6537291f940183327c06fc56'
    Given path 'v1','workspaces/6537291f940183327c06fc57/user/6537291f940183327c06fc56/time-entries'
    And param start = '2024-05-30T00:00:00Z'
    And param end = '2024-06-02T00:00:00Z'
    When method GET
    Then status 200
    * print 'Entradas de horas trabajadas: ', response


    #mi Id 6537291f940183327c06fc56

  #*def userId = '6537291f940183327c06fc56'
    @timeentrys
    Scenario: horasblabalbal
  * def startDate = '2024-05-30T00:00:00Z'
  * def endDate = '2024-06-02T00:00:00Z'
    Given path 'v1','workspaces/6537291f940183327c06fc57/user/6537291f940183327c06fc56/time-entries'
    And param start = startDate
    And param end = endDate
    When method get
    Then status  200
    #* print 'entradas de horas:', response
    * def timeWeek = call read ('classpath:examples/clockify/TimeEntry.feature@timeentrys')
    * def timeEntries = timeWeek
    * def TotalHoras = 0
    * eval timeEntries.forEach(function(entry) {if (entry.timeInterval && entry.timeInterval.duration) {var duration = entry.timeInterval.duration;var match = duration.match(/^PT(\d+H)?(\d+M)?(\d+S)?$/);var hours = match[1] ? parseInt(match[1].replace('H', '')) : 0;var minutes = match[2] ? parseInt(match[2].replace('M', '')) : 0;var seconds = match[3] ? parseInt(match[3].replace('S', '')) : 0;totalSeconds += (hours * 3600) + (minutes * 60) + seconds;}})
    * def horas = totalSeconds/3600
    * print 'Total de horas trabajadas:',horas



