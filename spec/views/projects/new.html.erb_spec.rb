require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :name => "MyString",
      :about => "MyText",
      :dev_date => "MyString",
      :repo => "MyString",
      :status => "MyText"
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "textarea#project_about[name=?]", "project[about]"

      assert_select "input#project_dev_date[name=?]", "project[dev_date]"

      assert_select "input#project_repo[name=?]", "project[repo]"

      assert_select "textarea#project_status[name=?]", "project[status]"
    end
  end
end
