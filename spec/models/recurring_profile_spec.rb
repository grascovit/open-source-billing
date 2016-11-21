require 'rails_helper'

RSpec.describe RecurringProfile, type: :model do
  it { should belong_to :client }

  # it { should belong_to :payment_term }

  it { should belong_to :company }

  it { should have_many(:recurring_profile_line_items).dependent(:destroy) }

  it { should accept_nested_attributes_for :recurring_profile_line_items }
end
