package com.pages;

import com.automationexercise.utility.Utility;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;

import java.util.List;

public class HomePage extends Utility {
    private static final Logger log = LogManager.getLogger(RegistrationPage.class);

    @CacheLookup
    @FindBy(xpath = "//ul[@class='nav navbar-nav']/li")////div[@class='shop-menu pull-right']//ul/li
    List<WebElement> topMenu;

    public void selectMenu(String menu) {
        try {
            for (WebElement element : topMenu) {
                if (element.getText().equalsIgnoreCase(menu)) {
                    element.click();
                    log.info("Selecting menu " + element.toString());
                    break;
                }
            }
        } catch (StaleElementReferenceException e) {
            System.out.println(e.getMessage());
        }
    }

    public String verifyFromTopMenu(String text) {
        String result = null;
        for (WebElement element : topMenu) {
            if (element.getText().equalsIgnoreCase(text)) {
                result = element.getText();
                log.info("Verify Text From TopMenu" + element.toString());
            }
        }
        return result;
    }


}
