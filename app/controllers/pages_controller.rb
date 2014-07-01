class PagesController < ApplicationController

  def home
    @title = "Psychotherapy Networker"
    @current_year = Time.now.year 
    @years_in_operation = @current_year - 1977 
  end

  def magazines
    @title = "PN - Magazines"
  end

  def free_reports 
    @title = "PN - Free Reports"
  end

end
