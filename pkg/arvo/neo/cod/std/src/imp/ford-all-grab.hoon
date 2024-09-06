
=>
  =*  reef  .
  |%
  ++  build
    |=  [=bowl:neo =stud:t]
    ^-  (list card:neo)
    =/  in=vase  q.pail:(need fil.q:(~(got by deps.bowl) %pro))
    =/  lookup=(map stud:t vase)
      %+  roll  ~(tap of q:(~(got by deps.bowl) %con))
      |=  [[=pith:t =idea:neo] out=(map stud:t vase)]
      ?.  =(p.pail.idea %vase)
        out
      ?.  ?=([@ ~] pith)
        out
      =/  =stud:t  i.pith
      =/  vax  q.pail.idea
      =+  !<(grab=stud:t (slot 4 vax))
      =+  !<(grow=stud:t (slot 11 vax))
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
      %+  with-faces:ford:neo  !>([neo=neo t=t ..zuse])
      :~  in/in
          lookup/!>(lookup)
      ==
    !,  *hoon
    |=  [to=stud:t input=in]
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
  |_  [=bowl:neo =aeon:t =pail:t]
  ::  +reduce: apply %poke, producing state and IO
  ::
  ++  poke
    |=  [=stud:t val=vase]
    =+  !<(sta=stud:t q.pail)
    :_  pail
    (build bowl sta)
  ++  init
    |=  old=(unit pail:t)
    ^-  (quip card:neo pail:t)
    =/  =pail:t  (need old)
    =+  !<(sta=stud:t q.pail)
    :_  pail
    (build bowl sta)
  --
--
