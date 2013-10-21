# PiBeacon-Ansible

I needed to set up an iBeacon for a project I'm working on so I followed the [Radius Networks guide](http://developer.radiusnetworks.com/2013/10/09/how-to-make-an-ibeacon-out-of-a-raspberry-pi.html) to setting up a Raspberry Pi with a Bluetooth LE USB dongle. I've wrapped the process in an Ansible playbook because I may need to create a few more beacons and I didn't want to have to repeat this process on each one.

To run the playbook you'll need to follow a few steps

* Make sure you are running SSHD on the Raspberry Pi - this is included in the graphical installer
* Add your SSH key to the ``pi`` user's ~/.ssh/authorized_keys2 file (this file didn't exist when I started, just append your key to the file if it does).

~~~
$ scp ~/.ssh/id_rsa.pub pi@<raspberry pi>:/home/pi/.ssh/authorized_keys2
~~~

* Install the python-apt package

~~~
$ sudo apt-get install python-apt
~~~

* Then run the playbook against the selected inventory

~~~
$ ansible-playbook -i inventory/dev 
~~~

It takes quite a long time for the process to complete but once it does you should be able to stop and start the beacon using;

~~~
# service ibeacon stop/start
~~~