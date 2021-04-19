# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database
      -Database includes tables for users, games, and a join table usergames.
- [x] Include more than one model class (e.g. User, Post, Category)
      -Three model classes corresponding to the tables above.
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
      -User has many usergames and has many games through usergames
      -Game has many usergames and has many users through usergames
      -Usergames belongs to user and game.
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
      -See above.
- [x] Include user accounts with unique login attribute (username or email)
      -Usernames are unique and every signup has their username checked in the database to ensure no duplicate accounts.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
      -This one is a little weird because users can have many games and games can have many users. Users can create, read, update, and destroy their own profiles. 
       They can also create new games and read games that are already created in the database. However, since many users can have a game in their library, it made no 
       sense to have a delete function for games. The closest thing that comes to that is users removing those games from their own library. 
- [x] Ensure that users can't modify content created by other users
      -Users are unable to see edit/delete links for profiles that are not there's. Trying to bypass that by typing in the edit/delete link with another user's profile id
      will give them warning stating that they cannot alter someone else's profile. The app checks that the current logged-in user matches the profile in question before
      allowing any editing or deleting.
- [x] Include user input validations
      -When creating new games to add to their own library and thus the database, leaving any field empty will not allow them to create a new game. Furthermore, 
      attempting to add a game that already exists will not create a duplicate game in the database.
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
