
* Install the python-apt package

~~~
$ sudo apt-get install python-apt
~~~

* Then run the playbook against the selected inventory
~~~
$ ansible-playbook -i inventory/dev 
~~~