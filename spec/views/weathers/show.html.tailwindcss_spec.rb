require 'rails_helper'

RSpec.describe "weathers/show", type: :view do
  before(:each) do
    assign(:weather, Weather.create!(
      location: "Location",
      data: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/MyText/)
  end
end
