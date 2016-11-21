require 'rails_helper'

RSpec.describe Project, type: :model do
  it { should belong_to :client }

  it { should belong_to :manager }

  it { should belong_to :company }

  # it { should belong_to :user }

  it { should have_many(:project_tasks).dependent(:destroy) }

  it { should have_many(:logs).dependent(:destroy) }

  it { should have_many(:team_members).dependent(:destroy) }

  it { should have_many(:staffs) }

  it { should have_many(:invoices).dependent(:destroy) }

  it { should accept_nested_attributes_for :project_tasks }

  it { should accept_nested_attributes_for :team_members }
end
