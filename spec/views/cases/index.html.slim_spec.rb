require 'spec_helper'

describe "cases/index.html.erb" do
  before(:each) do
    @cases = assign(:cases, FactoryGirl.create_list(:case, 2))
  end

  it "renders a list of cases" do
    render

    @cases.each do |instance|
      assert_select "tr>td", :text => instance.cpl_number
      assert_select "tr>td", :text => instance.block_number
      assert_select "tr>td", :text => instance.patient_last_name
      assert_select "tr>td", :text => instance.validation
    end
  end
end
