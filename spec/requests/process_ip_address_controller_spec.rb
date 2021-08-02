require 'rails_helper'

RSpec.feature "ProcessIpAddressControllers", type: :feature do
  scenario "The ip must be complete" do
      visit '/'
      fill_in :process_ip_address, with: '10.2.5' 
      click_button 'Valid'
      expect(page).to have_text("Invalid Address")
  end

  scenario "the first quadrant of the ip must not exceed 255" do
    visit '/'
    fill_in :process_ip_address, with: '260.2.5' 
    click_button 'Valid'
    expect(page).to have_text("Invalid Address")
  end

  scenario "Localhost is not accepted" do
    visit '/'
    fill_in :process_ip_address, with: 'localhost' 
    click_button 'Valid'
    expect(page).to have_text("Invalid Address")
  end

  scenario "the separation must be by point" do
    visit '/'
    fill_in :process_ip_address, with: '10,2,3,5' 
    click_button 'Valid'
    expect(page).to have_text("Invalid Address")
  end

  scenario "the separation must be by point" do
    visit '/'
    fill_in :process_ip_address, with: '10 5 8 6' 
    click_button 'Valid'
    expect(page).to have_text("Invalid Address")
  end

  scenario "valid ip" do
    visit '/'
    fill_in :process_ip_address, with: '192.168.0.1' 
    click_button 'Valid'
    expect(page).to have_text("192.168.0.1")
  end

end
