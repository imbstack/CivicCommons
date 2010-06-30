require 'spec_helper'

describe "answers/index.html.erb" do
  before(:each) do
    assign(:answers, [
      stub_model(Answer,
        :owner => 1,
        :question_id => 1,
        :content => "MyText"
      ),
      stub_model(Answer,
        :owner => 1,
        :question_id => 1,
        :content => "MyText"
      )
    ])
  end

  it "renders a list of answers" do
    render
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyText".to_s, :count => 2)
  end
end
