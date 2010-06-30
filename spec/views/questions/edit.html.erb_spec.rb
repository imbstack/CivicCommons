require 'spec_helper'

describe "questions/edit.html.erb" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :new_record? => false,
      :datetime => "",
      :owner => "",
      :askee => "",
      :issue_id => "",
      :content => "MyText"
    ))
  end

  it "renders the edit question form" do
    render

    rendered.should have_selector("form", :action => question_path(@question), :method => "post") do |form|
      form.should have_selector("input#question_datetime", :name => "question[datetime]")
      form.should have_selector("input#question_owner", :name => "question[owner]")
      form.should have_selector("input#question_askee", :name => "question[askee]")
      form.should have_selector("input#question_issue_id", :name => "question[issue_id]")
      form.should have_selector("textarea#question_content", :name => "question[content]")
    end
  end
end
