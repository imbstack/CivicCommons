require 'spec_helper'

describe "conversations/show.html.erb" do
  before(:each) do
    @conversation = assign(:conversation, stub_model(Conversation,
      :started_at => "",
      :finished_at => "",
      :issue_id => "",
      :moderator => "",
      :summary => "Summary"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("".to_s)
    rendered.should contain("".to_s)
    rendered.should contain("".to_s)
    rendered.should contain("".to_s)
    rendered.should contain("Summary".to_s)
  end
end
