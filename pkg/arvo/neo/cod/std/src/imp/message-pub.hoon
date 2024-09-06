/@  txt
/@  message
::
^-  kook:neo
|%
++  state  pro/%sig
++  poke  (sy %message %txt ~)
++  kids
  :+  ~  %y
  %-  ~(gas by *lads:neo)
  :~  :-  [|/%da |]
      [pro/%message (sy %sig ~)]
  ==
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:t state=pail:t]
  ++  init
    |=  old=(unit pail:t)
    ^-  (quip card:neo pail:t)
    [~ sig/!>(~)]
  ::
  ++  poke
    |=  [=stud:t vax=vase]
    ^-  (quip card:neo pail:t)
    ?>  =(our ship.src):bowl
    :_  state
    ?+    stud  !!
        %message
      =/  msg  !<(message vax)
      :~  :-  (welp here.bowl ~[da/now.msg])
          [%make %message `message/vax ~]
      ==
        %txt
      =/  contents=@t  !<(txt vax)
      :~  :-  (welp here.bowl ~[da/now.bowl])
          [%make %message `message/!>([ship.src.bowl now.bowl contents]) ~]
      ==
    ==
  --
--
