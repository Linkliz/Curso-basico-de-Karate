Feature: Post user on regres
  Background:
    * url "https://reqres.in"
    * path "/api/users"
    #* def var = { "name": "Liz", "job": "developer" }
    * request { "name": "#(name)", "job": "#(job)" }

  Scenario Outline: Post a user
    #Given request var
    When method post
    Then status 201

    Examples:
    |name|job|
    |Liz | Analyst|
    |Carlos | doctor|
    |Gustavo | teacher|

  Scenario: Post a user without job
    Given request { "name": "Liz" }
    When method post
    Then status 201

  Scenario: Post a user with name invalid
    Given request { "name": "$%&%", "job": "developer" }
    When method post
    Then status 201