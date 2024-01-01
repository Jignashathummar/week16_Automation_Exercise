package com.automationexercise.pages;

import com.automationexercise.utility.Utility;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;

public class ProductDetailsPage extends Utility {
    @CacheLookup
    @FindBy(xpath = "//div[@class='product-information']//h2")
    WebElement productName;

    @CacheLookup
    @FindBy(xpath = "//div[@class='product-information']//p[1]")
    WebElement productCategory;

    @CacheLookup
    @FindBy(xpath = "//div[@class='product-information']//span/span")
    WebElement productPrice;

    @CacheLookup
    @FindBy(xpath = "//div[@class='product-information']//p[2]")
    WebElement productAvailability;

    @CacheLookup
    @FindBy(xpath = "//div[@class='product-information']//p[3]")
    WebElement productCondition;

    @CacheLookup
    @FindBy(xpath = "//div[@class='product-information']//p[4]")
    WebElement productBrandType;

    @CacheLookup
    @FindBy(id = "quantity")
    WebElement productQuantity;

    @CacheLookup
    @FindBy(xpath = "//a[normalize-space()='Write Your Review']")
    WebElement writeYourReviewText;

    @CacheLookup
    @FindBy(xpath = "//button[normalize-space()='Add to cart']")
    WebElement addToCartButton;

    @CacheLookup
    @FindBy(id = "name")
    WebElement reviewNameField;

    @CacheLookup
    @FindBy(id = "email")
    WebElement reviewEmailField;

    @CacheLookup
    @FindBy(id = "review")
    WebElement reviewTextField;

    @CacheLookup
    @FindBy(id = "button-review")
    WebElement submitBtn;

    @CacheLookup
    @FindBy(xpath = "//div[@class='col-md-12 form-group']//div[@class='alert-success alert']")
    WebElement successReviewMsg;

    public String getProductName() {
        return getTextFromElement(productName);
    }

    public String getProductCategory() {
        return getTextFromElement(productCategory);
    }

    public String getProductPrice() {
        return getTextFromElement(productPrice);
    }

    public String getProductAvailability() {
        return getTextFromElement(productAvailability);
    }

    public String getProductCondition() {
        return getTextFromElement(productCondition);
    }

    public String getProductBrand() {
        return getTextFromElement(productBrandType);
    }

    public void changeProductQuantity(String quantity) {
        productQuantity.clear();
        sendTextToElement(productQuantity, quantity);
    }

    public void clickOnButton(String btnName) {
        if (btnName.equalsIgnoreCase("Add to cart")){
            clickOnElement(addToCartButton);
        } else if (btnName.equalsIgnoreCase("Submit")) {
            clickOnElement(submitBtn);
        }
    }

    public String getWriteYourReviewText(String text) {
        String result = null;
        if (text.equalsIgnoreCase("WRITE YOUR REVIEW")){
            result = getTextFromElement(writeYourReviewText);
        }else if (text.equalsIgnoreCase("Thank you for your review.")){
            result = getTextFromElement(successReviewMsg);
        }
        return result;
    }

    public void enterReviewDetails(String name, String email, String reviewText){
        sendTextToElement(reviewNameField, name);
        sendTextToElement(reviewEmailField, email);
        sendTextToElement(reviewTextField, reviewText);
    }


}
