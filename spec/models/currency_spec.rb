require 'rails_helper'

RSpec.describe Currency, type: :model do
  it { should validate_presence_of :code }

  it { should validate_presence_of :title }

  it { should validate_presence_of :unit }
end
