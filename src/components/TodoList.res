@react.component
let make = () => {
  <ul className="divide-y divide-gray-300">
    <li className="flex items-center justify-between py-2">
      <span className="text-gray-800"> {"Todo Item 1"->React.string} </span>
      <button className="text-red-500 focus:outline-none hover:bg-red-200 rounded-full px-3 py-1">
        {"Delete"->React.string}
      </button>
    </li>
    <li className="flex items-center justify-between py-2">
      <span className="text-gray-800"> {"Todo Item 2"->React.string} </span>
      <button className="text-red-500 focus:outline-none hover:bg-red-200 rounded-full px-3 py-1">
        {"Delete"->React.string}
      </button>
    </li>
  </ul>
}
