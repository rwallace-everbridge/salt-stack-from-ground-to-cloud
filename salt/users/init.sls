users_calcbrain_user:
  user.present:
    - name: calcbrain
    - home: /home/calcbrain
    - shell: /bin/bash
    - groups:
      - sudo
      - adm

users_newguy:
  user.present:
    - fullname: 'Newguy Jones'
    - shell: /bin/bash
    - home: /home/Newguy
    - groups:
      - wheel
    - remove_groups: True
