/* eslint-disable no-multiple-empty-lines */
/* eslint-disable prefer-const */
/* eslint-disable import/extensions */

import runChallenges from "../spec/inbox_examiner.js";

const hasNewMessage = () => Math.random() < 0.2;
// TODO: return true with a probability of 20%.

const newMessage = () => {
  // TODO: return a random message as an object with two keys, subject and sender
  const names = ['Arnold Schwarzenegger', 'Mario Bros', 'Garibaldi'];
  const subjs = ['I\'m Back', 'Mariooooo', 'Egli fu'];
  const name = names[Math.floor(Math.random() * names.length)];
  const subj = subjs[Math.floor(Math.random() * subjs.length)];
  return {
    sender: name,
    subject: subj
  };
};

const appendMessageToDom = (message) => {
  // TODO: append the given message to the DOM (as a new row of `#inbox`)
  const emailHtml = `<div class='row message unread'><div class='col-xs-3'>${message.sender}</div><div class='col-xs-9'>${message.subject}</div></div>`;
  const inbox = document.querySelector("#inbox");
  inbox.insertAdjacentHTML("afterbegin", emailHtml);
};


const refresh = () => {
  // TODO: Implement the global refresh logic. If there is a new message,
  //       append it to the DOM. Update the unread counter in title as well.
};

// Do not remove these lines.
if (typeof window === "object") {
  document.addEventListener("DOMContentLoaded", () => {
    setInterval(refresh, 1000); // Every 1 second, the `refresh` function is called.
  });
}

// Checking exercise answers. DO NOT MODIFY THIS LINE.
runChallenges(hasNewMessage, newMessage);
export { hasNewMessage, newMessage };
