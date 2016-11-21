require 'rails_helper'

RSpec.describe RecurringProfileLineItem, type: :model do
  it { should belong_to :recurring_profile }

  it { should belong_to :item }

  it { should belong_to :tax1 }

  it { should belong_to :tax2 }
end
