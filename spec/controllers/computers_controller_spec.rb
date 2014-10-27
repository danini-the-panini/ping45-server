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
end
