class CoursesController < ApplicationController
	def index
    @tag = query.fetch(:tags, 'all')
    @refresh_params = refresh_params
    @courses, @errors = Careerfoundry::Course.random(query, clear_cache)
  end

  def show
    @title = params[:title]
    @course = Careerfoundry::Course.find(params[:slug])
  end

  private

  def query
    params.fetch(:query, {})
  end

  def clear_cache
    params[:clear_cache].present?
  end

  def refresh_params
    refresh = { clear_cache: true }
    refresh.merge!({ query: query }) if query.present?
    refresh
  end
end
