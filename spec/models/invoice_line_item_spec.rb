require 'rails_helper'

RSpec.describe InvoiceLineItem, type: :model do
  it { should belong_to :invoice }

  it { should belong_to :estimate }

  it { should belong_to :item }

  it { should belong_to :tax1 }

  it { should belong_to :tax2 }
end
