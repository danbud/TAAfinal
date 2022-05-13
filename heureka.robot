*** Settings ***
Resource    keywords.resource
#Resource    locators.resource
Test Setup    Open heureka.sk and Setup browser
#Test Teardown    Close Browser


*** Test Cases ***
Adding and removing items from cart
    [Tags]    go
    Click Element    ${tipy_na_grilovanie}
    Wait Until Location Is    https://inspiracia.heureka.sk/tipy-na-grilovanie-a-piknik/
#    Click Element    xpath=(//a[contains(@class,'e-heading category-link')])[3]
    Go to section Prenosne grily and filter 50 - 90 eur
    Select product 1
#    Reload Page
    Go to homepage
    Click Element    ${tipy_na_grilovanie}
    Go to section Prenosne grily and filter 50 - 90 eur
    Select product 3
#    Reload Page
    Go to homepage
    Click Element    ${tipy_na_grilovanie}
    Go to section Prenosne grily and filter 50 - 90 eur
    Select product 2
    Click Element    ${cart}
    Page Should Contain Element    ${count_3}
#    Check price 1
    Sleep    15 sec
    Click on Notification later
    Wait Until Page Contains    Tefal GC 205012 Minute Gril
#    Reload Page
    Sleep    10 sec
    Remove item 1
    Sleep    5 sec
    Remove item 3
    Sleep    5 sec
    Remove item 2
    Wait Until Page Contains    Váš košík zíva prázdnotou...


#    Click on Notification later



#    Reload Page

#    Check added item to cart and Buy product on Heureka
#    Select product 2
#    Check added item to cart and Buy product on Heureka
#    Select product 3
#    Check added item to cart and Buy product on Heureka



