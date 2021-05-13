Feature: Try to Login

    As a user, I want to be able to Login

    Scenario Outline: Attempting to login with "<validation>" credentials; <username> and <password>
        Given the browser is at the "Login" page
        When the user tries to use "<validation>" credentials, "<username>" and "<password>" to login
        Then the alert message should be "<message>"

        Examples:
            | validation | username | password             | message                        |
            | valid      | tomsmith | SuperSecretPassword! | You logged into a secure area! |
            | invalid    | tomsmith | WrongPassword        | Your password is invalid!      |
            | invalid    | test123  | SuperSecretPassword! | Your username is invalid!      |
