class HomeController < ApplicationController
   def index
  	@students=Student.order(created_at: :desc).all
  end
end
