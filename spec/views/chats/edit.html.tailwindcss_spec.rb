require 'rails_helper'

RSpec.describe "chats/edit", type: :view do
  let(:chat) {
    Chat.create!(
      question: "MyString",
      response: "MyText",
      weather: nil
    )
  }

  before(:each) do
    assign(:chat, chat)
  end

  it "renders the edit chat form" do
    render

    assert_select "form[action=?][method=?]", chat_path(chat), "post" do

      assert_select "input[name=?]", "chat[question]"

      assert_select "textarea[name=?]", "chat[response]"

      assert_select "input[name=?]", "chat[weather_id]"
    end
  end
end
