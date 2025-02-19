require 'spec_helper'

RSpec.describe Registrant do
    before(:each)do
    @registrant_1 = Registrant.new('Bruce', 18, true)
    @registrant_2 = Registrant.new('Penny', 15)
    end
    
    describe '#initialize' do
      it 'can initialize' do
      expect(@registrant_1).to be_a Registrant
      expect(@registrant_2).to be_a Registrant
      end
  end

  it 'has the correct name' do
    expect(@registrant_1.name).to eq('Bruce')
    expect(@registrant_2.name).to eq('Penny')
  end

  it 'has the correct age' do
    expect(@registrant_1.age).to eq(18)
    expect(@registrant_2.age).to eq(15)
  end

  it 'has a permit' do
    expect(@registrant_1.permit).to eq(true)
    expect(@registrant_2.permit).to eq(false)
  end

  it 'has license_data' do
    expect(@registrant_1.license_data).to eq({written: false, license: false, renewed:false})
    expect(@registrant_2.license_data).to eq({written: false, license: false, renewed:false})
  end

  it 'can earn permit' do
    expect(@registrant_2.earn_permit).to eq(true)
  end
  
end