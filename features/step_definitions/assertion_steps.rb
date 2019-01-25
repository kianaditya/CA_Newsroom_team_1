Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should see {string} for the article {string}") do |content, article_title|
  article = Article.find_by_title(article_title)
  within("#article_#{article.id}") do
    expect(page).to have_content content
  end
end


Then("I should see Navbar") do
  expect(page).to have_css '.navbar'
end

Then("I should not see {string}") do |content|
  expect(page).to have_no_content content
end

Then("I am on Create article page") do
  expect(current_path).to eq new_cms_article_path
end

Then("I should be on journalist index page") do
  expect(current_path).to eq cms_articles_path
end

Then("I am on Sign up page") do
  expect(current_path).to eq new_user_registration_path
end

Then("I should see {string} in {string}") do |content, article|
  article = Article.find_by(title: article)
  dom_section = "#article_#{article.id}" 
  within(dom_section) do 
      expect(page).to have_content content
  end
end

Then("I should see {string} in navbar") do |content|
  navbar = page.find("#category_bar")
  within(navbar) do 
      expect(page).to have_content content
  end
end


Then("a call to the weather api should be made") do
  url = "https://fcc-weather-api.glitch.me/api/current?lat=59.35&lon=18.05"
  expect(a_request(:get, url)).to have_been_made.times(1)
end

Then("there should be no call to the weather api") do
  url = "https://fcc-weather-api.glitch.me/api/current?lat=59.35&lon=18.05"
  expect(a_request(:get, url)).not_to have_been_made
end

Then("a cookie with weather info should be stored") do
  cookie = page.driver.browser.manage.cookie_named('weather')
  expect(cookie[:value]).not_to eq nil
end