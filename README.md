# TryingTravis
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

