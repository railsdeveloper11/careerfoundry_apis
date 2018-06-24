# Rails Application to show list of courses available on CareerFoundry

It is an API bases application which fetches list of Courses provided by CareerFoundry and show it on the home page of the application.
It also allows to show the details like Start Date, price etc of any particular course 
### Prerequisites

This application needs the following versions of Ruby and Ruby on Rails

`Ruby >= 2.3.4`
`Rails >= 5.1.6`


### Installing

To setup this application, follow the below steps:

To install Gems run
`bundle install`

You are good to test your app, execute
`rails server`

Open home page of Application by opening the below mentioned URL in browser

`localhost:3000`


### Assumption

The application uses Geocoder Gem to fetch the location of the User, it works fine in production environment. In case, if you want 
to test it on local/dev environment, you have to download the `ngrok` tool. After downloading the `ngrok`, you can go to the
directory where you downloaded `ngrok` and run the below command:

`./ngrok http 3000`

This will generate a random URL which maps rails application to work on ngrok generated URL. Now, You can test the application on the
generated URL.

### Areas of Improvememt

If I can devote more time on this application, I will add the test cases in the very first place. I would be more than happy to improve
the application UI and UX as well.