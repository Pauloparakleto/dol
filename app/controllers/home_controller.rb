class HomeController < ApplicationController
  def welcome
    render html: "Welcome to DOL news"
  end
end
