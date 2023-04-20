require 'rails_helper'

RSpec.describe "weathers/new", type: :view do
  before(:each) do
    assign(:weather, Weather.new(
      location: "MyString",
      data: "MyText"
    ))
  end

  it "renders new weather form" do
    render

    assert_select "form[action=?][method=?]", weathers_path, "post" do

      assert_select "input[name=?]", "weather[location]"

      assert_select "textarea[name=?]", "weather[data]"
    end
  end
end
