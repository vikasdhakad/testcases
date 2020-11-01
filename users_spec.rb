require 'rails_helper'

# Before login make sure captcha is disabled
# GB user login Section
feature 'Test Cases', js: true do
  scenario 'Normal GB Seller Login' do
    visit new_user_session_path
    fill_in "user[email]", with: "test@yopmail.com"
    fill_in "user[password]", with: "password12345"
    check('Remember me', allow_label_click: true) 
    click_on "Log in now"
    assert_text "Log in progress"
  end
end

feature 'Test Cases', js: true do
  scenario 'Normal GB Seller Login without email' do
    visit new_user_session_path
    fill_in "user[email]", with: ""
    fill_in "user[password]", with: "password12345"
    check('Remember me', allow_label_click: true) 
    click_on "Log in now"
    assert_text "Log in progress"
  end
end

feature 'Test Cases', js: true do
  scenario 'Normal GB Seller Login without password' do
    visit new_user_session_path
    fill_in "user[email]", with: "test@yopmail.com"
    fill_in "user[password]", with: ""
    check('Remember me', allow_label_click: true) 
    click_on "Log in now"
    assert_text "Log in progress"
  end
end

feature 'Test Cases', js: true do
  scenario 'Normal GB Seller Login with no data' do
    visit new_user_session_path
    fill_in "user[email]", with: ""
    fill_in "user[password]", with: ""
    check('Remember me', allow_label_click: true) 
    click_on "Log in now"
    assert_text "Log in progress"
  end
end

feature 'Test Cases', js: true do
  scenario 'Normal GB Seller Login with invalid email password' do
    visit new_user_session_path
    fill_in "user[email]", with: "invalidemail@yopmail.com"
    fill_in "user[password]", with: "invalid_password"
    check('Remember me', allow_label_click: true) 
    click_on "Log in now"
    assert_text "Log in progress"
  end
end

feature 'Test Cases', js: true do
  scenario 'Normal GB Seller Login with wrong email format' do
    visit new_user_session_path
    fill_in "user[email]", with: "testmaildd"
    fill_in "user[password]", with: "3456434"
    check('Remember me', allow_label_click: true) 
    click_on "Log in now"
    assert_text "Log in progress"
  end
end

# GB create user Section
feature 'Test Cases', js: true do
  scenario 'Create User for US country' do
    visit new_user_registration_path
    fill_in "user[name]", with: "test user"
    fill_in "user[email]", with: "test@yopmail.com"
    fill_in "user[password]", with: "password12345"
    fill_in "user[password_confirmation]", with: "password12345"
    fill_in "user[address1]", with: "123, new road"
    fill_in "user[address2]", with: "abcd"
    fill_in "user[city]", with: "Atalnata"
    fill_in "user[zip_code]", with: "200942"
    fill_in "user[country]", with: "US"
    fill_in "user[state]", with: "AL"
   
    click_on "Create your account"
   
    assert_text "Creating account"
  end
end

feature 'Test Cases', js: true do
  scenario 'Create User for No country' do
    visit new_user_registration_path
    fill_in "user[name]", with: "test user"
    fill_in "user[email]", with: "test@yopmail.com"
    fill_in "user[password]", with: "password12345"
    fill_in "user[password_confirmation]", with: "password12345"
    fill_in "user[address1]", with: "123, new road"
    fill_in "user[address2]", with: "abcd"
    fill_in "user[city]", with: "Atalnata"
    fill_in "user[zip_code]", with: "200942"
    fill_in "user[country]", with: ""
    fill_in "user[state]", with: ""
   
    click_on "Create your account"
   
    assert_text "Creating account"
  end
end

feature 'Test Cases', js: true do
  scenario 'Create user with no data' do
    visit new_user_registration_path
    fill_in "user[name]", with: ""
    fill_in "user[email]", with: ""
    fill_in "user[password]", with: ""
    fill_in "user[password_confirmation]", with: ""
    fill_in "user[address1]", with: ""
    fill_in "user[address2]", with: ""
    fill_in "user[city]", with: ""
    fill_in "user[zip_code]", with: ""
    fill_in "user[country]", with: ""
    fill_in "user[state]", with: ""
   
    click_on "Create your account"
   
    assert_text "Creating account"
  end
end

feature 'Test Cases', js: true do
  scenario 'Create User without email' do
    visit new_user_registration_path
    fill_in "user[name]", with: "test user"
    fill_in "user[email]", with: ""
    fill_in "user[password]", with: "password12345"
    fill_in "user[password_confirmation]", with: "password12345"
    fill_in "user[address1]", with: "123, new road"
    fill_in "user[address2]", with: "abcd"
    fill_in "user[city]", with: "Atalnata"
    fill_in "user[zip_code]", with: "200942"
    fill_in "user[country]", with: "US"
    fill_in "user[state]", with: "AL"
   
    click_on "Create your account"
   
    assert_text "Creating account"
  end
end

feature 'Test Cases', js: true do
  scenario 'Create User without password' do
    visit new_user_registration_path
    fill_in "user[name]", with: "test user"
    fill_in "user[email]", with: "test@yopmail.com"
    fill_in "user[password]", with: ""
    fill_in "user[password_confirmation]", with: ""
    fill_in "user[address1]", with: "123, new road"
    fill_in "user[address2]", with: "abcd"
    fill_in "user[city]", with: "Atalnata"
    fill_in "user[zip_code]", with: "200942"
    fill_in "user[country]", with: "US"
    fill_in "user[state]", with: "AL"
   
    click_on "Create your account"
   
    assert_text "Creating account"
  end
end

