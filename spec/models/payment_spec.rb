require 'rails_helper'

RSpec.describe Payment, type: :model do
  it { should belong_to :invoice }

  it { should belong_to :client }

  it { should belong_to :company }

  it { should have_many :sent_emails }

  it { should have_many :credit_payments }
end
