require 'spec_helper'

describe "ratings/new.html.erb" do
  before(:each) do
    assign(:rating, stub_model(Rating,
      :new_record? => true,
      :person_id => 1,
      :parent_type => 1,
      :parent_id => 1,
      :rating => 1
    ))
  end

  it "renders new rating form" do
    render

    rendered.should have_selector("form", :action => ratings_path, :method => "post") do |form|
      form.should have_selector("input#rating_person_id", :name => "rating[person_id]")
      form.should have_selector("input#rating_parent_type", :name => "rating[parent_type]")
      form.should have_selector("input#rating_parent_id", :name => "rating[parent_id]")
      form.should have_selector("input#rating_rating", :name => "rating[rating]")
    end
  end
end
