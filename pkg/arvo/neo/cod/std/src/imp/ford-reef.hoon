=> 
|%
++  card  card:neo
--
^-  kook:neo
|%
++  state  pro/%vase
++  poke   *(set stud:t)
++  kids  ~
++  deps  ~
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:t =pail:t]
  +*  sta  !<([cache=(unit vase) ~] state-vase)
  ++  poke
    |=  pail:t  
    ^-  (quip card:neo pail:t)
    `pail
  ::
  ++  init
    |=  old=(unit pail:t)
    ^-  (quip card:neo pail:t)
    `(need old)
  --
--
