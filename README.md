# TryingTravis

## Summary

### Setting up




### Development process



## Learning Travis

Learning how to set up Travis for a C++ github project

Following the tutorial at https://arne-mertz.de/2017/04/continuous-integration-travis-ci/

NB: I already had gitub and travis accounts, but I hadn't successfully linked them together

To add a repo to Travis, go to https://travis-ci.org/ and look in the left panel. Click on the `+` sign next to the My Repositories tab and turn the project you want to add to 'on' via the button down the right hand side

Next you'll need to clone the project locally so you can add files easily. *This isn't mentioned in the tutorial*

Now you can create the `main.cpp` and `.travis.yml` files as instructed. Then you do the git add, commit and push actions to push these files to the github repo. Finally you then check the build on travis. 

OK, I've followed the tutorial this far, but can't yet see two things:

1. How Travis detects errors like segfaults
2. How Travis then permits branches to merge. 

Maybe step 2 is always manual - I need to understand more clearly about branches and merges on my own project (although I got the hang of doing it in industry, that was part of a wider devops program). 

## Troubleshooting

### Bug? I've noticed is that if the `.travis.yml` file is the only thing that's updated, travis-ci website doesn't pick up the change

This is not the case! to fix: 

- Click on "more options"->requests on the r.h.s. of the web page - this will show the history of your builds. It has comments in the right hand column, and if there's a problem with the yml file, it flags 'could not parse'
- you can check the yaml syntax at http://www.yamllint.com/ to try and find the bug
- in this case the problem was that the line `-sudo apt-get install -qq cppcheck` should have had a space between the `-` and the command to read `- sudo apt-get install -qq cppcheck`. 
