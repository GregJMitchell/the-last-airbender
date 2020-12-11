require 'rails_helper'

describe "AvatarService" do
  describe 'class methods' do
    describe '#nation_members' do
      it 'returns all nations in the queried nation' do
        details = AvatarService.nation_members('fire_nation')
        expect(details).to be_a Array
        
        member = details.first

        expect(member).to have_key :name
        expect(member[:name]).to be_a String

        expect(member).to have_key :allies
        expect(member[:allies]).to be_a Array

        expect(member).to have_key :enemies
        expect(member[:enemies]).to be_a Array
        
        expect(member).to have_key :affiliation
        expect(member[:affiliation]).to be_a String
      end
    end
  end
end
