AIFLoginSystem
==============

Snapshot of a Corona SDK client connecting to Node.js server to pull user credentials from MongoDB

Your own private server with node.js running ([here's the cheap one I'm using](https://liquid-solutions.biz/). The server address goes into the Corona SDK client's main.lua line 9.
[Node-login from Braitsch](http://node-login.braitsch.io/). Replace the account-manager.js module with the one here, but there isn't much difference except for a function I modified called getCredentials()
[Noobhub](https://github.com/Overtorment/NoobHub), but replace the main node.js file with the one here.
    
Finally, you will need to run the Noobhub server
    `> node node`
And also the node-login system
    `> cd node-login (wherever you cloned or placed the folder)`
    `> node node-login`
    
Now, when you run the Corona SDK client, it will attempt to pull the credentials of the username in main.lua's line 31 (username). Register an account yourself to test.
    
If successful, you should see the following output on the node.js server:
`NoobHub on 0.0.0.0:1337
connected to database :: node-login
New client: 96.49.26.95:57195
Client subscribes for channel: hello-world
Client posts json:  {"action":"get_credentials","username":"kaitagsd"}`
    
And the following in the client:
`2014-01-26 16:02:03.533 Corona Simulator[16978:507] Get credentials success
2014-01-26 16:02:03.533 Corona Simulator[16978:507] username        kaitagsd
2014-01-26 16:02:03.533 Corona Simulator[16978:507] country Canada
2014-01-26 16:02:03.534 Corona Simulator[16978:507] email   garytse89@gmail.com`