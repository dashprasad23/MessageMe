import consumer from "channels/consumer"

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const chatBoxBody = document.querySelector(".chat-box-body");
    const messageContainer = document.getElementById('message-list-container');
    const messageInputBox = document.getElementById('message_body')
    messageContainer.insertAdjacentHTML('beforeend', data.mod_message);
    chatBoxBody.scrollTop = chatBoxBody.scrollHeight;
    messageInputBox.value = "";
  }
});
