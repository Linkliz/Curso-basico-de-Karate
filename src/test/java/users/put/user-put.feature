Feature: Put user on regres
  Scenario: Update a user
    Given url "https://reqres.in"+"/api/users/"+"2"
    And request { "name": "Liz", "job": "developer" }
    When method put
    Then status 200
    And match $.name == 'Liz'