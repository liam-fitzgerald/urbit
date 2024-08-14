=> 
|%
++  card  card:neo
++  build
  |=  =bowl:neo
  ^-  pail:t
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
  |_  [=bowl:neo =aeon:t =pail:t]
  ++  poke
    |=  [=stud:t vax=vase]
    ^-  (quip card:neo pail:t)
    `(build bowl)
  ++  init
    |=  pal=(unit pail:t)
    ^-  (quip card:neo pail:t)
    `(build bowl)
  --
--
