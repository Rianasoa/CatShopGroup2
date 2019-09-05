class ItemsController < ApplicationController
	before_action :authenticate_user!, only: [:show]
  def index
  	@items = Item.all
  end

  def show
  	@item = Item.find(params[:id])
  	
  end

  def create
  end
end
