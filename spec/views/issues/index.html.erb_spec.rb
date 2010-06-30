require 'spec_helper'

describe "issues/index.html.erb" do
  before(:each) do
    assign(:issues, [
      stub_model(Issue,
        :description => "Description"
      ),
      stub_model(Issue,
        :description => "Description"
      )
    ])
  end

  it "renders a list of issues" do
    render
    rendered.should have_selector("tr>td", :content => "Description".to_s, :count => 2)
  end
end
