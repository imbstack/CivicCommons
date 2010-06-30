require 'spec_helper'

describe "answers/new.html.erb" do
  before(:each) do
    assign(:answer, stub_model(Answer,
      :new_record? => true,
      :owner => 1,
      :question_id => 1,
      :content => "MyText"
    ))
  end

  it "renders new answer form" do
    render

    rendered.should have_selector("form", :action => answers_path, :method => "post") do |form|
      form.should have_selector("input#answer_owner", :name => "answer[owner]")
      form.should have_selector("input#answer_question_id", :name => "answer[question_id]")
      form.should have_selector("textarea#answer_content", :name => "answer[content]")
    end
  end
end
