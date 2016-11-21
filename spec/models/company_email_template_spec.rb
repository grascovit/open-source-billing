require 'rails_helper'

RSpec.describe CompanyEmailTemplate, type: :model do
  it { should belong_to :parent }

  it { should belong_to :email_template }
end
