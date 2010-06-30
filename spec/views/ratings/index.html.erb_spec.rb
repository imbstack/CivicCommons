require 'spec_helper'

describe "ratings/index.html.erb" do
  before(:each) do
    assign(:ratings, [
      stub_model(Rating,
        :person_id => 1,
        :parent_type => 1,
        :parent_id => 1,
        :rating => 1
      ),
      stub_model(Rating,
        :person_id => 1,
        :parent_type => 1,
        :parent_id => 1,
        :rating => 1
      )
    ])
  end

  it "renders a list of ratings" do
    render
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
  end
end
