require 'rails_helper'

RSpec.describe CreditPayment, type: :model do
  it { should belong_to :invoice }

  it { should belong_to :payment }

  it { should belong_to :recurring_profile }
end
