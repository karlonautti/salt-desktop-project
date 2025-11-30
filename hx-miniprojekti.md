# Miniprojekti

Tekijät: Karri Salonen ja Tuukka Mero

## Tomisto-ohjelma bundle






## Office Salt-state bundle

Bundlen ideana on automatisoida työpöytäympäristön ohjelmien asennus orjakoneelle

Ensin yhdistin aikaisemmin luotuun gitrepoon seuraavalla tavalla

![Repoliittyminen](https://github.com/TuukkaMero/linux-course/blob/main/gitrepo%20liittyminen.png)

Seuraavaksi yhdistin jo aikaisemmin luotuun master koneeseen ja hyväksyin sieltä orjakoneen avaimen:

![avain](https://github.com/TuukkaMero/linux-course/blob/main/minion%20avain.png)

Loin salt-state office bundle tiedoston

Tiedoston sisältö:

![bundle](https://github.com/TuukkaMero/linux-course/blob/main/office%20bundle.png)

Viimeiseksi testasin ajaa salt-staten orjakoneella "desktop001":

![testi](https://github.com/TuukkaMero/linux-course/blob/main/office%20testi.png)

Testi näytti toimivan ja toisen ajon jälkeen muutoksia ei tapahtunut joten idempotenssi on saavutettu

Viimeiseksi testasin vielä orjakoneelta että kaikki halutut sovellukset oli asennettu:

![sovellukset](https://github.com/TuukkaMero/linux-course/blob/main/minion%20sovellukset.png)




