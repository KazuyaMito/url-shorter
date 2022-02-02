class UrlController < ApplicationController
  def index

  end

  def create
    abbreviated = 'http://localhost:3000/g/' + (0...8).map { rand(65..90).chr }.join
    origin = params['origin']
    logger.debug(origin)
    logger.debug(abbreviated)
    @url = Url.create(origin: origin, abbreviated: abbreviated)
    @abbreviated = abbreviated
    render 'url/index'
  end
end
