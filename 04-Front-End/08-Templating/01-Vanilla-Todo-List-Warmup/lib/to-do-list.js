const todos = [
  { title: "Code a to-do list", done: false },
  { title: "Eat breakfast", done: true },
  { title: "Do some exercise", done: false },
  { title: "Water the plants", done: true }
];

// To-do item HTML 👇

const todosContainer = document.querySelector("#todosContainer");
const checkedTodo = `<div class="shadow-sm rounded px-4 py-3 mb-2 border d-flex">
<input class="d-flex form-check-input me-1" type="checkbox" checked >
<div>Replace with to-do title</div>
</div>`;
const checkedNot = `<div class="shadow-sm rounded px-4 py-3 mb-2 border d-flex">
<input class="d-flex form-check-input me-1" type="checkbox" >
<div>Replace with to-do title</div>
</div>`;


const insertTodos = () => {
  const container = document.querySelector("#todosContainer");
  todos.forEach((todo) => {
    const todoHTML = `<div class="shadow-sm rounded px-4 py-3 mb-2 border d-flex">
    <input class="d-flex form-check-input me-1" type="checkbox" ${todo.done ? "checked" : ""}>
    <div>${todo.title}</div>
    </div>`;
    container.insertAdjacentHTML("beforeend", todoHTML);
  });
};
insertTodos();


// TODO: Dynamically generate a list of to-dos based on `todos` array, and display them
// TODO: Iterate over our todos
// TODO: Check each todo, if done is false or true
//  TODO: if done ===false,checkedNot else checked todo
