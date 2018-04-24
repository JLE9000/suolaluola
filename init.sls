install_lamp:
  pkg.installed:
    - pkgs:
      - apache2
      - libapache2-mod-php
      - php

/var/www/html/index.php:
  file:
    - managed
    - source: salt://index.php
    - template: jinja
    - context:
      php: {{ pillar.get('php', "Moikka") }}
    - require:
      - pkg: install_lamp

/var/www/html/index.html:
  file:
    - absent

