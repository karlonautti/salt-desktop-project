# /srv/salt/office/init.sls

apt-update:
  cmd.run:
    - name: sudo apt-get update

# LibreOffice
libreoffice:
  pkg.installed: []

snapd:
  pkg.installed: []

# Firefox
firefox:
  cmd.run:
    - name: snap install firefox

# Teams for linux
teams-for-linux:
  cmd.run:
    - name: snap install teams-for-linux
    - unless: snap list teams-for-linux
