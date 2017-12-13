postgresql:
  cmd.run:
    - name: |
        sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
        sudo apt-get install wget ca-certificates
        wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
        sudo apt-get update
        sudo apt-get upgrade
        sudo apt-get install postgresql-9.6
    - cwd: /tmp
    - shell: /bin/bash
    - timeout: 300
    - unless: test -e /etc/apt/sources.list.d/pgdg.list
