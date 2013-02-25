#def full_title(page_title)
#  base_title = "Project Explorer by SS!"
#  if page_title.empty?
#    base_title
#  else
#    "#{base_title} | #{page_title}"
#  end
#end

#below include replaces the above code
include ApplicationHelper

def sign_in(user)
  visit signin_path
  fill_in "Email",    with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
  # Sign in when not using Capybara as well.
  cookies[:remember_token] = user.remember_token
end

