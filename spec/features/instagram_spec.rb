require 'rails_helper'

RSpec.feature "Instagrams", type: :feature do
  before(:each) do
    @user = create(User.model_name.singular.to_sym)
    # @user = "hola"
    puts "#" * 30
    p User.all
  end
  it "Login View" do
    visit new_user_session_path
    fill_in 'user_email', with: @user.email
    fill_in 'user_password', with: @user.password
    click_button "Log In"
    expect(page).to have_current_path(root_path)
    # sleep(2)
  end
  it "Comment" do
    @post = create(Post.model_name.singular.to_sym, user:@user)
    visit new_user_session_path
    fill_in 'user_email', with: @user.email
    fill_in 'user_password', with: @user.password
    click_button "Log In"
    expect(page).to have_current_path(root_path)
    fill_in "comment_input", with: "pruebasss"
    click_button "Post"
    visit current_path
    expect(page).to have_content('pruebasss')
    expect(page).to have_content('xime')
    # sleep(2)
  end
  it "Register" do
    visit new_user_registration_path
    fill_in "user_email", with: Faker::Internet.email
    fill_in "user_name", with: Faker::FunnyName.four_word_name
    fill_in "user_username", with: Faker::FunnyName.four_word_name
    fill_in "user_password", with: Faker::Internet.password
    click_button "Sign up"
    # fill_in "user_email", with: "user@user.com"
    # fill_in "user_name", with: "user"
    # fill_in "user_username", with: "user_name"
    # fill_in "user_password", with: "123456"
    # click_button "Sign up"
    # sleep(20)
  end
  it "Likes" do
    @post = create(Post.model_name.singular.to_sym, user:@user)
    visit new_user_session_path
    fill_in 'user_email', with: @user.email
    fill_in 'user_password', with: @user.password
    click_button "Log In"
    expect(page).to have_current_path(root_path)
    click_button "like_button"
    visit current_path
    expect(page).to have_content('1 likes')
    # sleep(2)
    click_button "like_button"
    visit current_path
    expect(page).to have_content('0 likes')
    # sleep(2)
  end
  it "Profile view" do
    visit new_user_session_path
    fill_in 'user_email', with: @user.email
    fill_in 'user_password', with: @user.password
    click_button "Log In"
    expect(page).to have_current_path(root_path)
    find(:css, 'i.far.fa-user').click
    find_link('Profile').click
    expect(page).to have_current_path(profile_index_path)
    # sleep(5)
  end
  it "Profile - home view" do
    visit new_user_session_path
    fill_in 'user_email', with: @user.email
    fill_in 'user_password', with: @user.password
    click_button "Log In"
    expect(page).to have_current_path(root_path)
    find(:css, 'i.far.fa-user').click
    find_link('Profile').click
    expect(page).to have_current_path(profile_index_path)
    find(:css, 'i.far.fa-home').click
    expect(page).to have_current_path(root_path)
    # sleep(5)
  end
end
