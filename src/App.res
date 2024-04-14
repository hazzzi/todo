@react.component
let make = () => {
  <main className="flex flex-col justify-center items-center h-screen bg-gray-100">
    <section className="max-w-md w-full p-6 bg-white rounded-lg shadow-md">
      <header className="mb-4">
        <h1 className="text-2xl font-semibold text-gray-800 text-center">
          {"ReScript TODO APP"->React.string}
        </h1>
      </header>
      <form>
        <div className="mb-4">
          <input
            type_="text"
            className="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:border-blue-500"
            placeholder="Add a new todo"
          />
        </div>
        <button
          className="w-full bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 px-4 rounded-md mb-4 focus:outline-none focus:shadow-outline">
          {"Add Todo"->React.string}
        </button>
      </form>
      <TodoList />
    </section>
  </main>
}
