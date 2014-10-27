class ComputersController < ApplicationController
  def ping
    Computer.all.each do |c|
      c.update_attributes online: params[:computers].include?(c.mac_address)
    end

    render text: "OK", status: 200
  end
end
