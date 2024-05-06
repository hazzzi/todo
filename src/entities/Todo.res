type response
@val external fetch: string => promise<response> = "fetch"
@send external json: response => promise<'a> = "json"

type todo = {userId: int, id: int, title: string, completed: bool}

type todoList = array<todo>

/*
type account =
  | None
  | Instagram(string)
  | Facebook(string, int)

let my = Instragram('jason')
let you = Facebook('kkk', 999);

// typescript
type Account
= { _tag: 'None' }
| { _tag: 'Instagram', data: [string] }
| { _tag: 'Facebook', data: [string, number] }

const my = { _tag: 'Instagram', data: ['jason'] }

const none: Account = { _tag: 'None' };
const instagram: (name: string): Account = (name) => { _tag: 'Instragram', data: name }

const my = instaram('jason');

if (my._tag === ???) {
  ....
}
*/


let makeRequest = async url => {
  let response = await fetch(url)
  let json = await response->json
  Js.log(json)
  json
}

external parseToTodoList: ('a) => todoList = "%identity"

let useTodoList = () => {
  let (todoList, setTodoList) = React.useState(_ => None)

  React.useEffect1(_ => {
    let fetchTodoList = async () => {
      let response = await makeRequest("https://jsonplaceholder.typicode.com/todos?userId=1")
      setTodoList(_ => Some(response->parseToTodoList))
    }

    let _ = fetchTodoList()

    None
  }, [])

  todoList
}
