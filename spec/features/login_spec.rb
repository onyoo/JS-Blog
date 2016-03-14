require 'rails_helper'

RSpec.describe "Login", type: :feature do

  before do
    Post.destroy_all
    User.destroy_all
    @user = User.create(username: 'who??', password: 'supersecure')
    @post = Post.create(title: 'test...', body: 'body...', user_id: @user.id)
  end

  it 'should require login to see post' do
    visit post_path(@post)

    expect(page.body).to have_field("user[username]")
  end

  it 'should allow a user to log-in' do
    visit root_path
    click_on 'Log-in'

    fill_in 'user[username]', with: 'who??'
    fill_in 'user[password]', with: 'supersecure'
    click_on 'Submit'

    click_on 'Test...'
    expect(page).to have_content('Author: Who??')
  end

  it 'should not let a user log-in with an incorrect password' do
    visit root_path
    click_on 'Log-in'

    fill_in 'user[username]', with: 'who??'
    fill_in 'user[password]', with: 'let me in!'
    click_on 'Submit'

    expect(page).to have_content('Incorrect username or password')
  end
end
