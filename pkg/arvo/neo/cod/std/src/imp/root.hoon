/@  root
^-  kook:neo
|%
++  state  pro/%root
++  poke  *(set stud:t)
++  kids  *kids:neo
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:t =pail:t]
  ++  init
    |=  old=(unit pail:t)
    ^-  (quip card:neo pail:t)
    :-  ~
    root/!>(~)
  ++  poke
    |=  =pail:t
    ^-  (quip card:neo pail:t)
    !!
  --
--
