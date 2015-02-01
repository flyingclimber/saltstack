inventory:
   user.present:
      - home: /home/inventory
      - shell: /usr/sbin/nologin
      - createhome: True

ruby:
   pkg:
     - installed
 
ruby-dev:
   pkg:
     - installed
 
zlib1g-dev:
  pkg:
     - installed
 
libxml2:
   pkg:
     - installed
 
libxslt1-dev:
   pkg:
     - installed
 
postfix:
   pkg:
     - installed
 
mailutils:
   pkg:
     - installed
 
nokogiri:
   gem:
     - installed
 
/srv/salt/inventory/windygaming.rb:
   file:
      - managed
      - source: salt://inventory/windygaming.rb
      - user: inventory
      - group: inventory
      - file_mode: 744
      - require:
        - pkg: ruby
   cron.present:
      - user: inventory
      - minute: '*/20'
