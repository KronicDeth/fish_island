require 'spec_helper'

describe "cases/show.html.erb" do
  before(:each) do
    @case = assign(:case, FactoryGirl.create(:case))
  end

  it "renders attributes in dl" do
    render

    rendered.should have_css('dl')
  end
end
