class UrlController < ApplicationController
  def index; end

  def create
    url = Url.create(origin: params['origin'])
    @abbreviated = "http://localhost:3000/g/#{url.abbreviated}"
    render 'url/index'
  end
end
