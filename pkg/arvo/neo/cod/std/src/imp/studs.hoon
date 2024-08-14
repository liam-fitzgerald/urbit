|%
++  state  pro/%studs
++  kids   ~
++  poke   (sy %stud ~)
++  deps   *(map term fief:neo)
++  form
  |_  [=bowl:neo =aeon:t =pail:t]
  ++  init
    |=  pal=(unit pail:t)
    ^-  (quip card:neo pail:t)
    `(need pal)
  ++  poke
    |=  [=stud:t vax=vase]
    ^-  (quip card:neo pail:t)
    ?>  =(stud %stud)
    =+  !<(pok=stud:t vax)
    =+  !<(sus=(set stud:t) q.pail)
    `studs/!>((~(put in sus) pok))
  --
--
