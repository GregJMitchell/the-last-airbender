class SearchController < ApplicationController
  def index
    @results = NationMemberFacade.nation_members(params[:nation])
  end
end
