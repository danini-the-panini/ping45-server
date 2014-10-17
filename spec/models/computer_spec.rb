require 'rails_helper'

describe Computer do
  it { is_expected.to belong_to :user }
  it { is_expected.to belong_to :location }
end
