require 'spec_helper'

describe "people/show.html.erb" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :first_name => "First Name",
      :last_name => "Last Name",
      :email_address => "Email",
      :validated => true,
      :admin => false
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("First Name")
    rendered.should contain("Last Name")
    rendered.should contain("Email")
    rendered.should contain("true")
    rendered.should contain("false")
  end
end
