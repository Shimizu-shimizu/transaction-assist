class SearchesController < ApplicationController
  def index
    @topics = Topic.search(params[:search]).limit(132)
    @search = params[:search]
    redirect_to topics_path
  end
end
