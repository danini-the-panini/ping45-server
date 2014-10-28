require 'rails_helper'

describe ComputersController do

  describe "POST /ping" do
    context "when a computer is offline" do
      let(:computer) { create :computer, online: false }

      it "brings computer online" do
        post :ping, { computers: [ computer.mac_address ] }
        computer.reload

        expect(computer.online).to be
      end
    end

    context "when a computer is online" do
      let!(:computer) { create :computer, online: true }

      it "brings computer offline" do
        post :ping, { computers: [] }
        computer.reload

        expect(computer.online).to_not be
      end

      it "keeps computer online" do
        post :ping, { computers: [ computer.mac_address ] }
        computer.reload

        expect(computer.online).to be
      end
    end
  end

  describe "POST /create" do
    context "when a user exists" do
      let!(:user) { create :user }
      it "uses the existing user" do
        expect{
          post :create, user: user.name, mac_address: Faker::Internet.mac_address
          user.reload
        }.to change(User, :count).by(0).and change(user.computers, :count).by(1)
      end
    end

    context "when the user does not exist" do
      it "creates a new user" do
        expect{
          post :create, user: "No Such Name", mac_address: Faker::Internet.mac_address
        }.to change(User, :count).by(1)
      end
    end

    it "creates a computer" do
      expect{
        post :create, user: "No Such Name", mac_address: Faker::Internet.mac_address
      }.to change(Computer, :count).by(1)
    end
  end
end
