class ComputersController < ApplicationController
  protect_from_forgery except: :ping

  def ping
    params[:computers].each do |a|
      a.downcase!
    end

    Computer.all.each do |c|
      c.update_attributes online: params[:computers].include?(c.mac_address)
    end

    render text: "OK", status: 200
  end

  def index
    @people = User.all
  end

  def new
  end

  def create
    @user = User.find_or_create_by(name: params[:user])
    @computer = Computer.create(user: @user, mac_address: params[:mac_address].downcase)

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end
end
