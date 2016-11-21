require 'rails_helper'

RSpec.describe Tax, type: :model do
  # it { should have_many :invoice_line_items }

  # it { should have_many :items }

  # it { should have_many :expenses }

  it { should validate_presence_of :name }

  it { should validate_presence_of :percentage }
end
