package com.automationexercise.pages;

import com.automationexercise.utility.Utility;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;

public class CategoryPage extends Utility {
    @CacheLookup
    @FindBy(xpath = "//h2[normalize-space()='Women - Dress Products']")
    WebElement womenDressProductText;

    @CacheLookup
    @FindBy(xpath = "//h2[normalize-space()='Men - Tshirts Products']")
    WebElement menDressProductText;

    public String getTitleManWomenProduct(String text){
        String res = null;
        if(text.equalsIgnoreCase("MEN - TSHIRTS PRODUCTS")){
            res = getTextFromElement(menDressProductText);
        }else{
            res = getTextFromElement(womenDressProductText);
        }
        return res;
    }
}
