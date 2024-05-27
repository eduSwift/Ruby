/* eslint-disable no-multiple-empty-lines */
/* eslint-disable prefer-const */
/* eslint-disable import/extensions */

import runChallenges from "../spec/list_generator_examiner.js";

// TODO: return the proper <li> HTML tag with its content (as a string)
const listItem = (content) => {
  return `<li class="list-group-item">${content}</li>`;
};

// TODO: return the proper <ul> markup (as a string)
const unorderedList = (items) => {
  let lists = [];
  items.forEach((item) => {
    lists += listItem(item);
  });
  return `<ul class="list-group">${lists}</ul>`;
};

// Do not remove these lines:
// TODO: call unorderedList() passing the right element
// TODO: display the list in the browser
if (typeof window === "object") {
  document.addEventListener("DOMContentLoaded", () => {
    const groceries = ['milk', 'butter', 'bread'];
    const list = document.querySelector("#list");
    list.innerHTML = unorderedList(groceries);
  });
}


runChallenges(listItem, unorderedList); // Do not remove.
export { listItem, unorderedList };
