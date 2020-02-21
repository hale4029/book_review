class SearchController < ApplicationController
  def index
    @book = SearchCompiler.new(params[:title])
  end
end
