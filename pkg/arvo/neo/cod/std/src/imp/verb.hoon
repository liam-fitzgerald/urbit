=> 
|%
++  card  card:neo
++  wrap-firm
  |=  vax=vase
  ^-  vase
  =+  !<(inner=kook:neo vax)
  !>  ^-  kook:neo
  |%
  ++  poke  poke:inner
  ++  state  state:inner
  ++  kids  kids:inner
  ++  deps  deps:inner
  ++  form
    ^-  form:neo
    |_  [=bowl:neo =aeon:t =pail:n]
    +*  og   ~(. form:inner [bowl aeon pail])
    ++  poke
      |=  [=stud:t vax=vase]
      ^-  (quip card:neo pail:t)
      %-  (slog leaf/"poke {(en-tape:name:t src.bowl)} -> {<stud>}" ~)
      (poke:og stud vax)
    ++  init
      |=  pal=(unit pail:t)
      ^-  (quip card:neo pail:t)
      %-  (slog leaf/"init {(en-tape:name:t src.bowl)} " ~)
      (init:og pal)
    --
  --
--
^-  kook:neo
|%
++  poke    (sy %ford-in ~)
++  state   pro/%vase
++  kids  ~
++  deps
  %-  ~(gas by *deps:neo)
  :~  src/dep:ford:neo
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:t sted=stud:t state-vase=vase]
  ++  poke
    |=  [=stud:t vax=vase]
    ^-  (quip card:neo pail:t)
    ?>  =(?(%ford-in %rely) stud)
    `vase/(need (bind (get-output:ford:neo bowl %src) wrap-firm))
  ++  init
    |=  pal=(unit pail:t)
    ^-  (quip card:neo pail:t)
    `vase/(need (bind (get-output:ford:neo bowl %src) wrap-firm))
  --
--
