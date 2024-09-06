/@  pulse
/@  pulse-diff
::  sender ship namesapce (~bus)
::  /messages/1
::  host ship namespace
::  /chat/foo
::  /chat/foo/messages/1 :: symlink to /+bus/messages/1
::
::  /~zod/chat/foo/messages/1 <- []
::  /~zod/chat/foo/messages/1 <-
::  /~zod/chat/foo/messages/1 <-
::
::  /~bus/subs/foo -> /~zod/chat/foo
::
::  [/~bus/subs/foo/messages/1 %make ]
::  possibly optimisticaly update, then forward note to foreign ship
::
::  %make
:: ^-  kook:neo
=>
|%
++  behn
  |=  our=@p
  ^-  pith:t
  [p/our #/$/behn]
++  wait
  |=  [=bowl:neo sta=pulse]
  ^-  card:neo
  [(behn our.bowl) %poke %behn-req !>([%wait (add now.bowl freq.sta)])]
++  rest
  |=  [=bowl:neo sta=pulse]
  ^-  card:neo
  [(behn our.bowl) %poke %behn-req !>([%rest (add [last freq]:sta)])]
::
--
|%
++  state  pro/%pulse
++  poke   (sy %pulse-diff ~)
  
++  kids   *kids:neo
++  deps   *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:t sted=stud:t state-vase=vase]
  +*  sta  !<(pulse state-vase)
  ++  poke
    |=  [=stud:t =vase]
    ^-  (quip card:neo pail:t)
    =/  s  sta
    |^  ^-  (quip card:neo pail:t)
    ?+    stud  !!
        %behn-res
      =.  count.s  +(count.s)
      =/  next  (wait bowl s)  
      =.  last.s  now.bowl
      [next^~ pulse/!>(s)]
    ::
        %pulse-diff
      =+  !<(diff=pulse-diff vase)
      ?-  -.diff
          %reset  `pulse/!>(s(count 0))
          %freq
        =/  stop  (rest bowl sta)
        =.  freq.s  freq.diff
        =.  last.s  now.bowl
        [stop^~ pulse/!>(s)]
      ==
    ==
  --
  ::
  ++  init
    |=  old=(unit pail:t)
    ?>  ?=(^ old)
    =+  !<(sta=pulse q.u.old)
    =.  last.sta  now.bowl
    [(wait bowl sta)^~ pulse/!>(sta)]
  ::
  --
--
