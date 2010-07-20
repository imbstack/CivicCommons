require 'spec_helper'

describe "events/show.html.erb" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :title => "Title",
      :where => "Where",
      :moderator_id => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Title".to_s)
    rendered.should contain("Where".to_s)
    rendered.should contain("".to_s)
  end
end
