class HomeController < ApplicationController
  def hello
    Resque.enqueue(HelloQueue, params[:message])
    Resque.enqueue(KoganezawaQueue, params[:message])
    render :text => params[:message]
  end
end
