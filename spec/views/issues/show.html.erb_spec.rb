require 'spec_helper'

describe "issues/show.html.erb" do
  before(:each) do
    @issue = assign(:issue, stub_model(Issue,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Description".to_s)
  end
end
