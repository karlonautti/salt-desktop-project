# LibreOffice
libreoffice:
  pkg.installed: []

# Firefox
firefox:
  pkg.installed: []

# Teams
teams-deb-download:
  file.managed:
    - name: /tmp/teams.deb
    - source: https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.5.00.23861_amd64.deb
    - skip_verify: True

teams-deb-install:
  cmd.run:
    - name: dpkg -i /tmp/teams.deb || apt-get -f install -y
    - require:
      - file: teams-deb-download
