// Generated by ReScript, PLEASE EDIT WITH CARE

import * as TodoList from "./components/TodoList.res.mjs";
import * as JsxRuntime from "react/jsx-runtime";

function App(props) {
  return JsxRuntime.jsx("main", {
              children: JsxRuntime.jsxs("section", {
                    children: [
                      JsxRuntime.jsx("header", {
                            children: JsxRuntime.jsx("h1", {
                                  children: "ReScript TODO APP",
                                  className: "text-2xl font-semibold text-gray-800 text-center"
                                }),
                            className: "mb-4"
                          }),
                      JsxRuntime.jsxs("form", {
                            children: [
                              JsxRuntime.jsx("div", {
                                    children: JsxRuntime.jsx("input", {
                                          className: "w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:border-blue-500",
                                          placeholder: "Add a new todo",
                                          type: "text"
                                        }),
                                    className: "mb-4"
                                  }),
                              JsxRuntime.jsx("button", {
                                    children: "Add Todo",
                                    className: "w-full bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 px-4 rounded-md mb-4 focus:outline-none focus:shadow-outline"
                                  })
                            ]
                          }),
                      JsxRuntime.jsx(TodoList.make, {})
                    ],
                    className: "max-w-md w-full p-6 bg-white rounded-lg shadow-md"
                  }),
              className: "flex flex-col justify-center items-center h-screen bg-gray-100"
            });
}

var make = App;

export {
  make ,
}
/* TodoList Not a pure module */
