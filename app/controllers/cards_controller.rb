class CardsController < ApplicationController
  def index
    @cards = Card.order("created_at DESC")
  end

  def show
    @card = Card.first
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(params[:card])
    if @card.save
      flash[:notice] = "Thanks for adding the card"
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end

  def edit
  end

  def delete
  end

end
