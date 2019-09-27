## README

### Bret's Chat Application

> "You may not realize it when it happens, but a kick in the teeth may be the best thing in the world for you." - Walt Disney

Hello and welcome to Bret's Basic Chat App. A super low/no thrills app for chatting with all your Disney friends - for now Walt and Mickey Mouse. If you refresh, you automatically get logged in as a different user.

This chat utilizes Rails [Action Cable](https://guides.rubyonrails.org/action_cable_overview.html)

View here:

1. Single Screen: https://recordit.co/Io2WJeNOGr
2. Dual Screen: https://recordit.co/lxVz7ZkbxS

### Getting Up and Running

1. Clone Repo and navigate to root file
2. Install the gems - `bundle install`
3. Install the front-end packages - `yarn install`
4. Set up rails `rake db:create db:migrate db:seed; rails s`
5. In new tab, navigate to root and start webpack `./bin/webpack-dev-server`
5. When both rails AND webpack are running: Navigate to http://localhost:3000/
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

#### Database Layout

[Click Here to See DB Structure](https://random-fun.s3.amazonaws.com/Screen+Shot+2019-09-26+at+4.42.24+PM.png)

#### Troubleshooting

Clone and make a pr :)

or email me at: doucette.bret@gmail.com
