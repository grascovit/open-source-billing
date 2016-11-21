require 'rails_helper'

RSpec.describe LineItemTax, type: :model do
  it { should belong_to :invoice_line_item }
end
