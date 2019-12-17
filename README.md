## README

### Bret's Chirp Application

> "You may not realize it when it happens, but a kick in the teeth may be the best thing in the world for you." - Walt Disney

Hello and welcome to Bret's Chirp App.

### Getting Up and Running

1. Clone Repo and navigate to root file
2. Install the gems - `bundle install`
3. Install the front-end packages - `yarn install`
4. Set up rails `rake db:create db:migrate db:seed; rails s`
5. In new tab, navigate to root and start webpack `./bin/webpack-dev-server`
5. When both rails AND webpack are running: Navigate to http://localhost:3000/index
6. Have a magical experience!

* Note: You may have to install the latest versions of Ruby/Rails and [PostgreSQL 11](https://postgresapp.com/)
* Note: If you cloned this repo before you might have to kill the rails/webpacker server and drop db (`rake db:drop`)

#### Other Useful Information

#### Versions

* Rails v: 5.2.3
* Ruby v: 2.6.3
* React v: 16.9.0
* PostgreSQL 11

#### Backend Testing

This app uses RSpec and has no front-end testings (yolo)

`rspec spec/`

#### Troubleshooting

Clone and make a pr :)

or email me at: doucette.bret@gmail.com
