=> 
|%
++  card  card:neo
--
^-  kook:neo
|%
++  poke    (sy %ford-in %rely ~)
++  state   or/~[pro/%vase pro/%tang]
++  kids  ~
++  deps
  %-  ~(gas by *deps:neo)
  :~  src/dep:ford:neo
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    `(get-output:ford:neo bowl %src)
  ++  init
    |=  vax=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    `(get-output:ford:neo bowl %src)
  --
--
