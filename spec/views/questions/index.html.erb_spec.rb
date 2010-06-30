require 'spec_helper'

describe "questions/index.html.erb" do
  before(:each) do
    assign(:questions, [
      stub_model(Question,
        :datetime => "",
        :owner => "",
        :askee => "",
        :issue_id => "",
        :content => "MyText"
      ),
      stub_model(Question,
        :datetime => "",
        :owner => "",
        :askee => "",
        :issue_id => "",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of questions" do
    render
    rendered.should have_selector("tr>td", :content => "".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyText".to_s, :count => 2)
  end
end
