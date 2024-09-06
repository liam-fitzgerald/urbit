/@  sail
/-  sl=sail
^-  kook:neo
|%
++  state  pro/%sail
++  poke   (sy %sail ~)
++  kids   *kids:neo
++  deps   *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:t sta=pail:t]
  ++  poke
    |=  =pail:t
    ^-  (quip card:neo pail:t)
    ?>  =(p.pail %sail)
    `pail
  ++  init
    |=  pal=(unit pail:t)
    ^-  (quip card:neo pail:t)
    :-  ~
    ?~  pal  sail/!>(*sail)
    ::  non-empty init unit always re-renders the code
    =/  sal  !<(sail q.u.pal)
    :-  %sail
    !>
    sal(result `(render-udon:sl code.sal))
  --
--
