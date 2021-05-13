/// <reference types='cypress' />

import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";

Given(`the browser is at the "Login" page`, () => {
    cy.visit("/login");
});

When(/^the user tries to use "(.*)" credentials, "(.*)" and "(.*)" to login$/, (validation, username, password) => {
    cy.login(username, password);
});

Then(/the alert message should be "(.*)"/, (message) => {
    cy.get('#flash').should('contain', message);
});