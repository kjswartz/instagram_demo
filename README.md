# Instagram Demo

## Potential Models
* User
* Post
* Like
* Comment
* Follow

User has_many posts
User has_many followers
User has_many following
User has_many likes
User has_many comments

## User attributes
* avatar:string
* username:string
* name:string
* website:string
* bio:string


Post belongs_to User
Post has_many likes
Post has_many comments

## Post attributes
* photo:string
* description:text
* user:references


Like belongs_to Post
Like belongs_to User

Comment belongs_to Post
Comment belongs_to User

Follow belongs_to following user
Follow belongs_to user followed
