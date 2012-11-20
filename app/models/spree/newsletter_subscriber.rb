module Spree
  class NewsletterSubscriber < ActiveRecord::Base
    validates_presence_of :email
    validates_uniqueness_of :email
    validates_format_of :email, :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i
    
    attr_accessible :email
  end
end