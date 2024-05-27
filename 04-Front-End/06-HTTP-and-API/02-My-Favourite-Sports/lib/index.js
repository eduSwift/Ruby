// TODO: write your code here!

const buttons = document.querySelectorAll('.clickable');

buttons.forEach((button) => {
  button.addEventListener('click', (event) => {
    button.classList.toggle('active');
  });
});
