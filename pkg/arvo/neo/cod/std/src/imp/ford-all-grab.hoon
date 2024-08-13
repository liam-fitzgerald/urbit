
=>
  =*  reef  .
  |%
  ++  build
    |=  [=bowl:neo =stud:neo]
    ^-  (list card:neo)
    =/  in=vase  q.pail:(need fil.q:(~(got by deps.bowl) %pro))
    =/  lookup=(map stud:neo vase)
      %+  roll  ~(tap of q:(~(got by deps.bowl) %con))
      |=  [[=pith:neo =idea:neo] out=(map stud:neo vase)]
      ?.  =(p.pail.idea %vase)
        out
      ?.  ?=([@ ~] pith)
        out
      =/  =stud:neo  i.pith
      =/  vax  q.pail.idea
      =+  !<(grab=stud:neo (slot 4 vax))
      =+  !<(grow=stud:neo (slot 11 vax))
      ?.  =(grab stud)
        out
      (~(put by out) grow (slot 3 vax))
    =;  kid=vase
      :_  ~
      ^-  card:neo
      [(welp here.bowl /out) %make %ford-riff `vase/kid *crew:neo]
    ~>  %mean.|.((sell in))
    ~|  p:(~(got by deps.bowl) %pro)
    %+  slap
      %+  with-faces:ford:neo  !>([neo=neo ..zuse])
      :~  in/in
          lookup/!>(lookup)
      ==
    !,  *hoon
    |=  [to=stud:neo input=in]
    ^-  vase
    (slym (~(got by lookup) to) input)
  --

|%
::  $state: the state of this value in the urbit namespace
::
::    For instance, a message would be
::    ```hoon
::    [author=ship time-sent=time message=txt]
::    ```
::
::    ```
++  state  pro/%stud
::  $poke: a poke is a request to change a value in teh urbit
::  namespace.
::
::    For instance a blocked list that is a set of users would be
::      [%add who=user]
::      [%del who=user]
::
::
++  poke   (sy %rely ~)
::
::  +kids: Some nodes in the namespace define what children are
::  allowed to be under them. For instance, it should not  be allowed
::  to create /~hastuc-dibtux/chats/unit-731/blog-post-1. This is
::  nonsensical because blog posts don't go in chats.
++  kids   
  :+  ~  %y
  %-  ~(gas by *lads:neo)
  :~  :-  [&/%out |]
      [pro/%vase ~]
  ==
::
++  deps
  %-  ~(gas by *band:neo)
  :~  :-  %con
      :-  req=&
      :-  [state=any/~ poke=~]
      :+  ~  %y
      %-  ~(gas by *lads:neo)
      :~  :-  [|/%tas |]
          [state=pro/%vase poke=~]
      ==
      :+  %pro  req=&
      :_(~ [state=pro/%vase poke=~])
  ==
::
++  form
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ::  +reduce: apply %poke, producing state and IO
  ::
  ++  poke
    |=  [=stud:neo val=vase]
    =+  !<(sta=stud:neo q.pail)
    :_  pail
    (build bowl sta)
  ++  init
    |=  old=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    =/  =pail:neo  (need old)
    =+  !<(sta=stud:neo q.pail)
    :_  pail
    (build bowl sta)
  --
--
