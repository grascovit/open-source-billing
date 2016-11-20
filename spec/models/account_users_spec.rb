require 'rails_helper'

RSpec.describe AccountUsers, type: :model do
  it { should belong_to :user }

  it { should belong_to :account }
end
