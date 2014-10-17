require 'spec_helper'

describe Location do
  it { is_expected.to have_many :computers }
end
