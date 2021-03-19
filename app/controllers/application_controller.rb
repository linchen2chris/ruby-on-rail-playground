class ApplicationController < ActionController::Base
  def greet
    render json: { message: 'hello chris' }
  end
  def create
    newobj = Item.new(:name => 'chen', :description => 'test')
    newobj.save
    render json: { message: 'success' }
  end
end
