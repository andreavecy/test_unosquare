require "application_system_test_case"

class ProcessIpAddressesTest < ApplicationSystemTestCase
  setup do
    @process_ip_address = process_ip_addresses(:one)
  end

  test "visiting the index" do
    visit process_ip_addresses_url
    assert_selector "h1", text: "Process Ip Addresses"
  end

  test "creating a Process ip address" do
    visit process_ip_addresses_url
    click_on "New Process Ip Address"

    click_on "Create Process ip address"

    assert_text "Process ip address was successfully created"
    click_on "Back"
  end

  test "updating a Process ip address" do
    visit process_ip_addresses_url
    click_on "Edit", match: :first

    click_on "Update Process ip address"

    assert_text "Process ip address was successfully updated"
    click_on "Back"
  end

  test "destroying a Process ip address" do
    visit process_ip_addresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Process ip address was successfully destroyed"
  end
end
