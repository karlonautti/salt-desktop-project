# Salt Desktop Project — Linux-työaseman automaattinen provisiointi
### Projektin tarkoitus:
Tämä projekti automatisoi Linux-työaseman asennuksen käyttämällä SaltStackia ja Vagrantia.
Salt asentaa työasemalle keskeiset toimisto- ja viestintäohjelmistot (LibreOffice, Firefox, Teams, Snapd) idempotentilla tavalla.

##  Ominaisuudet

- Luo automaattisesti Salt Masterin ja Minionin (Vagrant)
- Asentaa seuraavat ohjelmistot:
  - LibreOffice
  - Firefox (Snap)
  - Teams-for-Linux (Snap)
  - snapd
- Idempotentit Salt-tilat
- Helppo laajentaa (Zoom, Chrome, Slack jne.)
- Soveltuu yritysverkkojen työasema-automaatioksi
- Toimii Debian 12 -järjestelmässä

