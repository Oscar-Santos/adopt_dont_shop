require 'rails_helper'

# As a visitor
# When I visit the new application page
# And I fail to fill in any of the form fields
# And I click submit
# Then I am taken back to the new applications page
# And I see a message that I must fill in those fields.

RSpec.describe 'wip' do
  it 'wip' do
    visit '/applications/new'

    fill_in "name", with: "Rosa"
    fill_in "street_address", with: "234 King St"
    fill_in "city", with: "Boulder"
    fill_in "zip_code", with: "80201"
    click_button('Submit')
    
    expect(current_path).to eq('/applications/new')
    expect(page).to have_content('Error')
  end
end
