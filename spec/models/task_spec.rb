require 'rails_helper'

RSpec.describe Task, type: :model do
  it { should have_many :project_tasks }

  it { should have_many :company_entities }

  it { should have_many :company_entities }

  # it { should belong_to(:logs).dependent(:destroy) }
end
