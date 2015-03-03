# Project 2

* Project Title: Travelogue
* [Trello Board](https://trello.com/b/pl8zJkT4/wampas)
* [C9 Online](https://ide.c9.io/protosac/project2)
* Framework: Rails 4.0
* APIs Used: Google Maps (Places api)

Check the Trello board for the most recent updates and planning for on-going work. This repo is used for [issue](https://github.com/wampas/project2/issues) and [milestone](https://github.com/wampas/project2/milestones) tracking.
***
## Getting Started
* Run `bundle install`
* Run `rake db:schema:load` for <b>NEW</b> installs only.
* Run `rake db:migrate` to update database between pulls.
* Run `rake db:seed` to populate the site with fake articles and users. Old users will not be removed.

The following gems require configuration: rspec, capybara, devise

#### RSpec
* `rails generate rspec:install`
* `require "rails_helper"` goes at the top of new _spec files.
* Further reading: [Github](https://github.com/rspec/rspec-rails) - [Documentation](https://relishapp.com/rspec)

#### Shoulda-Matchers
* `require 'shoulda/matchers'` in rails_helper.rb

#### Capybara
* `require 'capybara/rails'` to rails_helper.rb
* Create a features folder in the spec directory (spec/features)
* Further reading: [Github](https://github.com/jnicklas/capybara) - [Documentation](http://www.rubydoc.info/github/jnicklas/capybara/master/Capybara/Node)

#### Devise
* `rails generate devise:install`
* in `config/environments/development.rb` add: 
`config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }`
* Add this to controllers where authentication is required: `before_action :authenticate_user!`
* Further reading: [Github](https://github.com/plataformatec/devise) - [Documentation](http://devise.plataformatec.com.br/)

#### Pundit
* Add the following to application_controller.rb at top of class:
* `include Pundit`
* Create a policies folder in the app directory (app/policies)
* [Documentation](https://github.com/elabs/pundit)

#### Paperclip
* Ensure Imagemagick is installed on your computer. Use your terminal install command (e.g. brew install imagemagick).
* Add the following to `config/environments/development.rb`:
`Paperclip.options[:command_path] = "/usr/local/bin/"`
* Add the following to the appropriate model:
* `has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"`
`validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/`
* [Documentation](https://github.com/thoughtbot/paperclip)

#### Optional Gems

`guard-rspec` simply runs your specs automatically in the background. 
* `guard init rspec` to configure
* Run in it's own terminal in your rails directory, as you would a rails server.
* `bundle exec guard` (or `guard`) to start
* [Documentation](https://github.com/guard/guard#readme)

`simplecov` simply measures the amount of test coverage for our entire app.
* Add to top of rails_helper.rb:
* `require 'simplecov'`
`SimpleCov.start`
* [Documentation](https://github.com/colszowka/simplecov)


