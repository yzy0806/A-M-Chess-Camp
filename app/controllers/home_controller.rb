class HomeController < ApplicationController
  def index
  	@instructors=Instructor.active.alphabetical
  	@camps=Camp.active.upcoming.chronological
  end

  def about
  end

  def contact
  end

  def privacy
  end

  def financial
    @camps=Camp.alphabetical.select { |e| e.start_date>Date.new(2014,1,1) && e.start_date<=Date.new(2014,12,31) }
  end
  
end
