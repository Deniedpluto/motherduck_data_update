# Simple Insert to MotherDuck
This is a simple example of inserting data into MotherDuck with a github Action.

The only configuration step is that you need to create a secret called MOTHERDUCK_TOKEN in your repository settings with the token of your MotherDuck account.

From there, this action will run at 10am UTC every day. It will insert a single data point into MotherDuck with the value 'github action' and the timestamp it ran.

There is also a "manual_build" action for testing purposes. Testing process is described below.

# How to use this repo

1. Fork this repo/clone it
2. Create a secret in your repo called MOTHERDUCK_TOKEN with the token of your MotherDuck account
3. Navigate to "Actions" in your repo
4. Click "manual_build" on the left hand side
5. On the right hand side, click "Run workflow"