require 'spec_helper'

describe User do
  it { is_expected.to have_many :computers }

  describe "#online?" do
    context "when none of their computers is online" do
      it "returns false" do
        create :computer, online: false, user: subject

        expect(subject).to_not be_online
      end
    end

    context "when one of their computers is online" do
      it "returns true" do
        create :computer, online: true, user: subject
        create :computer, online: false, user: subject

        expect(subject).to be_online
      end
    end
  end
end
