require 'spec_helper'

describe "people/index.html.erb" do
  before(:each) do
    assign(:people, [
      stub_model(Person,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email_address => "Email",
        :validated => true,
        :admin => false
      ),
      stub_model(Person,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email_address => "Email",
        :validated => true,
        :admin => false
      )
    ])
  end

  it "renders a list of people" do
    render
    rendered.should have_selector("tr>td", :content => "First Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Last Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Email".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => true.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => false.to_s, :count => 2)
  end
end
