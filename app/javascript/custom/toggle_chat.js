const initToggleChatEventListener = () => {
  const showHideChatButton = document.getElementById('toggle-chat-button');
  const chat = document.getElementById('path_show_chatroom');
  const showChatButton = document.getElementById('btn-ask');
  const hideChatButton = document.getElementById('btn-hide');

  if (showHideChatButton && chat) {
    showHideChatButton.addEventListener('click', (event) => {
      console.log('event fired!');
      event.preventDefault();
      chat.classList.toggle('invisible');
      showChatButton.classList.toggle('invisible');
      hideChatButton.classList.toggle('invisible');

    });
  }
}

export { initToggleChatEventListener };
