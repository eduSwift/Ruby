/* eslint-disable no-multiple-empty-lines */
/* eslint-disable prefer-const */
/* eslint-disable import/extensions */

import runChallenges from "../spec/select_examiner.js";

// TODO 1. Open the `index.html` file and set an id to the France <li>
const franceElement = () => {
  document.querySelector("#country");
  // TODO 2: select the France list item and return
  return document.querySelector("#country");
};
//
// Checking exercise answers. DO NOT MODIFY THIS LINE
runChallenges(franceElement);
