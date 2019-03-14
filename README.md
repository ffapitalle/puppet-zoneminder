
# zoneminder

Use this module to install and configure [zoneminder]( http://zoneminder.com).

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with zoneminder](#setup)
    * [Setup requirements](#setup-requirements)
3. [Usage](#usage)
4. [Limitations](#limitations)


## Description

You can install and manage zoneminder service and configure the database backend.

## Setup

### Requirements
You should include a repository with the latest zoneminder version http://zoneminder.com/downloads/

## Usage

You only need to include the module and zoneminder service will be deployed.

    include zonedminer

You can change the database connection settings:

    zoneminder: {
      dbuser          => 'dbuser',
      dbpass          => 'dbpass',
      dbname          => 'zm',
    }

## Limitations

* This module only is tested in ubuntu 18
* It only creates database user on installation. If you change this values after the first run, you must create the user in the database by yourself.
