|%
++  state  pro/%studs
++  kids   ~
++  poke   (sy %stud ~)
++  deps   *(map term fief:neo)
++  form
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    `(need pal)
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    ?>  =(stud %stud)
    =+  !<(pok=stud:neo vax)
    =+  !<(sus=(set stud:neo) q.pail)
    `studs/!>((~(put in sus) pok))
  --
--
