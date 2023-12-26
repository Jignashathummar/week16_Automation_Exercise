package com.automationexercise.steps;

import com.pages.LoginPage;
import io.cucumber.java.en.And;

import static com.automationexercise.browserfactory.ManageBrowser.softAssertions;

public class LoginUserSteps {

    @And("Verify {string} is visible")
    public void verifyIsVisible(String verifyText) {
       softAssertions.assertEquals(new LoginPage().getTextLoginToYourAccount(), verifyText, "'Login to your account' text is not visible");
    }

    @And("I enter email: {string} and password: {string}")
    public void iEnterEmailAndPassword(String userName, String password) {
        new LoginPage().enterEmailAndPassword(userName, password);
    }

    @And("I click {string} button")
    public void iClickButton(String btnText) {
        new LoginPage().clickOnLoginBtn();
    }
}
