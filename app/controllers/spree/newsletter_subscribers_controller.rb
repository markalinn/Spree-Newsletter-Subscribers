module Spree
  class NewsletterSubscribersController < BaseController
    rescue_from ActiveRecord::RecordNotFound, :with => :render_404
    respond_to :html

    def create
      @newsletter_subscriber = NewsletterSubscriber.new(params[:newsletter_subscriber])
  
      respond_to do |format|
        if @newsletter_subscriber.save
          flash[:notice] = 'Your email address was successfully added as a subscriber.'
          format.html { redirect_to(root_url) }
        else
          flash[:error] = 'ERROR- Unable to add your email address as a subscriber.  Perhaps we already have it in our database.'
          format.html { redirect_to(root_url) }
        end
      end
    end
  end
end
