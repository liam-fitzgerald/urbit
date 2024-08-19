/@  tweet
/@  tweet-diff
|%
++  state  pro/%tweet
++  poke
  %-  ~(gas in *(set stud:t))
  :~  %tweet-diff
  ==
++  kids   *kids:neo
++  deps   *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:t stud:t state-vase=vase]
  +*  sta  !<(tweet state-vase)  
  ++  poke
    |=  [=stud:t vax=vase]
    ^-  (quip card:neo pail:t)
    =/  sta  sta
    ?>  ?=(%tweet-diff stud)
    =+  !<(diff=tweet-diff vax)
    :-  ~
    :-  %tweet
    !>  ^-  tweet
    ?-  -.diff
      %add-fave  sta(favs (~(put in favs.sta) ship.src.bowl))
      %del-fave  sta(favs (~(del in favs.sta) ship.src.bowl))
    ==
  ::
  ++  init
    |=  pal=(unit pail:t)
    ^-  (quip card:neo pail:t)
    `(need pal)
  --
--
