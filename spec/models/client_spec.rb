require 'rails_helper'
require 'pry'

describe Client do
  let(:client) do
    FactoryGirl.create(:client)
  end

  before(:each) do
    Thread.current[:current_user] = FactoryGirl.create(:user)
  end

  it { should have_many(:estimates) }
  it { should have_many(:invoices) }
  it { should have_many(:payments) }
  it { should have_many(:client_contacts).dependent(:destroy) }
  it { should have_many(:projects) }
  it { should accept_nested_attributes_for(:client_contacts) }
  it { should belong_to(:currency) }
  it { should have_many(:company_entities) }
  it { should have_many(:expenses) }

  it "should have many company_entities" do
    t = Client.reflect_on_association(:client_contacts)
    t.macro.should == :has_many
  end


  it '#organization_name' do
    expect(client.organization_name).to eq('Nxb')
  end

  it '#contact_name' do
    expect(client.contact_name).to eq('Umair Munir')
  end

  it '#last_invoice' do
    expect(client.last_invoice).to eq(nil)
  end

  it '#purchase_options' do
    expect(client.purchase_options).to eq({ ip: OSB::Util.local_ip, billing_address: { name: 'Arif Khan', address1: '2nd Street', city: 'Lahore', state: 'Punjab', country: 'Pakistan', zip: '54000' } })
  end


  it '#get_credit_card' do
    expect(client.get_credit_card({})).to be_a_kind_of(ActiveMerchant::Billing::CreditCard)
  end

  it '#archive_multiple' do
    expect(Client.archive_multiple('Missing "ids"')).to eq([])
  end

  it '#delete_multiple' do
    expect(Client.delete_multiple('Missing "ids"')).to eq([])
  end

  it '#recover_archived' do
    expect(Client.recover_archived('Missing "ids"')).to eq([])
  end

  it '#recover_deleted' do
    expect(Client.recover_deleted('Missing "ids"')).to eq([])
  end

  it '#filter' do
    expect(Client.filter(status: 'archived')).to eq([])
  end

  it '#credit_payments' do
    expect(client.credit_payments).to eq([])
  end

  it '#client_credit' do
    expect(client.client_credit).to be_kind_of(BigDecimal)
  end

  it '#add_available_credit' do
    expect(client.add_available_credit('Missing "available_credit"', 'Missing "company_id"')).to be_kind_of(Payment)
  end

  it '#update_available_credit' do
    expect{client.update_available_credit('Missing "available_credit"')}.to raise_error(NoMethodError)
  end

  it '#get_clients' do
    expect{Client.get_clients({})}.to raise_error(NoMethodError)
  end
end
