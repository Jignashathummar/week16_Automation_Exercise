package com.automationexercise.pages;

import com.automationexercise.utility.Utility;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;

public class CheckOutPage extends Utility {
    @CacheLookup
    @FindBy(id = "address_delivery")
    WebElement adeliveryAdressDetails;

    @CacheLookup
    @FindBy(id = "address_invoice")
    WebElement billingAddressDetails;

    @CacheLookup
    @FindBy(linkText = "Place Order")
    WebElement placeOrderBtn;

    @CacheLookup
    @FindBy(name = "message")
    WebElement descriptionField;

    @CacheLookup
    @FindBy(name = "name_on_card")
    WebElement nameOnCardField;

    @CacheLookup
    @FindBy(name = "card_number")
    WebElement cardNumberField;
    @CacheLookup
    @FindBy(name = "cvc")
    WebElement cvcField;

    @CacheLookup
    @FindBy(name = "expiry_month")
    WebElement expiryMonthField;

    @CacheLookup
    @FindBy(name = "expiry_year")
    WebElement expiryYearField;

    @CacheLookup
    @FindBy(id = "submit")
    WebElement payAndConfirmBtn;

    @CacheLookup
    @FindBy (xpath = "//p[normalize-space()='Congratulations! Your order has been confirmed!']")
    WebElement orderConfirmationMessage;

    @CacheLookup
    @FindBy(xpath = "//a[normalize-space()='Download Invoice']")
    WebElement downloadInvoiceBtn;

    @CacheLookup
    @FindBy(xpath = "//a[normalize-space()='Continue']")
    WebElement continueBtn;


    public String getTextAddressDetails(String addressType) {
        String res = null;
        if (addressType.equalsIgnoreCase("DELIVERY")) {
            res = getTextFromElement(adeliveryAdressDetails);
        } else {
            res = getTextFromElement(billingAddressDetails);
        }
        return res;
    }

    public void enterDescription(String description) {
        sendTextToElement(descriptionField, description);
    }

    public String getConfirmationMsg(){
        return getTextFromElement(orderConfirmationMessage);
    }

    public void clickOnBtn(String btnName) {
        if (btnName.equalsIgnoreCase("Place Order")) {
            clickOnElement(placeOrderBtn);
        }else if(btnName.equalsIgnoreCase("Pay and Confirm Order")){
            clickOnElement(payAndConfirmBtn);
        }else if (btnName.equalsIgnoreCase("Download Invoice")){
            clickOnElement(downloadInvoiceBtn);
        }else if (btnName.equalsIgnoreCase("Continue")){
            clickOnElement(continueBtn);
        }
    }

    public void enterPaymentDetails(String nameOnCard, String cardNumber, String cvc, String expDate) {
        String[] expDetails = expDate.split("/");
        sendTextToElement(nameOnCardField, nameOnCard);
        sendTextToElement(cardNumberField, cardNumber);
        sendTextToElement(cvcField, cvc);
        sendTextToElement(expiryMonthField, expDetails[0]);
        sendTextToElement(expiryYearField, expDetails[1]);
    }

    public boolean checkFileIsDownloaded(String filePath){
        return isFileDownloaded(filePath);
    }
}



