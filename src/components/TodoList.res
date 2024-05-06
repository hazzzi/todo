@react.component
let make = () => {
  let todoList = Todo.useTodoList()

  switch todoList {
  | None => React.null
  | Some(list) =>
    <ul className="divide-y divide-gray-300 max-h-80 overflow-auto">
      {Belt.Array.map(list, todo => {
        <li className="flex items-center justify-between py-2">
          <div className="flex items-center">
            <input type_="checkbox" className="mr-2" checked={todo.completed} />
            <span className="text-gray-800"> {React.string(todo.title)} </span>
          </div>
          <button
            className="text-red-500 focus:outline-none hover:bg-red-200 rounded-full px-3 py-1">
            {"Delete"->React.string}
          </button>
        </li>
      })->React.array}
    </ul>
  }
}
