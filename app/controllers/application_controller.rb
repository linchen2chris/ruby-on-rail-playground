class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  def greet
    render json: { message: 'hello chris' }
  end
  def create
    newobj = Item.new(:name => params[:name], :description => params[:description])
    puts newobj
    newobj.save
    render json: { message: 'success11' }
  end
end
