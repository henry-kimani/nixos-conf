local ls = require "luasnip"

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("typescriptreact", {
  s("reactcomponent", {
    t("export default function "),
    i(1),
    t("(){"),
    t("return();"),
    t("}"),
  }),
  s("main", {
    t("<main>"),
    i(1),
    t("</main>"),
  }),
  s("nav", {
    t("<nav>"),
    i(1),
    t("</nav>"),
  }),
  s("div", {
    t("<div>"),
    i(1),
    t("</div>"),
  }),
  s("h1", {
    t("<h1>"),
    i(1),
    t("</h1>"),
  }),
  s("h2", {
    t("<h2>"),
    i(1),
    t("</h2>"),
  }),
  s("h3", {
    t("<h3>"),
    i(1),
    t("</h3>"),
  }),
  s("h4", {
    t("<h4>"),
    i(1),
    t("</h4>"),
  }),
  s("p", {
    t("<p>"),
    i(1),
    t("</p>"),
  }),
})
