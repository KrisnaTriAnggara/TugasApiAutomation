Feature: Get User by username

  Background:
    Given url baseURL
    And print "ini adalah Get User by Username"

  @get @test
  Scenario: Get Data user by Username

    When path "/user/Angga"
    And method get
    Then status 404
    And print response




