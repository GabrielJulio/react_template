import React from "react"
import ReactDom from "react-dom"
import Router from "@/presentation/components/router/router"
import "@/presentation/styles/global.scss"

ReactDom.render(
  <Router />,
  document.getElementById("main")
)
