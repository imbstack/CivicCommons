require 'spec_helper'

describe "events/new.html.erb" do
  before(:each) do
    assign(:event, stub_model(Event,
      :new_record? => true,
      :title => "MyString",
      :where => "MyString",
      :moderator_id => ""
    ))
  end

  it "renders new event form" do
    render

    rendered.should have_selector("form", :action => events_path, :method => "post") do |form|
      form.should have_selector("input#event_title", :name => "event[title]")
      form.should have_selector("input#event_where", :name => "event[where]")
      form.should have_selector("input#event_moderator_id", :name => "event[moderator_id]")
    end
  end
end
