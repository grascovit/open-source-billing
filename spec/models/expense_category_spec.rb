require 'rails_helper'

RSpec.describe ExpenseCategory, type: :model do
  it { should have_many :expenses }
end
