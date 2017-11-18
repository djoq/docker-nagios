## Nagios4 w/ nrdp server version 1.4.0

Setup for monitoring windows machine via a remote Linux host

Built and tested with Ubuntu 16.0.4

### How to run

    docker-compose up --build

### Overview

The setup outlined from the official [nagios docs](https://assets.nagios.com/downloads/nagioscore/docs/nagioscore/4/en/monitoring-windows.html)

This will build these instructions as well as the nrdp server.

### Personalize your config

Alter the `.env` file with your networking information.

Configuration overrides are defined in `./config`

Edit these files to add checks and commands for the hosts you monitor.

### Agents

This project is meant to work alongside at least one agent (running windows). In this case, ncpa was tested.

Make sure this is running before trying to connect, and update the .env file with your agent's IP or hostname.

If you haven't an agent installed, refer here [agent](https://www.nagios.org/ncpa/getting-started.php#win-silent-install).

### NAGIOS GUI
Login to the GUI via your favorite [browser](http://localhost:8081/) with creds nagiosadmin and passwd => nagios

### NRDP
Test the NRDP configuration at [localhost:8081/nrdp](http://localhost:8081/nrdp)

Default token is `mytoken`

### Plugins
This docker image is built upon [jason rivers](https://hub.docker.com/r/jasonrivers/nagios/). 

Refer to this for plugin management.

### CLI
execute `./cli` for help.

Command       | Arguments     | Options (Required) 
--- | --- | ---                    
query | agent  | IP (no)            
""  | server | IP (no)            
debug | inspect       | -                  
"" | login         | -                  


## Roadmap
Ensure hosts show up in gui, connections are established via CLI as of now (11-18-17).
