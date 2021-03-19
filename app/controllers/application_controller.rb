class ApplicationController < ActionController::Base
  def greet
    render json: { message: 'hello chris' }
  end
end
