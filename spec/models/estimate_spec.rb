require 'rails_helper'

RSpec.describe Estimate, type: :model do
  it { should belong_to :client }

  it { should belong_to :company }

  it { should belong_to :currency }

  it { should have_many :sent_emails }

  it { should have_many :estimate_line_items }

  it { should accept_nested_attributes_for :estimate_line_items }
end
