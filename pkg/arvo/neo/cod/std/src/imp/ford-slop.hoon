=> 
|%
++  card  card:neo
++  build
  |=  =bowl:neo
  ^-  pail:neo
  =+  a=(get-output:ford:neo bowl %a)
  ?:  =(p.a %tang)
    a
  =+  b=(get-output:ford:neo bowl %b)
  ?:  =(p.b %tang)
    b
  vase/(slop q.a q.b)
--
^-  kook:neo
|%
++  state  or/~[pro/%vase pro/%tang]
++  poke   (sy %rely %ford-in ~)
++  kids  ~
++  deps
  %-  ~(gas by *deps:neo)
  :~  a/dep:ford:neo
      b/dep:ford:neo
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    `(build bowl)
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    `(build bowl)
  --
--
