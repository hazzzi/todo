type response
@val external fetch: string => promise<response> = "fetch"
@send external json: response => promise<'a> = "json"

type todo = {userId: int, id: int, title: string, completed: bool}

type todoList = Array(todo)

let makeRequest = async url => {
  let response = await fetch(url)
  let json = await response->json
  Js.log(json)
  json
}

let useTodoList = () => {
  let (todoList, setTodoList) = React.useState(_ => None)

  React.useEffect1(_ => {
    let fetchTodoList = async () => {
      let response = await makeRequest("https://jsonplaceholder.typicode.com/todos?userId=1")
      setTodoList(_ => Some(response))
    }

    let _ = fetchTodoList()

    None
  }, [])

  todoList
}
