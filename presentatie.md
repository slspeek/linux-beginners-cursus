---
marp: true
theme: gaia
---
# Linux beginners cursus
### GNOME op Debian 12
![height:290px](img/debian-logo.png)
![bg right](img/qr-link-linux-beginners-cursus.png)

---
## Onderdelen van de cursus
1. Presentatie ([download presentatie voor offline gebruik](https://github.com/slspeek/linux-beginners-cursus/releases/latest/download/presentatie.zip))
1. [Samenvatting](samenvatting.html) [PDF versie](https://github.com/slspeek/linux-beginners-cursus/releases/latest/download/samenvatting.pdf)
1. [Oefeningen](oefeningen.html) [PDF versie](https://github.com/slspeek/linux-beginners-cursus/releases/latest/download/oefeningen.pdf)
1. [Begrippenlijst](begrippen.html) [PDF versie](https://github.com/slspeek/linux-beginners-cursus/releases/latest/download/begrippen.pdf)
![bg right width:100%](img/tux-gnu_linux.png)
---
## Rondleiding GNOME
1. Inloggen in GDM
1. Schermbeveiliging
1. Wat is GNOME
1. Modi
1. Dash
1. Bovenbalk
1. Systeemmenu
1. Afsluiten

![bg right](img/GNOME-logo.png)

---
### Inloggen in GDM
- GDM is de **display manager**, die regelt de graphische logins
- Inloggen met ```(gebruikersnaam='tux', wachtwoord='tux')```
- GNOME desktopmanager opent in activiteiten modus
---
### Schermbeveiliging

- om te zorgen dat anderen uw gebruikers account niet kunnen misbruiken
- activeren door:
    - de computer een tijd inactief te laten (standaard 5 minuten)
    - op ![](img/vergrendelings-knop.png) klikken uit het systeemmenu ![](img/systeem-menu-gesloten.png)
    - ```SUPER+L``` in te drukken

---
#### Voorbeeld
![width:950px](img/schermvergrendeling-klok.png)

---
Losmaken door je wachtwoord in te voeren
![width:950px](img/schermvergrendeling-wachtwoord-invoeren.png)

---
### Hulp openen 
- Met ```SUPER+F1```
![bg right width:40%](img/hulp-icon.png)
- Zoeken in Hulp met ```CTRL+S```
- Zoeken op één pagina met ```CTRL+F```
---
##### Voorbeeld hulp openen en sneltoetsen opzoeken
![width:1000px](img/hulp-openen-en-sneltoetsen-zoeken.gif)

---
### GNOME desktop manager ![width:100px](img/GNOME-logo.png)
- GNOME is de standaard **desktop-manager**

    - regelt het tekenen van de window decoraties

    - voorziet in icons, toolbars, wallpapers en desktop widgets

    - werkt met twee modi:

        1. Normale modus

        1. Activiteiten modus

---
### Normale modus
- Toestand die u van de computer bent gewend met programma's in vensters

### Activiteiten modus
- Programma's starten
- Documenten zoeken
- Programma's wisselen
- Overzicht geopende programma's
- Dash tonen


### Activiteiten modus
![width:950px](./img/activiteiten-modus.png)

---
### Activiteiten modus komt u in door
- op de activiteiten knop linksboven op de bovenbalk te klikken

![](img/activiteiten-knop.png)
- ```SUPER``` in te drukken

![width:300px](img/super-toets.jpeg)

---
### Activiteiten modus verlaat u door
- op de activiteiten knop linksboven op de bovenbalk te klikken

![](img/activiteiten-knop.png)
- ```SUPER``` of ```ESC``` in te drukken

![width:300px](img/super-toets.jpeg) ![width:300px](img/ESC-toets.jpeg)

---

### In activiteiten modus 
- kunt u typen in het zoekvak om een programma te openen
![width:880px](img/openen-door-typen.gif)

---
- kunt u typen in het zoekvak om een document te zoeken en openen
![width:1000px](img/document-openen-met-typen.gif)

---
- kunt u van programma of werkblad wisselen
![width:1000px](img/activiteiten-modus-wisselen.gif)

---
- ziet u de dash ![width:500px](img/dash.png), daarmee kunt u
    - met de muis één van de programma's hieruit openen
    - met ```CTRL``` ingedrukt klikken om een nieuw venster van een reeds geopend programma te verkrijgen
    - zien welke programma's er zijn geopend
    - op de 3x3 puntjes aan de rechterzijde klikken op applicatie modus in te gaan
    ![width:200px](img/3x3-puntjes-op-dash.png)
---
### Met de dash kunt u
- een programma openen door met de muis op het icon te klikken
![width:880px](img/dash-toepassing-openen.gif)

---
- een tweede venster van een programma openen door ```CTRL``` ingedrukt te houden terwijl u klikt
![width:950px](img/dash-tweede-venster-openen.gif)

---
- zien welke programma's geopend zijn door de punt onder het icon
![width:1000px](img/dash-toont-geopende-programma_s.png)

---
- applicatie modus binnen gaan door op de 3x3 puntjes aan de rechterzijde te klikken
![width:950px](img/dash-naar-applicatie-modus.gif)

---
### Applicatie modus
Is een onderdeel van activiteiten modus 
![width:850px](img/applicatie-modus.png)

---

### U gaat applicatie modus binnen door
- op de 3x3 puntjes aan de rechterzijde van de dash klikken als u in activiteiten modus bent

![width:300px](img/3x3-puntjes-op-dash.png)

- ```SUPER+A``` op het toetsenbord indrukken als u in normale modus bent


---
### Applicatie modus verlaat u door
- op de 3x3 puntjes aan de rechterzijde van de dash te klikken om in activiteiten modus te blijven
![width:200px](img/3x3-puntjes-op-dash.png)
- ```ESC``` in te drukken om in activiteiten modus te blijven
    - eventueel nogmaals ```ESC``` of ```SUPER``` te in drukken om in normale modus te komen
- ```SUPER+A``` om in activiteiten te blijven
- ```SUPER``` in te drukken om naar normale modus te komen

---
### In applicatie modus
- kunt u een programma openen door erop te klikken of
![width:880px](img/applicatie-modus-toepassing-openen.gif)

---
- een programma slepen naar een werkblad om het te openen
![width:1000px](img/slepen-in-applicatie-modus.gif)

---
- kunt u een programma toevoegen aan de dash
![width:1000px](img/dash-toepassing-toevoegen.gif)

---
- kunt u een programma uit de dash verwijderen door het naar de 3x3 puntjes rechts te slepen
![width:960px](img/dash-toepassing-verwijderen.gif)

--- 
### Bovenbalk
![width:1000px](img/bovenbalk.png)
bestaat uit
- de activiteiten knop om in en uit activiteiten te gaan (```SUPER```)
![](img/activiteiten-knop.png)
- de datum- en tijdsaanduiding om het kalender en notificatie venster te openen of sluiten (```SUPER+V```)
![](img/datum-tijdsaanduiding.png)
- het systeemmenu
![](img/systeem-menu-gesloten.png)

---
### Notificatie venster
![bg width:600px right](img/notificatie-venster.png)
- toont de kalender 
    - koppelen via instellingen -> online accounts
![width:400px](img/instellingen-online-accounts.png)

---
### Openen en sluiten notificatie venster
![bg height:100% right](img/notificatie-venster.png)
- op ![](img/datum-tijdsaanduiding.png) te klikken
- ```SUPER+V``` in te drukken

---
### Systeemmenu
![bg width:100% right](img/systeem-menu-geopend.png)
- met ![](img/schermafdruk-knop.png) kunt u schermafdrukken en screencasts maken
    - ```PrintScreen``` voor schermafdrukken
    - ```CTRL+ALT+SHIFT+R``` voor screencasts

---
### Systeemmenu vervolg
![bg width:100% right](img/systeem-menu-geopend.png)
- ![](img/instellingen-knop.png) brengt u naar de instellingen
- ![](img/vergrendelings-knop.png) vergrendelt de computer (```SUPER+L```)
- ![width:350px](img/volume-regelaar.png) regelt het volume

---
### Uitschakelen menu
![bg height:100% right](img/systeemmenu-afsluiten.png)
- ![](img/afsluit-menu-knop.png) opent het submenu om te kunnen
    - gaan naar pauzestand
    - herstarten
    - afsluiten (```ALT+CTRL+DEL```)
    - afmelden

---
### Ethernet internet
![bg height:100% right](img/systeemmenu-ethernet.png)
- ![](img/ethernet-in-uit.png) schakelt het bedrade internet aan of uit
- ![](img/ethernet-totaal.png) de pijl aan de rechterzijde van deze knop opent de bedrade netwerk instellingen
---
#### Voorbeeld netwerk uit en weer aan
![width:980px](img/netwerk-aan-uit.gif)

---
### Wifi instellingen
![bg height:100% right](img/systeemmenu-wifi.png)
- ![](img/wifi-in-uit.png) schakelt de wifi aan of uit
- ![](img/wifi-totaal.png) de pijl aan de rechterzijde van deze knop opent de draadloze netwerk instellingen
    - u kunt eventueel een ander draadloos netwerk selecteren

---
### Uitschakelen
Om de computer af te sluiten 
- drukt u op ```ALT+CTRL+DELETE``` 
- klikt u in het systeemmenu ![](img/systeem-menu-gesloten.png) op ![](img/afsluit-menu-knop.png) en dan op "Uitschakelen"
![bg right height:100%](img/systeemmenu-afsluiten.png)

---
#### Voorbeeld
![width:960px](img/uitschakelen.gif)

---
## Toepassingen starten en afsluiten
![width:100px](img/firefox-icon.png) ![width:100px](img/terminal-icon.png) ![width:100px](img/bestanden-icon.png) ![width:100px](img/kaarten-icon.png) ![width:100px](img/writer-icon.png) ![width:100px](img/software-icon.png) ![width:100px](img/patience-icon.png) ![width:100px](img/rekenmachine.png)

---
### Toepassingen starten
- Activiteiten modus
- Applicatie modus
- Sneltoetsen
### Toepassingsmenu
- Snelle toegang tot afsluiten en nieuw venster
---
### Toepassingen afsluiten of vensters sluiten
- Vensters sluiten
Indien u het laatste open venster van een toepassing sluit, sluit u ook de toepassing af.
- Toepassingen afsluiten
---

### Toepassing starten via zoekvak
- Druk ```SUPER``` en type het begin van de naam van de toepassing tot haar icon er staat en druk ```ENTER```

![width:750px](img/openen-door-typen.gif)

---
### Voorbeelden
- Druk ```SUPER``` in, type ```kaar``` en ```ENTER``` om kaarten  ![width:100px](img/kaarten-icon.png) te starten
- ```SUPER```, type ```ter``` en ```ENTER``` om een terminal ![width:100px](img/terminal-icon.png) te starten. Sluit de terminal door ```CTRL+D``` te geven, of ```ALT+F4```, of op het kruisje rechtersboven in het venster te klikken
- ```SUPER```, type ```wri``` en ```ENTER``` om writer ![width:100px](img/writer-icon.png)

---
### Indien de toepassing op de dash staat kun je ook
![](img/dash.png)
- Activiteiten modus ingaan en op het icon van de toepassing op de dash klikken

of
- ```SUPER+1``` gebruiken voor de meest linkse toepassing, ```SUPER+2``` voor de tweede toepassing van links, enzovoort.

---
### Voorbeelden
- klik op het bestanden icon ![width:80px](img/bestanden-icon.png) op de dash ![](img/dash.png)
    - Ga activiteiten in door
        - op ![](img/activiteiten-knop.png) te klikken of
        - ```SUPER``` in te drukken
    - Klik op ![width:80px](img/bestanden-icon.png) om de bestanden toepassing te openen
---
- ```SUPER+1``` om firefox ![width:100px](img/firefox-icon.png) te openen
- ```SUPER+3``` om writer ![width:100px](img/writer-icon.png) te openen
- ```SUPER+4``` om bestanden ![width:100px](img/bestanden-icon.png) te openen
- ```SUPER+5``` om software ![width:100px](img/software-icon.png) te openen
---
### Focus teruggeven met ```SUPER+1```, ```SUPER+2``` ...
Naast het starten van het eerste programma van links met ```SUPER+1``` kunt u ook de focus teruggeven aan dat programma (standaard firefox ![width:100px](img/firefox-icon.png))

#### Handig
- plaats al uw veelgebruikte toepassingen op de dash

---
#### Voorbeeld focus terug naar firefox met ```SUPER+1```
![width:960px](img/focus-terug-firefox-super1.gif)

---

### De dash aanpassen
![width:900px](img/applicatie-modus.png)

---
- sleep een icon naar de dash
![width:1000px](img/dash-toepassing-toevoegen.gif)

---
- sleep een icon naar de 3x3 puntjes rechts
![width:960px](img/dash-toepassing-verwijderen.gif)

---
### Toepassing openen via applicatie modus
![width:900px](img/applicatie-modus.png)

---
#### Applicatie modus gaat u binnen door
- ```SUPER+A``` in te drukken
- Op ![](img/activiteiten-knop.png) te klikken
    - dan op ![](img/3x3-puntjes-op-dash.png) te klikken
#### Toepassing starten door op het icon te klikken
- bijvoorbeeld: ![width:100px](img/kaarten-icon.png) voor de kaarten toepassing
---
#### Voorbeeld: tetris openen
![width:880px](img/applicatie-modus-toepassing-openen.gif)

---
#### Toepassing naar werkblad slepen
U kunt een icon naar een werkblad slepen om de toepassing op dat werkblad te openen
![bg right width:100%](img/werkblad-in-applicatie-modus.png)

---
Kaarten op eerste werkblad en firefox op het tweede werkblad
![width:1000px](img/slepen-in-applicatie-modus.gif)

---
### Toepassing openen via sneltoets

- standaard is alleen hulp aan de toets ```SUPER+F1``` gekoppeld
- ```SUPER+1```, ```SUPER+2```, ```SUPER+3``` aan de eerste, tweede en derde toepassing op de dash
![](img/dash.png)

---
#### Toepassing aan een sneltoets koppelen
- Druk ```SUPER``` in
- type ```snel```
![](img/instellingen-sneltoetsen-openen.png)
- druk ```ENTER``` in

---
![height:500px](img/instellingen-toetsenbord.png)

klik hier op "Sneltoetsen bekijken of aanpassen", dan komt u in

---
- open hier "Starters" om aan "Persoonlijke map" de bekende sneltoets ```SUPER+E``` toe te kennen
- scroll hier neer beneden om bij "Aangepaste starters" te komen om een willekeurige toepassing een sneltoets toe te kennen 
![bg right width:100%](img/sneltoetsen.png)

---
Voorbeeld: persoonlijke map aan sneltoets ```SUPER+E``` 

![width:1000px](img/sneltoets-persoonlijke-map.gif)

---
Voorbeeld: terminal aan sneltoets ```CTRL+ALT+T```

![width:1000px](img/sneltoets-terminal.gif)

---
### Toepassingsmenu
![width:900px](img/toepassingsmenu-geopend-twee-writers.png)

---
- Menu aan de linkerzijde op bovenbalk
![width:1000px](img/bovenbalk-toepassingsmenu-firefox.png)
- Hoort bij het venster van toepassing dat de focus heeft
![width:100%](img/toepassingsmenu-firefox-geopend.png)

---
#### Wat kunt u met het toepassingsmenu ```SUPER+F10```
- Wisselen tussen vensters
- Extra venster openen
- Details in de Software toepassing zien
- Toepassing afsluiten
 <!-- of venster sluiten -->

---
##### Voorbeeld wisselen tussen twee tekstverwerkers
![width:1000px](img/toepassingsmenu-wisselen-tussen-twee-writers.gif)

---
##### Voorbeeld extra venster
![width:1000px](img/toepassingsmenu-firefox-extra-venster.gif)

---
##### Voorbeeld details van schaak toepassing tonen
![width:1000px](img/toepassingsmenu-details-schaken.gif)

---
##### Voorbeeld Firefox afsluiten
![width:1000px](img/toepassingsmenu-firefox-afsluiten.gif)

---
### Extra venster openen van een toepassing
__N.B.__ Niet iedere toepassing staat dit toe, bijvoorbeeld Kaarten niet.
- met controltoets ingedrukt op het icon op de dash klikken
- via het toepassingsmenu
- via de toepassing zelf (bestandsmenu)
- in applicatie modus het icon naar een werkblad slepen

---
##### Voorbeeld extra venster met ```CTRL+Click``` op dash
![width:930px](img/dash-tweede-venster-openen.gif)

---
##### Voorbeeld extra venster met ```CTRL+Click``` op dash
![width:960px](img/teksteditor-tweede-venster-ctrl-dash.gif)

---
##### Voorbeeld extra venster via toepassingsmenu
![width:1000px](img/toepassingsmenu-firefox-extra-venster.gif)

---
##### Voorbeeld extra venster via Bestandsmenu van de toepassing
![width:1000px](img/extra-venster-calc-menu.gif)

---
##### Voorbeeld extra browser door naar werkblad slepen
![width:1000px](img/extra-venster-via-slepen-naar-werkblad.gif)

---
## Toepassingen afsluiten of vensters sluiten
#### Vensters sluiten
<!-- Indien u het laatste open venster van een toepassing sluit, sluit u ook de toepassing af. -->
- ```ALT+F4```

- Druk op het kruisje rechtsboven in de titelbalk van een venster ![width:50px](img/kruisje-in-titelbalk-van-toepassing.png)

- Via bestandmenu van de toepassing

#### Toepassingen afsluiten

- Via toepassingsmenu

- Via bestandsmenu van de toepassing (vaak ```CTRL+Q```)

---
##### Voorbeeld sluit venster via bestandsmenu
![width:1000px](img/writer-tweede-venster-sluiten-bestandsmenu.gif)

---
##### Voorbeeld Firefox afsluiten via toepassingsmenu
![width:1000px](img/toepassingsmenu-firefox-afsluiten.gif)

---
##### Voorbeeld sluit toepassing af via bestandsmenu
![width:1000px](img/writer-afsluiten-bestandsmenu.gif)

---
## Veelgebruikte toepassingen

- Internet browser: Firefox ![height:100px](img/firefox-icon.png)

- Bestanden ![height:100px](img/bestanden-icon.png)

- LibreOffice Writer ![height:100px](img/writer-icon.png)
---
### Internet browser: Firefox ![height:100px](img/firefox-icon.png)

- Belangrijke sneltoetsen

- Link openen op nieuw tabblad

- Essentiële extensies

- Hulp over Firefox
---
#### Sneltoetsen voor Firefox

- Nieuw tabblad openen ```CTRL+T``` 

![](img/firefox-tabblad.png)

- Tabblad sluiten ```CTRL+W```

- Focus naar adresbalk ```CTRL+L``` (locatie)

![](img/firefox-locatiebalk.png)

---
#### Sneltoetsen voor Firefox vervolg

- Zoeken met een zoekmachine naar keuze ```CTRL+K```
    
    - ```CTRL+PIJLTJE_OMLAAG```, ```CTRL+PIJLTJE_OMHOOG``` om zoekmachine te selecteren

    - ```ALT+PIJLTJE_OMLAAG```, ```ALT+PIJLTJE_OMHOOG``` om zoekmachine te selecteren als u al iets ingetyped hebt

- Nieuw venster ```CTRL+N```

- Afsluiten ```CTRL+Q```

---
##### Voorbeeld zoeken op Wikipedia
![width:1000px](img/firefox-zoeken-op-wikipedia.gif)

---
#### Link openen op nieuw tabblad

- Op een link klikken met ```CTRL+SHIFT``` ingedrukt opent de link op een nieuw tabblad en navigeert naar dat tabblad toe

- Op een link klikken met ```CTRL``` ingedrukt opent de link op een nieuw tabblad
---
##### Voorbeeld link op een nieuw tabblad openen
![width:1000px](img/firefox-openen-op-nieuw-tabblad.gif)
---

#### Essentiële extensies installeren

- [Adblocker for Youtube](https://addons.mozilla.org/nl/firefox/addon/adblock-for-youtube/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search) houdt alle advertentie filmpjes tegen op Youtube

- [Adblocker Ultimate](https://addons.mozilla.org/nl/firefox/addon/adblocker-ultimate/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search) houdt advertenties tegen

- [I don't care about cookies](https://addons.mozilla.org/nl/firefox/addon/i-dont-care-about-cookies/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search)
gaat automatisch akkoord met alle cookies

---
##### Voorbeeld extensie installeren door te zoeken
![width:1000px](img/firefox-adblocker-for-youtube-installeren.gif)

---
##### Hulp openen in Firefox
![width:1000px](img/firefox-hulp-openen.gif)