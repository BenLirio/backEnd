# Invoice application
This web application helps business owners keep track of their invoices online. It saves the data and makes sure they can edit and delete the invoices that they have already. Users will use this application to Create Read Update and Delete their own private invoices under their own account.
## Front End Link
https://github.com/BenLirio/latari-invoice-front

## ERD
[img](https://i.imgur.com/Xl0bm5C.png)
## Live project links
FIXME change the project links

## Technologies used
Ruby on rails
Ruby
Postgress sql
Gem files
active_model_serializers
bcrypt
pg
puma
rack-cors
rails
byebug
dotenv-rails
pry
pry-byebug
rspec-rails
rubocop
listen
pry-rails
spring
spring-commands-rspec
rails_12factor


### Story of the project - planning
I started off this project with a large scope in mind. 
I really wanted to just create something that was very complex.
I knew based on talking with mike that I should scale the project down. 
I decided to do this, but I also got side tracked with a couple of things. First off I got side tracked with unit testing, this took way too much time and was not worth it in the end because I did not end up using it at all. Second thing I got sidetracked with was a feature that automatically requests the table information as soon as I log in. I wanted it to set up the mvc client side so it will be easy to use. After getting side tracked with this, I finished a very small project the last day. This project almost passed all of the requirements but did not have everything. Over break I decided to build off of the small project and slightly add to it. I really wanted to get something finished and pass the requirements. 



## Unsolved problems which will be fixed in future iterations
Haven't gotten around to completely privatizing the queryies. Right now a user is able to find an invoice from another person by manually ajax requesting the server. The current program does not allow but if someone knew the right code to write they would be able to request an invoice.