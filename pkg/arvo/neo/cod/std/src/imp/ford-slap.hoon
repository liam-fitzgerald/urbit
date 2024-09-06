=> 
|%
++  card  card:neo
++  build
  |=  =bowl:neo
  ^-  pail:t
  =+  sut=(get-output:ford:neo bowl %sut)
  ?:  =(p.sut %tang)
    sut
  =/  hon  (get-hoon bowl)
  ?:  ?=(%| -.hon)
    tang/!>(p.hon)
  =>  [sut=sut hon=hon ..zuse]
  ~>  %memo./ford/slap
  =/  res  (mule |.((slap q.sut p.hon)))
  ?:  ?=(%| -.res)
    tang/!>(p.res)
  vase/p.res
++  get-hoon
  |=  =bowl:neo
  ^-  (each hoon tang)
  %-  mule
  |.  ^-  hoon
  =/  [pax=pith:t =lore:neo]  (~(got by deps.bowl) %hoon)
  =+  !<(src=@t q.pail:~(rot of:neo lore))
  =>  [src=src neo=neo pax=pax ..zuse]
  ~>  %memo./ford/slap/parse
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
