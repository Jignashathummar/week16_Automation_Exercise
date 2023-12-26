package com.pages;

import com.automationexercise.utility.Utility;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;

public class LoginPage extends Utility {
    @CacheLookup
    @FindBy(xpath = "//h2[normalize-space()='Login to your account']")
    WebElement loginToYourAccount;

    @CacheLookup
    @FindBy(xpath = "//input[@data-qa='login-email']")
    WebElement emailField;

    @CacheLookup
    @FindBy(xpath = "//input[@placeholder='Password']")
    WebElement passwordField;

    @CacheLookup
    @FindBy(xpath = "//button[normalize-space()='Login']")
    WebElement loginBtn;

    public String getTextLoginToYourAccount(){
        return getTextFromElement(loginToYourAccount);
    }

    public void enterEmailAndPassword(String userName, String password){
        sendTextToElement(emailField, userName);
        sendTextToElement(passwordField,password);
    }

    public void clickOnLoginBtn(){
        clickOnElement(loginBtn);
    }
}
