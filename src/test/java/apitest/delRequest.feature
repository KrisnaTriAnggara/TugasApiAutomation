Feature: Delete User

  Background:
    Given url baseURL
    And print "Ini merupakan delete user"

  @test
  Scenario: Delete data user
  When path "/user/Angga"
  And method delete
  Then status 200
  And print response