# CRUD operations
## Rails naming conventions
## Articles resource

- Model name: article
- Article model file name: article.rb
- Article model class name: Article
- Table name: articles


## Generate tables
Run the next command to generate tables with rails generator:\
`rails generate migration create_articles`

The next command run the migration:\
`rails db:migrate`

To undo the last migration:\
`rails db:rollback`


## Models and rails console
Type `rails console` or `rails c` in order to start the terminal.

You can exit any time by typing in `exit` followed by a enter/return.

## More CRUD operations
From rails console you can save active records in variables, but it won't be reflected in the DB to do that you need to save it as it showns in the example:
```ruby
article = Article.find(2)
article.description = "edited - description of second article"
article.save
```
You can update an article by finding it first and then using setters for the attributes that the model provides like below:
```ruby
article = Article.find(1)
article.title # to display (get) the title
article.description # to display (get) the description
```
You can delete an article by using the destroy method. A sample sequence could be like below:
```ruby
article = Article.find(id of article you want to delete)
article.destroy
```

## Validations
Example of validations
```ruby
class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 6, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end
```
In order to see the errors you can type: `article.errors.full_messages`