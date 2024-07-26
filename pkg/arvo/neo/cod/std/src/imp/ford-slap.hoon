=> 
|%
++  card  card:neo
++  build
  |=  =bowl:neo
  ^-  pail:neo
  =+  sut=(get-output:ford:neo bowl %sut)
  ?:  =(p.sut %tang)
    sut
  =/  hon  (get-hoon bowl)
  ?:  ?=(%| -.hon)
    tang/!>(p.hon)
  =/  res  (mule |.((slap q.sut p.hon)))
  ?:  ?=(%| -.res)
    tang/!>(p.res)
  vase/p.res
++  get-hoon
  |=  =bowl:neo
  ^-  (each hoon tang)
  %-  mule
  |.  ^-  hoon
  =/  [pax=pith:neo =lore:neo]  (~(got by deps.bowl) %hoon)
  =+  !<(src=@t q.pail:~(rot of:neo lore))
  =/  =file:ford:neo
    (scan (trip src) apex:(rein:ford:neo pax))
  hoon.file

+$  state  [cache=(unit vase) ~]
--
^-  kook:neo
|%
++  state  [%or pro/%vase pro/%tang ~]
++  poke   (sy %rely %ford-in ~)
++  kids  ~
++  deps
  %-  ~(gas by *deps:neo)
  :~  sut/dep:ford:neo
      hoon/[& [pro/%hoon ~] ~]
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
