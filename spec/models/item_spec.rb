require 'rails_helper'

RSpec.describe Item, type: :model do
  it { should have_many :invoice_line_items }

  it { should have_many :company_entities }

  it { should belong_to :tax1 }

  it { should belong_to :tax2 }
end
