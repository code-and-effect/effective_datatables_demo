# Effective DataTables Demo

This is a skeleton rails website that shows off the [effective_datatables](https://github.com/code-and-effect/effective_datatables) gem.

Rails 5.2.3

Also installed are jQuery and Twitter Bootstrap 4.

### How I built this site

```
rails new effective_datatables_demo
```

In `.ruby-version` changed to `2.5.0`

In Gemfile:

```
ruby '2.5.0'

gem 'bootstrap'
gem 'jquery-rails'
gem 'haml-rails'
gem 'effective_datatables'

group :development do
  gem 'effective_developer' # Just or scaffolds
end

```

Run installer:

```
rails generate effective_datatables:install
```

In application.js:

```
//= require jquery3
//= require bootstrap
//= require effective_bootstrap
//= require effective_datatables
```

In application.scss:

```
@import 'bootstrap';
@import 'effective_datatables';
```

Create user.rb and post.rb models.

```
rails generate migration create_users first_name:string last_name:string city:string created_at:datetime updated_at:datetime
rails generate migration create_posts user_id:integer title:string description:text draft:boolean created_at:datetime updated_at:datetime

rake db:migrate
```

In routes.rb:

```
resources :users, only: :index
resources :posts, only: :index

root to: 'posts#index'
```







