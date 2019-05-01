class UsersController < ApplicationController
  def show
 @id_user = params[:id]
 @id_city = City.find(User.find(params[:id]).city_id)

 puts "$$" *60
 puts params
 puts "$$" *60
  end
end
