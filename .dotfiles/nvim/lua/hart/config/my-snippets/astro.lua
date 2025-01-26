local ls = require "luasnip"

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("astro", {
  s("style", {
    t("<style>"),
    i(1),
    t("</style>"),
  }),
  s("a", {
    t("<a href=\""),
    i(1),
    t("\">"),
    i(2),
    t("</a>"),
  }),
  s("script", {
    t("<script>"),
    i(1),
    t("</script>"),
  }),
  s("li", {
    t("<li>"),
    i(1),
    t("</li>"),
  }),
  s("ol", {
    t("<ol>"),
    i(1),
    t("</ol>"),
  }),
  s("ul", {
    t("<ul>"),
    i(1),
    t("</ul>"),
  }),
  s("button", {
    t("<button>"),
    i(1),
    t("</button>"),
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
