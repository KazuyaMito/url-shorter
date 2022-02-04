class GeneratedUrlController < ApplicationController
  def action
    url = Url.find_by(abbreviated: params['abbreviated'])

    if url.nil?
      render 'errors/404', status: :not_found
    else
      redirect_to url.origin
    end
  end
end
