To start with this, first install Virtual Box (not taking care of it, since on Linux systems this operation fails and need to raise the command

sudo apt-get install -f

to force dependencies install.


Just run

./install-start-minikube.sh


This will download and run (only if not installed) minikube and kubectl

To schedule test jobs/services:

./schedule-jobs.sh


This will schedule one simple pod and one service and expose it to the minikube host

A browser window will pop up after that connecting to the Service (an IP will be displayed)




