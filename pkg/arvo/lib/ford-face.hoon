/-  neo
=> 
|%
++  card  card:neo
++  get-face
  |=  =bowl:neo
  ^-  @tas
  !<(@tas q.pail.q:(~(got by deps.bowl) %face))
++  build
  |=  =bowl:neo
  ^-  pail:neo
  =+  sut=(get-output:ford:neo bowl %sut)
  ?:  =(%tang p.sut)
    sut
  =/  face=@tas  (get-face bowl)
  [p.sut q.sut(p [%face (get-face bowl) p.q.sut])]
+$  state  [cache=(unit vase) ~]
--
^-  firm:neo
|%
++  poke    (sy %rely %ford-in ~)
++  state   or/~[pro/%vase pro/%tang]
++  kids  ~
++  deps
  %-  ~(gas by *deps:neo)
  :~  sut/dep:ford:neo
      face/[& [%term %sig] ~]
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  +*  sta  !<(^state state-vase)
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card vase)
    ?>  ?=(?(%rely %ford-in) stud)
    =/  sta  sta
    =.  cache.sta  (build bowl)
    `!>(sta)
  ::
  ++  init
    |=  vax=(unit vase)
    ^-  (quip card:neo vase)
    =/  sta  *^state
    =.  cache.sta  (build bowl)
    `!>(sta)
  --
--
