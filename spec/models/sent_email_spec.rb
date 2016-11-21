require 'rails_helper'

RSpec.describe SentEmail, type: :model do
  it { should belong_to :notification }

  it { should belong_to :company }
end
