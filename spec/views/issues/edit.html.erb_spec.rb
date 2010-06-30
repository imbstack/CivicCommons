require 'spec_helper'

describe "issues/edit.html.erb" do
  before(:each) do
    @issue = assign(:issue, stub_model(Issue,
      :new_record? => false,
      :description => "MyString"
    ))
  end

  it "renders the edit issue form" do
    render

    rendered.should have_selector("form", :action => issue_path(@issue), :method => "post") do |form|
      form.should have_selector("input#issue_description", :name => "issue[description]")
    end
  end
end
