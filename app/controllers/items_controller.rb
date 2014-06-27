class ItemsController < ApplicationController
  def index
    render :json => {:items => Item.all}
  end
end
