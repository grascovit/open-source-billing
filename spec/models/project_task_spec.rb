require 'rails_helper'

RSpec.describe ProjectTask, type: :model do
  it { should belong_to :task }

  it { should belong_to :project }

  it { should have_one(:log).dependent(:destroy) }
end
