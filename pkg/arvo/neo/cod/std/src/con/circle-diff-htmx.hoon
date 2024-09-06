/@  circle-diff
:-  [%circle-diff %$ %htmx]
|=  circle-diff
|=  =bowl:neo
;div.hidden
  =hx-get  "/neo/hawk{(en-tape:pith:t here.bowl)}"
  =hx-target  "closest .hawk"
  =hx-swap  "innerHTML"
  =hx-trigger  "load"
  ; +++
==
