local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local extras = require("luasnip.extras")
local fmt = require("luasnip.extras.fmt").fmt
local rep = extras.rep

return {
  s("af", fmt("async function{}({}) {{ {} }}", { i(1), i(2), i(0), })),
  s("ag", fmt("async ({}) => {{ {} }}", { i(1), i(0), })),
  s("grr", fmt("(req, res, next) => {{ {} }}", { i(0), })),
  s("frr", fmt("function(req, res, next) {{ {} }}", { i(0), })),
  s("f", fmt("function{}({}) {{ {} }}", { i(1), i(2), i(0), })),
  s("g", fmt("({}) => {{ {} }}", { i(1), i(0), })),
  s("cl", fmt("console.log(\"{}\", {});", { i(1), rep(1), })),
  s(
    {
      trig = "afta",
      name = "afterAll block",
      dscr = "Inserts an afterAll block",
    },
    {
      t("afterAll(async() => {"),
      i(0),
      t({ "", "});" }),
    }
  ),
  s(
    {
      trig = "aft",
      name = "afterEach block",
      dscr = "Inserts an afterEach block",
    },
    {
      t("afterEach(async() => {"),
      i(0),
      t({ "", "});" }),
    }
  ),
  s(
    {
      trig = "befa",
      name = "beforeAll block",
      dscr = "Inserts a beforeAll block",
    },
    {
      t("beforeAll(async() => {"),
      i(0),
      t({ "", "});" }),
    }
  ),
  s(
    {
      trig = "bef",
      name = "beforeEach block",
      dscr = "Inserts a beforeEach block",
    },
    {
      t("beforeEach(async() => {"),
      i(0),
      t({ "", "});" }),
    }
  ),
  s(
    {
      trig = "cont",
      name = "context block",
      dscr = "Inserts a context block",
    },
    {
      t("context(\""),
      i(1, ""),
      t("\", () => {"),
      i(0),
      t({ "", "});" }),
    }
  ),
  s(
    {
      trig = "desc",
      name = "describe block",
      dscr = "Inserts a describe block",
    },
    {
      t("describe(\""),
      i(1, ""),
      t("\", () => {"),
      i(0),
      t({ "", "});" }),
    }
  ),
  s(
    {
      trig = "it",
      name = "it block",
      dscr = "Inserts an it block",
    },
    {
      t("it(\""),
      i(1, ""),
      t("\", async () => {"),
      i(0),
      t({ "", "});" }),
    }
  ),
}
