Feature: Post Test/Create User


  Background:
    Given url baseURL
    And print "ini adalah post create user"
    * def body = {"id": 15,"username": "Angga","firstName": "Krisna","lastName": "Anggara","email": "Angga","password": "Angga","phone": "123","userStatus": 0 }
    * def headerUser = { Accept : 'application/json'}

  @post @test
  Scenario: Post Data User
    When path "/user"
    And headers headerUser
    And request body
    And method post
    Then status 200
    And print response
    And assert response.message == "15"

