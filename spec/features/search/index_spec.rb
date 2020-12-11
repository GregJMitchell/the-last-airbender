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
        end
      end
    end
  end
end
