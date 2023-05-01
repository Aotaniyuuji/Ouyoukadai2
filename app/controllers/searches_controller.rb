class SearchesController < ApplicationController
  before_action :authenticate_user!, only: [:search]

  def search
    @range = params[:range]

    if @range == "User"
      @user = User.looks(params[:search],params[:word])
    else
      @book = Book.looks(params[:search],params[:word])
    end
  end
end
