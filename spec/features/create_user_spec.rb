require 'rails_helper'

describe "the signup process", type: :feature do
  it "signs a user up" do
    visit '/users/sign_up'
    within("#new_user") do
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'
    end
    click_button 'Sign up'
    expect(page).to have_content 'My User Dashboard'
  end
end
