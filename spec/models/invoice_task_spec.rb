require 'rails_helper'

RSpec.describe InvoiceTask, type: :model do
  it { should belong_to :invoice }
end
