class AggregateController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @items = Item.includes(:user)
  end

  def search
    @items = Item.search(params[:keyword])
  end
  
  def show
    @item = Item.find(params[:id])
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :area)
  end

  def prototype_params
    params.require(:item).permit(:title, :category_id, :explanation, :image).merge(user_id: current_user.id)
  end

end
