class PagesController < ApplicationController
  before_filter :authenticate_user!, :except => [:home, :about]
  def home
  end

  def profile
  end

  def about
  end

end
