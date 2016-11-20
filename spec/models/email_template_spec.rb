require 'rails_helper'

RSpec.describe EmailTemplate, type: :model do
  it { should have_many :company_email_templates }
end
