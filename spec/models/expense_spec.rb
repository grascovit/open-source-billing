require 'rails_helper'

RSpec.describe Expense, type: :model do
  it { should belong_to :client }

  it { should belong_to :category }

  it { should belong_to :tax1 }

  it { should belong_to :tax2 }

  it { should belong_to :company }
end
