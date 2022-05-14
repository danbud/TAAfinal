# Hodnotenie

### Celkovo

---
- Replikovatelnost testu: 4:1    (PASS:FAIL)
---

#### Errors:

- WebDriverException: Message: unknown error: cannot determine loading status

---
  
- Z pohladu testingu:
  - zbytocne stale ides cez homepage
  - miestami su strasne dlhe `Sleep`
  - `Remove item 1` atd... nemusi byt jasne, co sa pod tym mysli, ale v zasade to ako tester chapem
  - neni mi jasne z overal pohladu, kde sa validuje, ci item, co som removol sa stratil
  - a nevidim ani validaciu ci kazdy item je z range

- Z pohladu automatizacie:
  - moc dlhe `Sleep`, miestami som zaspaval aj ja
  - Remove Item 1, potom 3 a potom 2 nedava zmysel
    - lepsie by bolo vediet konkretne o co ide
    - pretoze, ak removnem item 1,  to co ostane v kosiku je: 2 a 3?  takze reomuvjem 2 a 3? 
    - ak removnem 3.. ostane mi 2?  nedava to troska zmysel
  - zbytocny prechod cez homepage
  - nezatvara sa BROWSER

- ***Overall***:
  - Test mi presiel 4x, vyborna uspesnost

### Keywords subor

- `General`
  - `Set Window Size` - vyborne, ze si to pouzila a nastavila rozlisenie
    - len doporucenie, ak sme na fullhd, je lepsie nastavit o nieco mensie , aby si mala istotu ze to bude na screene
  - paci sa mi ze si spravila KW a pouzila ho v inom KW, super prepouzitie
  - tie `Sleep` ma tam dost irituju  

- Keyword: `Check price 1 if is in interval 50 = 90`
  - cena z app sa ti vytiahne aj zo znakom eura
  - pred porovnavanim musis tento znak odstranit, aby si z toho mala cislo
  - mas blbo podmienku na 67 riadku,  `${50} < ${var1} < ${90}` je spravne
  - na porovnanie sa da pouzit aj: `Should Be True    ${50} < ${var1} < ${90}`
  - pri porovnavani, pozor aby si mala rovnake datove typy, je dobre pouzit  'float(${var1})` aby si mala istotu, ze to bude cislo

- Keyword: `Select filter for price from 50 to 90 eur`
  - argumenty, generalizuj, mas to dobre rozbehnute
  - prerob to na parametre, a mas univerzalny KW!

- Keyword: `Remove item x`  
  - mas 3x taky isty kewyrod, a ako pisem vyssie, ak to cislo ma hovorit o indexe, je to hlupost, lebo ak nieco odtranim, tak index sa mi posunie

- Keyword: `Select product z`
  - to co vyssie, neni mi uplne jasne, co ten index znamena, co to cislo vobec je
  - snaz sa lokalizovat podla textu,  chces  aby tester videl, co sa deje, nie aby videl abstraktne: 'kupujem produkt 1'
  
### Variables subor

- vyborne je, ze si ako lokator na grily pouzila nieco co je exaktne, je to sice len 'url' ale je to dostatocne presne na to, aby si ten vyber vedela opakovane opakovat
- nepaci sa mi, ze si to nepouzila aj pri remove
- lokatory niesu absolutne, coz je vyborne, mensia sanca na chyby
- ak by si napr pri ${tipy_na_grilovanie} pouzila formatovanie retazcov ({}) , vedela by si spravit z testcase co to pouziva uplne genericky, doporucoval by som to tak spravit
- detto pre filtre

### Test Cases subor

- celkovo dobre napisany
- zbytocny [Tags]
- tie komentovane veci by bolo dobre vycistit, zbytocne to kazi vysledny dojem
- a ak tie sleepy uz teda sces, tak ich treba skovat do remove item napr.. alebo niecoho ineho
- tak isto, skovat veci na 26, 27 riadku... netreba mi vidiet ze sa klika na kosik
  - uz by som to robil ako  `Check cart` alebo neico podobne


### Readme.md subor

- jednoduchy a jasny postup avsak:
  - `set up pythonpath for resources` je zvlastne napisane, neviem co to ma znamenat
- k chromedriver je dobre dat aj link, aj popis jemny, co to je naco to je a aku verziu
  - urcite nedavat a 'nevnucovat' ziadne cesty
  - cestu co si zadala znamena: `z rootu disku, chod do /Final/venv/Scripts`, co na windowse nebude fungovat, a na linux/unix systemoch tiez nie, pokial nemas prava (taky folder proste neexistuje)
  - takze, napisat iba, ze musi byt v env premennych, kam vidim
- k bezaniu, je dobre aj napisat, kde ten command mam spustit

### requirements.txt subor
 
- `pabot` nikde nespominas, nie je nutne ho instalovat
- snaz sa v requirements.txt drzat iba veci potrebne pre kod
- detto komentovany riadok (#) , zbytocnost, netreba tam pisat, ako sa to instaluje

### Git repository

- obsah adresara je dostatocny
- navyse je len log.html
- doporucujem nastavit .gitignore aby spravne subory iba uploadoval
