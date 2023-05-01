class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @range = params[:range]

    if @range == "User"
      @user = User.looks(params[:search],params[:word])
    else
      @book = Book.looks(params[:search],params[:word])
    end
    redirect_to searches_search_path
  end
end
