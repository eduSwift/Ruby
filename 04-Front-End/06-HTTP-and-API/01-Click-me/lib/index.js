const displayAlertOnButtonClick = () => {
  const button = document.querySelector('button');
  button.addEventListener('click', (event) => {
    alert("Thank you!");
  });
};

displayAlertOnButtonClick(); // Do not remove!

// TODO: Select the big green button
// TODO: Bind the `click` event to the button
// TODO: On click, display `Thank you!` in a JavaScript alert!
