require 'rails_helper'

RSpec.describe Invoice, type: :model do
  it { should belong_to :client }

  it { should belong_to :company }

  it { should belong_to :project }

  it { should belong_to :currency }

  it { should have_many(:invoice_line_items).dependent(:destroy) }

  it { should have_many(:payments) }

  it { should have_many(:sent_emails) }

  it { should have_many(:credit_payments).dependent(:destroy) }

  it { should have_many(:invoice_tasks).dependent(:destroy) }

  it { should accept_nested_attributes_for :invoice_line_items }
end
