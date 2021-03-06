class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true, unless: -> { request.format.json? }

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end

end
