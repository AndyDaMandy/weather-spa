require 'rails_helper'

RSpec.describe "weathers/index", type: :view do
  before(:each) do
    assign(:weathers, [
      Weather.create!(
        location: "Location",
        data: "MyText"
      ),
      Weather.create!(
        location: "Location",
        data: "MyText"
      )
    ])
  end

  it "renders a list of weathers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Location".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
