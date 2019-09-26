require 'rails_helper'

describe ChatRoom do
  it 'has a valid factory' do
    expect(build(:chat_room)).to be_valid
  end

  it { is_expected.to have_many(:messages) }
  it { is_expected.to have_many(:users).through(:messages) }
end