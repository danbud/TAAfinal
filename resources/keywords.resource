*** Settings ***
Library    SeleniumLibrary
Resource    locators.resource

*** Keywords ***
Open heureka.sk and Setup browser
    Open Browser    https://www.heureka.sk/    gc
    Set Window Size    1920    1080
#    Maximize Browser Window
    Wait Until Page Contains    Tipy na grilovanie a piknik
    Click Element    xpath=//section//a[@class="c-privacy-prompt__cta e-button e-button--simple e-button--small"]
#    Wait Until Page Contains Element    ${neskor}
#    Click Button    ${neskor}

Go to section Prenosne grily and filter 50 - 90 eur
    Click Element    xpath=(//a[contains(@class,'e-heading category-link')])[3]
    Wait Until Location Is    https://grily.heureka.sk/f:28982:1/
    Page Should Contain Checkbox    xpath=//input[@id="price-2"]
#    Select Checkbox    xpath=//input[@id="price-2"]
#    Select Checkbox    xpath=//div[@class="c-filter__controls"]//input[@id="price-2"]
#    Click Element    xpath=//label[@for='price-2']
    Select filter for price from 50 to 90 eur

Select filter for price from 50 to 90 eur
#    Click Element    ${50-90category}
    Input Text    ${cena_od}    50
    Input Text    ${cena_do}    90
    Click Element    xpath=//div[@class="c-range-filter__controls"]/button[@type="submit"]

Select product 1
    Click Element    ${product_1}
    Wait Until Location Contains    tefal-gc-205012
    Click Element    xpath=//span[@class="c-top-offer__buy-text"]
    Wait Until Page Contains    Tovar sme pridali do košíka
    Sleep    2 sec
    Click Element    ${pokracovat_v_nakupe}

Select product 2
    Wait Until Page Contains Element    ${product_2}
    Scroll Element Into View    ${product_2}
    Click Element    ${product_2}
    Click Element    xpath=//span[@class="c-top-offer__buy-text"]
    Wait Until Page Contains    Tovar sme pridali do košíka
    Sleep    2 sec
    Click Element    ${pokracovat_v_nakupe}

Select product 3
    Wait Until Page Contains Element    ${product_3}
    Scroll Element Into View    ${product_3}
    Click Element    ${product_3}
    Click Element    xpath=//span[@class="c-top-offer__buy-text"]
#    Wait Until Page Contains    Tovar sme pridali do košíka
    Sleep    2 sec
    Click Element    ${pokracovat_v_nakupe}

Go to homepage
    Click Element    xpath=//header//img[@alt='Heureka']
    Wait Until Page Contains Element    ${tipy_na_grilovanie}
    
Click on Notification later
    Wait Until Page Contains Element    xpath=//button[@id="onesignal-slidedown-cancel-button"]
    Click Element    xpath=//button[@id="onesignal-slidedown-cancel-button"]

Check price 1 if is in interval 50 = 90
    ${var1}    Get Value    xpath=//div[@data-item-id="7768609"]//div[@class="c-product-card__price u-bold"]
#    If ${locator} > 50 < 90 Log    OK
    IF    ${50} < ${var1} > ${90}
        Log    Price is between 50 - 90
    ELSE
        Log    Price si less than 50 or more than 90.

    END

Remove item 1
    Click Element    ${remove_1}
    Sleep    2 sec
    Click Element    ${remove_from_cart}
    Page Should Not Contain    Tefal GC 205012 Minute Gril
    Page Should Contain    Party gril Campingaz 200 Stove

Remove item 2
    Click Element    ${remove_2}
    Sleep    5 sec
    Click Element    ${remove_from_cart}
#    Click Element    xpath=//a[contains(text(), "Odstrániť z košíka")] # tento mi nefungoval
    Page Should Not Contain    Happy Green RANCHER 50SK138T4

Remove item 3
    Click Element    ${remove_3}
    Sleep    5 sec
    Click Element    xpath=//a[contains(text(), "Odstrániť z košíka")]
#    Click Element    xpath=//a[@href="/kosik/?item=7769559&event=delete&do=itemRemove"]
    Page Should Not Contain    SBG 6031SS kontaktný gril SENCOR



#    Page Should Not Contain    Party gril Campingaz 200 Stove
#    Page Should Not Contain    SBG 6031SS kontaktný gril SENCOR
    



#Add item to cart
#    [Arguments]    ${product}
#    Click Element    [${product}]
#    Buy product on Heureka

#Check added item to cart and Buy product on Heureka
#    Page Should Contain    Tovar sme pridali do košíka
##    Click Element    xpath=//span[@class="c-top-offer__buy-text"]
#    Wait Until Page Contains Element    ${pokracovat_v_nakupe}
#    Click Element    ${pokracovat_v_nakupe}


