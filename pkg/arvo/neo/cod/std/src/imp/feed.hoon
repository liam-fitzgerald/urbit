/@  diff=feed-diff
|%
++  state  pro/%sig
++  poke   (sy %feed-diff ~)
++  kids   
  :+  ~  %y
  %-  ~(gas by *lads:neo)
  :~  [[&/%items |/%da |] pro/%feed-item (sy %feed-item-diff ~)]
  ==
++  deps
  %-  ~(gas by *deps:neo)
  :~  acl/[req=& [pro/%circle ~] ~]
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:t =pail:t]
  ++  poke
    |=  [=stud:t vax=vase]
    ^-  (quip card:neo pail:t)
    ?>  ?=(%feed-diff stud)
    =+  !<(=diff vax)
    :_  pail
    ?-    -.diff
        %add  
      [(snoc here.bowl da/now.bowl) %make p.diff]~
    ::
        %del
      %+  turn  ~(tap in p.diff)
      |=  =@da
      [(snoc here.bowl da/da) %tomb ~]
    ==
  ++  init
    |=  pal=(unit pail:t)
    `sig/!>(~)
  --
--
