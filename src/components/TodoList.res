type todo = {userId: int, id: int, title: string, completed: bool}

let sampleData = [
  {
    userId: 1,
    id: 1,
    title: "delectus aut autem",
    completed: false,
  },
  {
    userId: 1,
    id: 2,
    title: "quis ut nam facilis et officia qui",
    completed: false,
  },
  {
    userId: 1,
    id: 3,
    title: "fugiat veniam minus",
    completed: false,
  },
  {
    userId: 1,
    id: 4,
    title: "et porro tempora",
    completed: true,
  },
]

@react.component
let make = () => {
  <ul className="divide-y divide-gray-300">
    {Belt.Array.map(sampleData, todo => {
      <li key={Belt.Int.toString(todo.id)} className="flex items-center justify-between py-2">
        <div className="flex items-center">
          <input type_="checkbox" className="mr-2" checked={todo.completed} />
          <span className="text-gray-800"> {React.string(todo.title)} </span>
        </div>
        <button className="text-red-500 focus:outline-none hover:bg-red-200 rounded-full px-3 py-1">
          {"Delete"->React.string}
        </button>
      </li>
    })->React.array}
  </ul>
}
