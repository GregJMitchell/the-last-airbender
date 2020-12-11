class SearchController < ApplicationController
  def index
    @results = CharacterFacade.nation_members(params[:nation])
  end
end
