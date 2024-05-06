@react.component
let make = (~completed: bool, ~title: string) => {
  <li className="flex items-center justify-between py-2">
    <div className="flex items-center">
      <input type_="checkbox" className="mr-2" checked={completed} />
      <span className="text-gray-800"> {React.string(title)} </span>
    </div>
    <button className="text-red-500 focus:outline-none hover:bg-red-200 rounded-full px-3 py-1">
      {"Delete"->React.string}
    </button>
  </li>
}
