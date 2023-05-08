class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
