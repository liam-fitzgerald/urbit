/@  diff=circles-diff
|%
++  state  pro/%sig
++  poke   (sy %circles-diff ~)
++  kids   
  :+  ~  %y
  %-  ~(gas by *lads:neo)
  :~  [[%|^%tas |] [pro/%sig (sy %circle-diff ~)]]
  ==
++  deps   *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:t =pail:t]
  ++  poke
    |=  [=stud:t vax=vase]
    ^-  (quip card:neo pail:t)
    ?>  ?=(%circles-diff -.stud)
    =+  !<(=diff vax)
    :_  pail
    ?-    -.diff
        %add  
      %+  turn  ~(tap by p.diff)
      |=  [=term =made:neo]
      [(snoc here.bowl term) %make made]
    ::
        %del
      %+  turn  ~(tap in p.diff)
      |=  =term
      [(snoc here.bowl term) %tomb ~]
    ==
  ++  init
    |=  vas=(unit pail:t)
    ^-  (quip card:neo pail:t)
    `sig/!>(~)
  --
--
