require 'rails_helper'

RSpec.describe 'application show page' do

  it 'visits application show page and sees attributtes' do
    application = Application.create!(name: 'Rosa', street_address: '234 King St', city: 'Boulder', state: 'CO', zip_code: '80201', status: 'pending', description: 'I want a pet')
    visit "/applications/#{application.id}"

    expect(page).to have_content(application.name)
    expect(page).to have_content(application.street_address)
    expect(page).to have_content(application.city)
    expect(page).to have_content(application.state)
    expect(page).to have_content(application.zip_code)
    expect(page).to have_content(application.status)
    expect(page).to have_content(application.description)

  end
end
