=> 
|%
++  card  card:neo
++  get-face
  |=  =bowl:neo
  ^-  @tas
  =/  =lore:neo  q:(~(got by deps.bowl) %face)
  =/  =idea:neo  ~(rot of:neo lore)
  !<(@tas q.pail.idea)
::
++  build
  |=  =bowl:neo
  ^-  pail:t
  =+  sut=(get-output:ford:neo bowl %sut)
  ?:  =(%tang p.sut)
    sut
  =/  face=@tas  (get-face bowl)
  [p.sut q.sut(p [%face (get-face bowl) p.q.sut])]

+$  state  [cache=(unit vase) ~]
--
^-  kook:neo
|%
++  poke    (sy %rely %ford-in ~)
++  state   or/~[pro/%vase pro/%tang]
++  kids  ~
++  deps
  %-  ~(gas by *deps:neo)
  :~  sut/dep:ford:neo
      face/[& [pro/%term ~] ~]
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:t =pail:t]
  ++  poke
    |=  [=stud:t vax=vase]
    ^-  (quip card:neo pail:t)
    `(build bowl)
  ::
  ++  init
    |=  pal=(unit pail:t)
    ^-  (quip card:neo pail:t)
    `(build bowl)
  --
--
