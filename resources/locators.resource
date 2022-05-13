*** Variables ***
${neskor}    xpath=//div[@id="onesignal-slidedown-dialog"]//button[@id="onesignal-slidedown-cancel-button"]
${tipy_na_grilovanie}    xpath=//a[@title="Tipy na grilovanie a piknik"]

#${50-90category}    xpath=(//label[contains(@class,'c-form-cell__input u-micro')])[2]
${50-90category}    xpath=//input[@id="price-2"]

${cena_od}    xpath=//input[@id="price-range-min"]
${cena_do}    xpath=//input[@id="price-range-max"]
${product_1}    xpath=//section[@class]/a[@href="https://grily.heureka.sk/tefal-gc-205012/"][1]
#${product_2}    xpath=//section[@class]/a[@href="https://grily.heureka.sk/sencor-sbg-6031ss/"][1]
${product_2}    xpath=//li//section[@class]/a[@href="https://grily.heureka.sk/happy-green-rancher-50sk138t4/"][1]
${product_3}    xpath=//li//section[@class]/a[@href="https://grily.heureka.sk/campingaz-party-grill-200/"][1]

#${pokracovat_v_nakupe}    xpath=//button[@class="c-cart-confirm__button--continue c-offscreen__close e-link"]
#${pokracovat_v_nakupe}    xpath=//div/aside[@class="c-offscreen__pane"]//button[@class="c-cart-confirm__button--continue c-offscreen__close e-link"]
#${pokracovat_v_nakupe}    xpath=//button[contains(@class,'c-cart-confirm__button--continue c-offscreen__close')]

${pokracovat_v_nakupe}    //div[@class='c-cart-confirm__row c-cart-confirm__buttons']//button[1]

${img_heureka_header}    xpath=//header//img[@alt='Heureka']

${kupit_na_heureke_button}    xpath=//button[@class="c-top-offer__cart-button e-button e-button--highlight"]

#${cart}   xpath=//li[@class="c-user-controls__item c-user-controls__item--cart"]/a/span[@class="c-user-controls__icon-container"]
${cart}    xpath=//a[@href="https://www.heureka.sk/kosik/"]

#${remove_1}    xpath=/html/body/div[2]/div/div[1]/div[3]/div/div/div[1]/a/svg
${remove_1}    xpath=(//a[@class='c-product-card__close c-modal__toggle js-modal__toggle e-action'])[1]
#${remove_2}    xpath=(//a[@class='c-product-card__close c-modal__toggle js-modal__toggle e-action'])[2]
${remove_2}    xpath=//*[@id="snippet--cart-content-data"]/div[3]/div/div/div[1]/a
#${remove_3}    xpath=(//a[@class='c-product-card__close c-modal__toggle js-modal__toggle e-action'])[3]
#${remove_3}    xpath=//*[@id="snippet--cart-content-data"]/div[3]/div/div[1]/div[1]/a/svg
${remove_3}    xpath=//*[@id="snippet--cart-content-data"]/div[3]/div/div[1]/div[1]/a

${remove_from_cart}    //a[@class='e-button e-button--negative']

${count_3}   xpath=//span[@data-count="3"]

