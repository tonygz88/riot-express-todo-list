language: node_js
node_js:
  - "8"
services: mongodb
cache:
  directories:
    - "node_modules"
sudo: false
install:
  - npm install
script:
  - npm test
deploy:
  - provider: script
    skip_cleanup: true
    script: chmod +x ./deploy.sh && ./deploy.sh
    on:
      branch: master
