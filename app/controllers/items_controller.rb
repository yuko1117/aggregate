class ItemsController < ApplicationController
  def index
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item= Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def search
    @items = Item.search(params[:keyword])
  end

  private

  def item_params
    params.require(:item).permit(:title, :explanation, :category_id, :image).merge(user_id: current_user.id)
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :area)
  end
end
