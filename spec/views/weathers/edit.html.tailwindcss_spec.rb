require 'rails_helper'

RSpec.describe "weathers/edit", type: :view do
  let(:weather) {
    Weather.create!(
      location: "MyString",
      data: "MyText"
    )
  }

  before(:each) do
    assign(:weather, weather)
  end

  it "renders the edit weather form" do
    render

    assert_select "form[action=?][method=?]", weather_path(weather), "post" do

      assert_select "input[name=?]", "weather[location]"

      assert_select "textarea[name=?]", "weather[data]"
    end
  end
end
