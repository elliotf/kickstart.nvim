local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local extras = require("luasnip.extras")
local fmt = require("luasnip.extras.fmt").fmt
local rep = extras.rep

return {
  s("cl", fmt("echo(\"{}: \", {});", { i(1), rep(1), })),
  s("cub", fmt("cube([0,0,0],center=true);", { })),
  s("cyl", fmt("cyl(r={},h={},center=true);", { i(1), i(0) })),
  s("forx", fmt([[for(x=[left,right]) {{
  translate([x*({}),0,0]) {{
    {}
  }}
}}]], { i(1), i(0) })),
  s("forxy", fmt([[for(x=[left,right],y=[front,rear]) {{
  translate([x*({}),y*({}),0]) {{
    {}
  }}
}}]], { i(1), i(2), i(0) })),
  s("fory", fmt([[for(y=[front,rear]) {{
  translate([0,y*({}),0]) {{
    {}
  }}
}}]], { i(1), i(0) })),
  s("forz", fmt([[for(z=[top,bottom]) {{
  translate([0,0,z*({})]) {{
    {}
  }}
}}]], { i(1), i(0) })),
  s("ho", fmt("hole({},{});", { i(1), i(0) })),
  s("hu", fmt([[hull() {{
    {}
}}]], { i(0) })),
  s("diff", fmt([[difference() {{
  {}
}}]], { i(0) })),
  s("mod", fmt([[module {}() {{
  {}
}}]], { i(1), i(0) })),
  s("rot", fmt([[rotate([0,0,0]) {{
  {}
}}]], { i(0) })),
  s("trans", fmt([[translate([0,0,0]) {{
  {}
}}]], { i(0) })),
  s("mmod", fmt([[module {}() {{
  module body() {{
  }}

  module holes() {{
  }}

  difference() {{
    body();
    holes();
  }}
}}]], { i(0) })),
}
