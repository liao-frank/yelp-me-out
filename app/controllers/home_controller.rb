class HomeController < ApplicationController
	helper HomeHelper
  MULTIPLE_OPTIONS = [:price]
  def home
  end

  def search
    # multiple combinations
    for parameter in MULTIPLE_OPTIONS
      if params.has_key?(parameter) && params[parameter].kind_of?(Array)
        price = ""
        for p in params[parameter]
          price += p + ","
        end
        params[parameter] = price.chomp(',')
      end
    end
  end

  def contact
  end
end
