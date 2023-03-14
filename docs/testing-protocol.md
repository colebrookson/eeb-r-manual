# Steps to Start Apache and get it going

* run `sudo /opt/lampp/lampp start` that will start the apache server
* go to [https:localhost/](https://localhost/test/html/index.html)
* the files for the testing website live in https::localhost/test/html
* this is where we need to look for the files to move back and forth from the tracked repo 
* any changes made there need to be fed back to the eeb repo and vice versa 

# Best way to work on and test changes

1. Make a series of changes and test via some `rhtml` files
2. When satisfied, to test all is working properly, move the edited version of the repository over to the testing location 

```
sudo cp -r ~/Github/eeb-r-manual/content/* /opt/lampp/htdocs/test/
```

This will move the files from the first location to the second
