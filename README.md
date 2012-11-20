Spree Newsletter Subscribers
============================

This extension is just a simple administration screen and partial that can be used in your views to gather email addresses in a local database table.

Installation
============

* Add "gem 'spree_newsletter_subscribers', :git => 'git://github.com/markalinn/Spree-Newsletter-Subscribers.git'" to your Gemfile
* Run "bundle"
* Run "rails g spree_newsletter_subscribers:install" and select "Y" to run the migrations
* And.....Insert form into your views where appropriate, such as:

			<%= form_for :newsletter_subscriber, :url => :newsletter_subscriber do |f| %>
				<%= f.text_field :email %>
				<%= f.submit 'SUBSCRIBE' %>
			<% end %>

Todo
====

* Ability to unsubscibe
* Tests
* Everything else! :-)

Copyright (c) 2012 XWC Solutions, released under the New BSD License
