require 'spec_helper'

describe "conversations/index.html.erb" do
  before(:each) do
    assign(:conversations, [
      stub_model(Conversation,
        :started_at => "",
        :finished_at => "",
        :issue_id => "",
        :moderator => "",
        :summary => "Summary"
      ),
      stub_model(Conversation,
        :started_at => "",
        :finished_at => "",
        :issue_id => "",
        :moderator => "",
        :summary => "Summary"
      )
    ])
  end

  it "renders a list of conversations" do
    render
    rendered.should have_selector("tr>td", :content => "".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Summary".to_s, :count => 2)
  end
end
