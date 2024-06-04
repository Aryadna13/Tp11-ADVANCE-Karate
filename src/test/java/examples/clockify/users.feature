@Regression @TimeEntry
Feature: Calcular horas trabajadas

  Background:
    Given url BaseUrl
    And header x-api-key = Token
    * def startDate = '2024-05-30T00:00:00Z'
    * def endDate = '2024-06-02T00:00:00Z'
    * def workspaceId = '6537291f940183327c06fc57'
    * def userId = '6537291f940183327c06fc56'

  @timeEntries
  Scenario: Obtener entradas de tiempo
    Given path 'v1', 'workspaces', workspaceId, 'user', userId, 'time-entries'
    And param start = startDate
    And param end = endDate
    When method get
    Then status 200
    * def timeEntries = response
    * print 'Entradas de horas:', timeEntries

  @timeentrys
  Scenario: Obtener horas trabajadas
    * def startDate = '2024-05-30T00:00:00Z'
    * def endDate = '2024-06-02T00:00:00Z'
    Given path 'v1/workspaces/6537291f940183327c06fc57/user/6537291f940183327c06fc56/time-entries'
    And param start = startDate
    And param end = endDate
    When method get
    Then status 200


    * print 'Entradas de horas:', response


    * def timeEntries = response
    * def totalSeconds = 0

    * eval
      """
      function transformUser(timeEntries) {
        var totalSeconds = 0;
        timeEntries.forEach(function(entry) {
          if (entry.timeInterval && entry.timeInterval.duration) {
            var duration = entry.timeInterval.duration;
            var match = duration.match(/^PT(\d+H)?(\d+M)?(\d+S)?$/);
            if (match) {
              var hours = match[1] ? parseInt(match[1].replace('H', '')) : 0;
              var minutes = match[2] ? parseInt(match[2].replace('M', '')) : 0;
              var seconds = match[3] ? parseInt(match[3].replace('S', '')) : 0;
              totalSeconds += (hours * 3600) + (minutes * 60) + seconds;
            }
          }
        });
        return totalSeconds;
      }
      """
    * def totalSeconds = transformUser(timeEntries)
    * def totalHours = totalSeconds / 3600
    * print 'Total de horas trabajadas:', totalHours

