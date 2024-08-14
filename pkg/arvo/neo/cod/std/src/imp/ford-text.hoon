=> 
|%
++  card  card:neo
++  build
  |=  =bowl:neo
  ^-  vase
  =/  =lore:neo  q:(~(got by deps.bowl) %txt)
  =/  =idea:neo  (~(got of:neo lore) /)
  ?>  =(p.pail.idea %txt)
  q.pail.idea
--
^-  kook:neo
|%
++  poke    (sy %rely %ford-in ~)
++  state   pro/%vase
++  kids    ~
++  deps
  %-  ~(gas by *deps:neo)
  :~  txt/[& [pro/%txt ~] ~]
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:t =pail:t]
  ++  poke
    |=  [=stud:t vax=vase]
    ^-  (quip card:neo pail:t)
    `vase/(build bowl)
  ::
  ++  init
    |=  pal=(unit pail:t)
    ^-  (quip card:neo pail:t)
    `vase/(build bowl)
  --
--
