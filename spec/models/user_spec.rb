require 'rails_helper'

describe User do
  it 'has a valid factory' do
    expect(build(:user)).to be_valid
  end

  it { should validate_presence_of(:username) }
  it { should validate_uniqueness_of(:username) }

  it { is_expected.to have_many(:messages) }
  it { is_expected.to have_many(:chat_rooms).through(:messages) }
end