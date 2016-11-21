require 'rails_helper'

RSpec.describe Staff, type: :model do
  it { should belong_to :company }

  it { should belong_to :user }

  it { should have_many :company_entities }

  it { should have_many :team_members }

  it { should have_many :projects }
end
