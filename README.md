# Overview

hubot and scripte repo for use in https://jsla.slack.com


# Usage

## Running and debugging locally

1. `npm install`
2. Configure tokens locally: https://github.com/slackhq/hubot-slack#testing-your-bot-locally
3. Make sure command is `./node_modules/hubot/bin/hubot` 

## Run your own script
Create your own or add some scripts to the `/scripts` directory. Some example [scripts here](https://github.com/github/hubot-scripts/tree/master/src/scripts)


# Contribute
Want to add scripts for the js.la slack room? Fork this repo and do one of the following:


### Adding to the /scripts directory
Create/edit the ones in the `/scripts` directory and create a Pull Request.


### Adding to the external-scripts.json file
Locate the appropriate script in the [hubot-scripts organization](https://github.com/hubot-scripts) or on [npm tagged as *hubot-scripts*](https://www.npmjs.org/browse/keyword/hubot-scripts), and follow the script's documentation. 

1. Add a line to external-scripts.json
2. Add a line to package.json
3. Add environment variables, depending on the script
4. Create a Pull Request
