require 'rails_helper'

RSpec.describe Log, type: :model do
  it { should belong_to :project }

  it { should belong_to :task }

  it { should belong_to :user }

  it { should validate_presence_of :project_id }

  it { should validate_presence_of :task_id }

  it { should validate_presence_of :date }
end
