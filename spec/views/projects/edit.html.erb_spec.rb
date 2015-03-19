require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :name => "MyString",
      :about => "MyText",
      :dev_date => "MyString",
      :repo => "MyString",
      :status => "MyText"
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "textarea#project_about[name=?]", "project[about]"

      assert_select "input#project_dev_date[name=?]", "project[dev_date]"

      assert_select "input#project_repo[name=?]", "project[repo]"

      assert_select "textarea#project_status[name=?]", "project[status]"
    end
  end
end
