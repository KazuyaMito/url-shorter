class UrlController < ApplicationController
  def index
  end

  def create
    abbreviated = 'http://localhost:3000/g/' + (0...8).map { rand(65..90).chr }.join
    @url = Url.create(origin: params['origin'], abbreviated: abbreviated)
    @abbreviated = abbreviated
    render 'url/index'
  end
end
