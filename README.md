#### ppintrails5leawebdev
#####1
######setting up
```
gem install rails --no-rdoc --no-ri --pre
rails new chatroom -d postgresql -T
cd chatroom
```
generate 
```
rails g model user name:string email:string password_digest:string
rails g model room name:string
rails g model message user:references room:references content
bundle exec rails db:migrate  #still use rake db:migrate
rails s
```
