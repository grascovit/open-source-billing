require 'rails_helper'

RSpec.describe Company, type: :model do
  it { should have_many :company_entities }

  it { should have_many :items }

  it { should have_many :tasks }

  it { should have_many :staffs }

  it { should have_many :clients }

  it { should have_many :company_email_templates }

  it { should have_many :email_templates }

  it { should have_many :invoices }

  it { should have_many :estimates }

  it { should have_many :expenses }

  it { should have_many :payments }

  it { should have_many :sent_emails }

  it { should belong_to :account }
end
