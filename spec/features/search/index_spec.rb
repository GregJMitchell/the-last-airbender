require 'rails_helper'

RSpec.describe 'Search results index page' do
  describe 'As a user' do
    describe "When I visit '/'" do
      describe "And select 'Fire nation' from the select field" do
        describe 'And I click search for members' do
          before :each do
            visit '/'
            select 'Fire Nation', from: :nation
            click_on 'Search For Members'
          end

          it "I should be on page '/search'" do
            expect(current_path).to eq('/search')
          end

          it 'I see a total number of 20 ppeople who live in the fire nation' do
            people = all('.people')
            expect(people).to_not be_empty
            expect(people.count).to eq(20)
          end
        end
      end
    end
  end
end
