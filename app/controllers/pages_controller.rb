class PagesController < ApplicationController
  before_filter :authenticate_user!, :except => [:home, :about]
  
  def home
  end

  def profile
    @cards = Card.order("created_at DESC")
  end

  def about
  end

end
