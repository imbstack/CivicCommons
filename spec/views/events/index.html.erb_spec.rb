require 'spec_helper'

describe "events/index.html.erb" do
  before(:each) do
    assign(:events, [
      stub_model(Event,
        :title => "Title",
        :where => "Where",
        :moderator_id => ""
      ),
      stub_model(Event,
        :title => "Title",
        :where => "Where",
        :moderator_id => ""
      )
    ])
  end

  it "renders a list of events" do
    render
    rendered.should have_selector("tr>td", :content => "Title".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Where".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "".to_s, :count => 2)
  end
end
