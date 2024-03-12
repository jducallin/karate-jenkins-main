Feature: Posts endpoint test

  Background:
    Given url 'https://dev-457931.okta.com/oauth2/aushd4c95QtFHsfWt4x6/v1/token'


  @Acess_Token
  Scenario: Access Token
    * def credentials = { scope: 'offline_access', grant_type:  'password', username: 'api-user4@iwt.net', password: 'b3z0nV0cLO', client_id: '0oahdhjkutaGcIK2M4x6' }
    And form fields credentials
    When method post
    * def token = response.access_token
    * print "El token es:", token



#  @Prueba_API
#  Scenario: verificar un usuario en especifico
#    Given  url 'https://jsonplaceholder.typicode.com'
#    And path 'posts'
#    And param userID = 1
#    When method get
#    Then status 200
#    And assert response.length > 1
#    And match responseType == 'json'

    #* print "RESPONSE" , response [0].length

#  @Prueba_API_2
#  Scenario: Verificar un usuario en especifico tipo 2
#    Given url 'https://jsonplaceholder.typicode.com'
#    And path 'posts'
#    And param userId = 2
#    When method get
#    Then status 200
#    And assert response.length > 1
#    And match responseType == 'json'
#    * print "RESPONSE:", response


