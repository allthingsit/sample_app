class PagesController < ApplicationController
  def home
  	# Commented on purpose to see ROLE of ApplicationHelper @title = "Home"
    @title = "Home"  
  end

  def contact
  	@title = "Contact"
  end

  def about
  	@title = "About"
  end

  def services
  	@title = "Services"
  end
end
