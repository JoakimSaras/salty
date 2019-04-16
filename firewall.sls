ufw:
  pkg.installed


/etc/ufw/user.rules:
  file:
    - managed
    - source: salt://salty/user.rules
    - require:
      - pkg: ufw


ufw-enable:
  cmd.run:
    - name: 'ufw --force enable'
    - require:
      - pkg: ufw
