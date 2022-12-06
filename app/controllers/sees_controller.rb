class SeesController < ApplicationController
  def index
  @see = See.find_by(ip: request.remote_ip) 
    if @see 
      @books = Book.all
    else 
      @books = Book.all
      See.create(ip: request.remote_ip)
    end

  def show
  @see = See.find_by(ip: request.remote_ip) 
    if @see 
      @books = Book.all
    else 
      @books = Book.all
      See.create(ip: request.remote_ip)
    end
end
