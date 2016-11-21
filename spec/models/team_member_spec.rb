require 'rails_helper'

RSpec.describe TeamMember, type: :model do
  it { should belong_to :staff }

  it { should belong_to :project }
end
