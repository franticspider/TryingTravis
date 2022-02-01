# TryingTravis

A personal summary of my experience in setting up a free and open-source C++ project with continuous integration. The goal is to set up a low-maintenance framework so that I can refactor a large and unwieldy code base in a safe way. 

## Summary

### Setting up

- write `.travis.yml`, which sets up the environment for `travis-ci.org`, compiles the code and runs the tests
- Set up a unit test environment. Here we are using `catch2`.
- write a script which runs the tests - in this repo the script is `RunAllTests.sh`. 


### Development process

It's important to realise that this approach is dependant upon having an organised git repo, where particular branches play particular roles. The unit testing framework is there to give you confidence to merge between these branches and in this way you always know where you are even if you do no work on the project for 3 months or more. The branches I use are: 

- **master**: the crown jewels. Only official versions appear hear
- **dev**: the main development branch which collects updates
- **dev-xxx**: branches from dev for specific task xxx. There can be many xxxs

## Notes while Learning Travis

Following the tutorial at [https://arne-mertz.de/2017/04/continuous-integration-travis-ci/]

NB: I already had gitub and travis accounts, but I hadn't successfully linked them together

To add a repo to Travis, go to [https://travis-ci.org/] and look in the left panel. Click on the `+` sign next to the My Repositories tab and turn the project you want to add to 'on' via the button down the right hand side

Next you'll need to clone the project locally so you can add files. *This isn't mentioned in the tutorial*. 

Now you can create the `main.cpp` and `.travis.yml` files as instructed. Then you do the git add, commit and push actions to push these files to the github repo. Finally you then check the build on travis. 

OK, I've followed the tutorial this far, but can't yet see two things:

1. How Travis detects errors like segfaults
2. How Travis then permits branches to merge. *it doesn't - that's up to the repo administrator (no privelidges needed)*. Maybe step 2 is always manual - I need to understand more clearly about branches and merges on my own project (although I got the hang of doing it in industry, that was part of a wider devops program). 

## Unit test frameworks

First thing I'm trying is catch2: [https://github.com/catchorg/Catch2] as it is supposed to be the simplest. 

To integrate with travis-ci, I folowed [https://github.com/justiceadamsUNI/CPP-Unit-Testing-Suite-With-CI]. The idea is to have a script called `RunAllTests.sh`, which builds the tests in the tests directory, and then runs them. In this way, the contents of `.travis.yml` can be relatively simple

## Branch-Merge cycle

If we do everything on master, then we can break the 'release' version - because that version *is* master. 

The workflow should look like this: 

https://guides.github.com/introduction/flow/



## Troubleshooting

### Bug? I've noticed is that if the `.travis.yml` file is the only thing that's updated, travis-ci website doesn't pick up the change

This is not the case! to fix: 

- Click on "more options"->requests on the r.h.s. of the web page - this will show the history of your builds. It has comments in the right hand column, and if there's a problem with the yml file, it flags 'could not parse'
- you can check the yaml syntax at http://www.yamllint.com/ to try and find the bug
- in this case the problem was that the line `-sudo apt-get install -qq cppcheck` should have had a space between the `-` and the command to read `- sudo apt-get install -qq cppcheck`. 
