Given /^there is a post called "([^\"]*)"$/ do |title|
	@post = FactoryGirl.create(:post, :title => title)
end