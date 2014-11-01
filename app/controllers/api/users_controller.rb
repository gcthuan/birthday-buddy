module Api

class UsersController < ApplicationController

  def index
  	@users = User.all

  	render json: @users
  end

  def show
  	@user = User.find(user_params)

  	render json: @user
  end

  def new
  	@user = User.new

  	render json: @user
  end

  def create
  	@user = User.new(user_params)

  	if @user.save
  	  render json: @user, status: :created
  	else
  	  render json: @user.errors, status: :unprocessable_entity 
  	end
  end

  def update
  	@user = User.find(params[:id])

  	if @user.update_attributes(user_params)
  	  render json: @user
  	else
  	  render json: @user.errors, status: :unprocessable_entity
  	end
  end

  def destroy
  	@user = User.find(params[:id])

  	if @user.destroy
  	  head :no_content
  	end
  end

  def user_params
  	params.require(:user).permit(:facebook_id, :username, :day, :month, :year, :gender, :device_list => [])
  end

end

end