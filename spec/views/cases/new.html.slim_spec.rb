require 'spec_helper'

describe "cases/new.html.erb" do
  before(:each) do
    assign(:case, FactoryGirl.build(:case))
  end

  it "renders new case form" do
    render

    assert_select "form", :action => cases_path, :method => "post" do
      assert_select "input#case_cpl_number", :name => "case[cpl_number]"
      assert_select "input#case_block_number", :name => "case[block_number]"
      assert_select "input#case_patient_last_name", :name => "case[patient_last_name]"
      assert_select "input#case_validation", :name => "case[validation]"
    end
  end
end
