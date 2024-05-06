@react.component
let make = () => {
  let todoList = Todo.useTodoList()

  switch todoList {
  | None => React.null
  | Some(list) =>
    <ul className="divide-y divide-gray-300 max-h-80 overflow-auto">
      {Belt.Array.map(list, todo => {
        <TodoItem key={Belt.Int.toString(todo.id)} completed={todo.completed} title={todo.title} />
      })->React.array}
    </ul>
  }
}
