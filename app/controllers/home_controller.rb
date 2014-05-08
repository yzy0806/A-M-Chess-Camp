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
  
end
