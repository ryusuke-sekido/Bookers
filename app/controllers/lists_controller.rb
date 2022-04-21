class ListsController < ApplicationController
  def new
  end
  
  def create
    list=List.new(list_params)
    list.save
    redirect_to '/top'
  end

  def index
  end

  def show
  end

  def edit
  end
end
