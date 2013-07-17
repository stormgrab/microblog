Given(/^it has a comment "(.*?)"$/) do |comment|
  @post.comments.create!(:content=> comment)
end