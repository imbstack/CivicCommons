require 'spec_helper'

describe "conversations/edit.html.erb" do
  before(:each) do
    @conversation = assign(:conversation, stub_model(Conversation,
      :new_record? => false,
      :started_at => "",
      :finished_at => "",
      :issue_id => "",
      :moderator => "",
      :summary => "MyString"
    ))
  end

  it "renders the edit conversation form" do
    render

    rendered.should have_selector("form", :action => conversation_path(@conversation), :method => "post") do |form|
      form.should have_selector("input#conversation_started_at", :name => "conversation[started_at]")
      form.should have_selector("input#conversation_finished_at", :name => "conversation[finished_at]")
      form.should have_selector("input#conversation_issue_id", :name => "conversation[issue_id]")
      form.should have_selector("input#conversation_moderator", :name => "conversation[moderator]")
      form.should have_selector("input#conversation_summary", :name => "conversation[summary]")
    end
  end
end
