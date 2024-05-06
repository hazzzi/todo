// Generated by ReScript, PLEASE EDIT WITH CARE

import * as JsxRuntime from "react/jsx-runtime";

function TodoItem(props) {
  return JsxRuntime.jsxs("li", {
              children: [
                JsxRuntime.jsxs("div", {
                      children: [
                        JsxRuntime.jsx("input", {
                              className: "mr-2",
                              checked: props.completed,
                              type: "checkbox"
                            }),
                        JsxRuntime.jsx("span", {
                              children: props.title,
                              className: "text-gray-800"
                            })
                      ],
                      className: "flex items-center"
                    }),
                JsxRuntime.jsx("button", {
                      children: "Delete",
                      className: "text-red-500 focus:outline-none hover:bg-red-200 rounded-full px-3 py-1"
                    })
              ],
              className: "flex items-center justify-between py-2"
            });
}

var make = TodoItem;

export {
  make ,
}
/* react/jsx-runtime Not a pure module */
