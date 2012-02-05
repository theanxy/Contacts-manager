class CardsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @cards = Card.order("created_at DESC")
  end

  def show
    @cards = Card.order("created_at DESC")
    @card = Card.find(params[:id])
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
    @card = Card.find(params[:id])
  end

  def update
    @card = Card.find(params[:id])
    if @card.update_attributes(params[:card])
       redirect_to :action => 'show'
    else
       render :action => 'edit'
    end
  end

  def destroy
    Card.find(params[:id]).delete
    redirect_to :action => "index"
  end

end