feature 'Test Cases', js: true do
  scenario 'Create User without password confirmation' do
    visit new_user_registration_path
    fill_in "user[name]", with: "test user"
    fill_in "user[email]", with: "test@yopmail.com"
    fill_in "user[password]", with: "password1234"
    fill_in "user[password_confirmation]", with: ""
    fill_in "user[address1]", with: "123, new road"
    fill_in "user[address2]", with: "abcd"
    fill_in "user[city]", with: "Atalnata"
    fill_in "user[zip_code]", with: "200942"
    fill_in "user[country]", with: "US"
    fill_in "user[state]", with: "AL"
   
    click_on "Create your account"
   
    assert_text "Creating account"
  end
end

feature 'Test Cases', js: true do
  scenario 'Create User with short password' do
    visit new_user_registration_path
    fill_in "user[name]", with: "test user"
    fill_in "user[email]", with: "test@yopmail.com"
    fill_in "user[password]", with: "1234"
    fill_in "user[password_confirmation]", with: "1234"
    fill_in "user[address1]", with: "123, new road"
    fill_in "user[address2]", with: "abcd"
    fill_in "user[city]", with: "Atalnata"
    fill_in "user[zip_code]", with: "200942"
    fill_in "user[country]", with: "US"
    fill_in "user[state]", with: "AL"
   
    click_on "Create your account"
   
    assert_text "Creating account"
  end
end

feature 'Test Cases', js: true do
  scenario 'Create User with wrong password confirmation' do
    visit new_user_registration_path
    fill_in "user[name]", with: "test user"
    fill_in "user[email]", with: "test@yopmail.com"
    fill_in "user[password]", with: "password12345"
    fill_in "user[password_confirmation]", with: "11111111"
    fill_in "user[address1]", with: "123, new road"
    fill_in "user[address2]", with: "abcd"
    fill_in "user[city]", with: "Atalnata"
    fill_in "user[zip_code]", with: "200942"
    fill_in "user[country]", with: "US"
    fill_in "user[state]", with: "AL"
   
    click_on "Create your account"
   
    assert_text "Creating account"
  end
end

feature 'Test Cases', js: true do
  scenario 'Create User wiht invalid email' do
    visit new_user_registration_path
    fill_in "user[name]", with: "test user"
    fill_in "user[email]", with: "testyopmailcom"
    fill_in "user[password]", with: "password12345"
    fill_in "user[password_confirmation]", with: "password12345"
    fill_in "user[address1]", with: "123, new road"
    fill_in "user[address2]", with: "abcd"
    fill_in "user[city]", with: "Atalnata"
    fill_in "user[zip_code]", with: "200942"
    fill_in "user[country]", with: "US"
    fill_in "user[state]", with: "AL"
   
    click_on "Create your account"
   
    assert_text "Creating account"
  end
end

feature 'Test Cases', js: true do
  scenario 'Create User for India country' do
    visit new_user_registration_path
    fill_in "user[name]", with: "test user"
    fill_in "user[email]", with: "test@yopmail.com"
    fill_in "user[password]", with: "password12345"
    fill_in "user[password_confirmation]", with: "password12345"
    fill_in "user[address1]", with: "123, new road"
    fill_in "user[address2]", with: "abcd"
    fill_in "user[city]", with: "Indore"
    fill_in "user[zip_code]", with: "456001"
    fill_in "user[country]", with: "India"
    fill_in "user[state]", with: "MP"
    click_on "Create your account"
    assert_text "Creating account"
  end
end

# Admin Section
feature 'Test Cases', js: true do
  scenario 'GB Admin Login' do
    visit new_admin_user_session_path
    fill_in "admin_user[email]", with: "admin@yopmail.com"
    fill_in "admin_user[password]", with: "adminpassword12345"
    check('Remember me', allow_label_click: true)
    click_on "Login"
    assert_text "Admin Log in progress"
  end
end

feature 'Test Cases', js: true do
  scenario 'GB Admin Login without email' do
    visit new_admin_user_session_path
    fill_in "admin_user[email]", with: ""
    fill_in "admin_user[password]", with: "adminpassword12345"
    check('Remember me', allow_label_click: true)
    click_on "Login"
    assert_text "Admin Log in progress"
  end
end

feature 'Test Cases', js: true do
  scenario 'GB Admin Login without password' do
    visit new_admin_user_session_path
    fill_in "admin_user[email]", with: "admin@yopmail.com"
    fill_in "admin_user[password]", with: ""
    check('Remember me', allow_label_click: true)
    click_on "Login"
    assert_text "Admin Log in progress"
  end
end

feature 'Test Cases', js: true do
  scenario 'GB Admin Login without data' do
    visit new_admin_user_session_path
    fill_in "admin_user[email]", with: ""
    fill_in "admin_user[password]", with: ""
    check('Remember me', allow_label_click: true)
    click_on "Login"
    assert_text "Admin Log in progress"
  end
end

feature 'Test Cases', js: true do
  scenario 'GB Admin Login with wrong email password' do
    visit new_admin_user_session_path
    fill_in "admin_user[email]", with: "4543543sdf@yopmail.com"
    fill_in "admin_user[password]", with: "2435refdsfs"
    check('Remember me', allow_label_click: true)
    click_on "Login"
    assert_text "Admin Log in progress"
  end
end

feature 'Test Cases', js: true do
  scenario 'GB Admin Login with invalid email' do
    visit new_admin_user_session_path
    fill_in "admin_user[email]", with: "emailtest"
    fill_in "admin_user[password]", with: "2435refdsfs"
    check('Remember me', allow_label_click: true)
    click_on "Login"
    assert_text "Admin Log in progress"
  end
end
