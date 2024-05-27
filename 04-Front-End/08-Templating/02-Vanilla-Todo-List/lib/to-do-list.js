const todos = [
  { title: "Code a to-do list", done: false },
  { title: "Eat breakfast", done: true },
  { title: "Do some exercise", done: false },
  { title: "Water the plants", done: true }
];

// TODO: Use the template in the `index.html` to dynamically generate a list based on `todos` array

const template = document.querySelector("#toDoTemplate");
// To-do item HTML :point_down:
// <div class="shadow-sm rounded px-4 py-3 mb-2 border d-flex">
//   <input class="d-flex form-check-input me-1" type="checkbox">
//   <div>Replace with to-do title</div>
// </div>
todos.forEach((todo) => {
  const clone = template.content.cloneNode(true);
  clone.querySelector("#title").innerHTML = todo.title;
  clone.querySelector("[type=checkbox]").checked = todo.done;
  document.querySelector("#todosContainer").appendChild(clone);
});
