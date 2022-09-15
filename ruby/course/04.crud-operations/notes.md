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


## Show features
The steps are to:
1) Have a route for it

2) Have the corresponding controller/action that the route directs the request to

3) Have a corresponding view to display to the user who makes the request


### Example of route
The following code will enable only the show view
```ruby
Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # root 'application#hello'
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles, only: [:show]
end
```

### Example of view
Presentation tags: `<%= ruby_code %>`\
Evaluate expression tags: `<% ruby_code %>`

```html
<h1>Showing article details</h1>

<p><strong>Title: </strong>
  <%= @article.title %></p>
<p><strong>Description: </strong>
  <%= @article.description %></p>
```

## Debugging
```ruby
class ArticlesController < ApplicationController

  def show
    debugger
   @article = Article.find(params[:id])
  end
end
```

The program will stop on the `debugger` line. You can get the content of the variable until that point by typing the identifier in the console. Type `continue` to resume the program.


## Forms

You will need to add the new and create actions in the articles_controller.rb file like below:\
```ruby
def new
end

def create
end 
```

You will also need to create a view template for the new view. So, in the `app/views/articles` folder create a new file called `new.html.erb` and fill it in like below:
```erb
<h1>Create a new article</h1>
 
<%= form_with scope: :article, url: articles_path, local: true do |f| %>
  <p> 
    <%= f.label :title %><br/> 
    <%= f.text_field :title %>
  </p>
  <p>
    <%= f.label :description %><br/> 
    <%= f.text_area :description %> 
  </p>
  <p>
    <%= f.submit %> 
  </p>
<% end %>
```