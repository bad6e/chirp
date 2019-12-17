require 'rails_helper'

describe Chirp do
  it 'has a valid factory' do
    expect(build(:chirp)).to be_valid
  end

  it { should validate_length_of(:text).is_at_most(140) }
end
