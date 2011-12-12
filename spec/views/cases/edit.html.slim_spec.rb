require 'spec_helper'

describe "cases/edit.html.erb" do
  before(:each) do
    @case = assign(:case, FactoryGirl.build(:case))
  end

  it "renders the edit case form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cases_path(@case), :method => "post" do
      assert_select "input#case_cpl_number", :name => "case[cpl_number]"
      assert_select "input#case_block_number", :name => "case[block_number]"
      assert_select "input#case_patient_last_name", :name => "case[patient_last_name]"
      assert_select "input#case_validation", :name => "case[validation]"
    end
  end
end
