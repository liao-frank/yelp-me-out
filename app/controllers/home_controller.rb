class HomeController < ApplicationController
	helper HomeHelper
  def home
  end

  def search
  	@params = {
	    term: 'food',
	    location: 'LA',
	    limit: 5
	  }
  end

  def contact
  end
end
