require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :name => "Name",
        :about => "MyText",
        :dev_date => "Dev Date",
        :repo => "Repo",
        :status => "MyText"
      ),
      Project.create!(
        :name => "Name",
        :about => "MyText",
        :dev_date => "Dev Date",
        :repo => "Repo",
        :status => "MyText"
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Dev Date".to_s, :count => 2
    assert_select "tr>td", :text => "Repo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
