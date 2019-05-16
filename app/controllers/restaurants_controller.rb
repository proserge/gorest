# frozen_string_literal: true

class RestaurantsController < ApplicationController
  # before_action :authenticate_user!

  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]



  def index
    @restaurants = Restaurant.all
  end

  def show
    @timetable = []
    schedule = WorkingHour.where(restaurant_id: @restaurant.id)
    schedule.each do |sc|
    #  byebug
      @timetable << [sc.open_hour, sc.close_hour]
    end
    @timetable.sort
    # byebug
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    # @blog.user_id = current_user.id
    if @restaurant.save
      redirect_to @restaurant, success: "The restaurant has been created!"
    else
      render :new, danger: "The restaurant has not been created!"
    end
  end

  def edit
  end

  def update
    if @restaurant.update_attributes(restaurant_params)
      redirect_to @restaurant, success: "The restaurant data have been updated!"
    else
      render :edit, danger: "The restaurant data have not been updated!"
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path, success: "The restaurant has been erased!"
  end

  private

    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
      params.require(:restaurant).permit(:name, :cuisine, :address, :phone)
    end

    # def working_hours
    #  "#{opening_hour.to_hours_and_minutes} - #{closing_hour.to_hours_and_minutes}"
    # end

    def to_hours_and_minutes(time_minutes)
      (time_minutes / 60).to_s + ":" + (time_minutes % 60).to_s
    end
end
