shared_examples_for "chat context" do
  let(:primary_user) { create(:user) }
  let(:secondary_user) { create(:user) }
  let(:chat_room) { create(:chat_room, title: "Disneyland Misc") }
  let!(:message_one) { create(:message, chat_room: chat_room, user: primary_user) }
  let!(:message_two) { create(:message, chat_room: chat_room, user: secondary_user) }
end
