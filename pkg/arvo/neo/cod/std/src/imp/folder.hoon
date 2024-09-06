/@  folder
/@  folder-diff
/@  todos
=>
  |%
  ++  default-pails
    %-  malt
    ^-  (list [stud:t pail:t])
    :~
      [%iframe iframe/!>('')]
      [%hoon hoon/!>('~')]
      [%todos todos/!>(*todos)] 
      [%txt txt/!>('')]
    ==
  --
^-  kook:neo
|%
++  state  pro/%folder
++  poke  (sy %folder-diff ~)
++  kids
  :-  ~
  :-  %y
  ^-  (map pish:neo lash:neo)
  %-  malt
  :~
    :-  [|/%ta |]
    [pro/%any ~]
  ==
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:t =pail:t]
  ++  init
    |=  new=(unit pail:t)
    ^-  (quip card:neo pail:t)
    :-  ~
    ?^  new  u.new
    folder/!>(*folder)
  ::
  ++  poke
    |=  [=stud:t vax=vase]
    ^-  (quip card:neo pail:t)
    ?+    stud  !!
        %folder-diff
      =/  poke  !<(folder-diff vax)
      =/  this  !<(folder q.pail)
      ?-    -.poke
          %make
        :_  folder/!>([name.poke this])  ::  add new item to head of of list
        :~  [(snoc here.bowl name.poke) %make stud.poke (~(get by default-pails) stud.poke) ~]
        ==
      ::
          %tomb
        :-  ~
        =/  i  (need (find ~[name.poke] this))
        folder/!>((oust [i 1] this))
      ==
    ==
  --
--
