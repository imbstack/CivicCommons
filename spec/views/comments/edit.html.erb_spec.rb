require 'spec_helper'

describe "comments/edit.html.erb" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :new_record? => false,
      :owner => 1,
      :parent_type => 1,
      :parent_id => 1,
      :content => "MyText"
    ))
  end

  it "renders the edit comment form" do
    render

    rendered.should have_selector("form", :action => comment_path(@comment), :method => "post") do |form|
      form.should have_selector("input#comment_owner", :name => "comment[owner]")
      form.should have_selector("input#comment_parent_type", :name => "comment[parent_type]")
      form.should have_selector("input#comment_parent_id", :name => "comment[parent_id]")
      form.should have_selector("textarea#comment_content", :name => "comment[content]")
    end
  end
end
