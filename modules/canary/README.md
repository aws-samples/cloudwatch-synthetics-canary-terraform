# Canary 
This module creates:  
* the canary itself
* and a cloudwatch alarm triggered when the canary fails

It contains the node.js code executing the test.  
This would be the code you would modify if you have to deal with APIs that are authenticated, for example.  