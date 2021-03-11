const initToggleChatEventListener = () => {
  const learningGroupButton = document.getElementById('toggle-chat-button');
  const chat = document.getElementById('path_show_chatroom');

  if (learningGroupButton && chat) {
    learningGroupButton.addEventListener('click', (event) => {
      console.log('event fired!');
      event.preventDefault();
      chat.classList.toggle('visible');
      chat.classList.toggle('invisible');
    });
  }
}

export { initToggleChatEventListener };
