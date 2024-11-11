# Simple Insert to MotherDuck
This is a simple example of inserting data into MotherDuck with a github Action.

The only configuration step is that you need to create a secret called MOTHERDUCK_TOKEN in your repository settings with the token of your MotherDuck account.

From there, this action will run at 10am UTC every day. It will insert a single data point into MotherDuck with the value 'github action' and the timestamp it ran.
