Feature: Delete user on regres
  Scenario: Drop a user
    * call read("../post/user-post-snippets.feature@Create")
    Given url "https://reqres.in"+"/api/users/"+ contactId
    When method delete
    Then status 204