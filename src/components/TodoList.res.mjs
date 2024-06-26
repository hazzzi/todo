// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Todo from "../entities/Todo.res.mjs";
import * as TodoItem from "./TodoItem.res.mjs";
import * as Belt_Array from "rescript/lib/es6/belt_Array.js";
import * as JsxRuntime from "react/jsx-runtime";

function TodoList(props) {
  var todoList = Todo.useTodoList();
  if (todoList !== undefined) {
    return JsxRuntime.jsx("ul", {
                children: Belt_Array.map(todoList, (function (todo) {
                        return JsxRuntime.jsx(TodoItem.make, {
                                    completed: todo.completed,
                                    title: todo.title
                                  }, String(todo.id));
                      })),
                className: "divide-y divide-gray-300 max-h-80 overflow-auto"
              });
  } else {
    return null;
  }
}

var make = TodoList;

export {
  make ,
}
/* Todo Not a pure module */
