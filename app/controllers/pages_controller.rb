class PagesController < ApplicationController
  # GET request for "/" which is our home page
  def home
    @basic_plan = Plan.find(1)
    @pro_plan = Plan.find(2)
  end
  
  def resource_name
    :user
  end
  
  def devise_mapping
    @devise_mapping ||= request.env["devise.mapping"]
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  
  def about
  end
end