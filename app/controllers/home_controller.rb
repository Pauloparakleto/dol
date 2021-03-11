class HomeController < ApplicationController
  before_action :user_banished?
  def welcome
    
  end
end
