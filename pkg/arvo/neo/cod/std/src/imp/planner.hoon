/@  planner
/@  planner-diff
/@  planner-entry
^-  kook:neo
|%
++  state  pro/%planner
++  poke  (sy %planner-diff ~)
++  kids
  :-  ~
  :-  %y
  %-  ~(gas by *lads:neo)
  :~  :-  [|/%da |]
      [pro/%planner-entry (sy %sig ~)]
  ==
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:t =pail:t]
  ++  init
    |=  new=(unit pail:t)
    ^-  (quip card:neo pail:t)
    :-  ~
    ?~  new
      planner/!>([now.bowl (add now.bowl ~d30)])
    u.new
  ::
  ++  poke
    |=  [=stud:t vax=vase]
    ^-  (quip card:neo pail:t)
    ?+    stud  !!
        %planner-diff
      =/  poke  !<(planner-diff vax)
      =/  this  !<(planner q.pail)
      ?-    -.poke
          %make
        :_  planner/!>(this)
        ^-  (list card:neo)
        :~
          :-  (snoc here.bowl [%da now.bowl])
          [%make %planner-entry `planner-entry/!>(entry.poke) ~]
        ==
      ::
          %edit
        :_  planner/!>(this)
        ^-  (list card:neo)
        :~
          :-  (snoc here.bowl [%da id.poke])
          [%make %planner-entry `planner-entry/!>(entry.poke) ~]
        ==
      ::
          %move
        :-  ~
        planner/!>(this(start start.poke, end end.poke))
      ::
          %tomb
        :_  planner/!>(this)
        ^-  (list card:neo)
        :~
          :-  (snoc here.bowl [%da id.poke])
          =/  entry  [*@da %event *@dr '' &]
          [%make %planner-entry `planner-entry/!>(entry) ~]
        ==
      ==
    ==
  --
--
