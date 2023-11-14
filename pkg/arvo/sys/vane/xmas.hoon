!:
!?  164
::
=,  xmas
=>  |%
    +$  card  (wind note-arvo gift)
    +$  move  [=duct =card]
    +$  shard  @
    +$  shards  (map @ud shard)
    +$  ossa  
      [=shards ducts=(set duct)]
    +$  dream  ~
    +$  grave
      $:  ossuary=(map @ud ossa)
          dreams=(map path dream)
          next=@ud
      ==
    ::
    +$  xmas-state
      $:  %0
          graves=(map ship grave)
          sticks=(jug path duct)
          unix-duct=_`duct`[//xmas ~]
      ==
    --
~%  %xmas  ..part  ~
=|  xmas-state
=*  state  -
|=  our=ship
|=  [now=@da eny=@uvJ rof=roof]
=*  xmas-gate  .
=<
  |%
  ++  load
    |=  old=*
    ^+  xmas-gate
    =+  ole=((soft ,xmas-state) old)
    ?~  ole
      xmas-gate
    xmas-gate(state u.ole)
  ++  call
    |=  [hen=duct dud=(unit goof) wap=(hobo task)]
    ^-  (quip move _xmas-gate)
    =/  =task  ((harden task) wap)
    =/  main   ~(. main [hen ~])
    ?+    -.task  `xmas-gate
    ::
        %keen
      =^  cards  state
        abet:(on-keen:main +.task)
      [cards xmas-gate]
    ::
        %plea
      =^  cards  state
        abet:(on-plea:main +.task)
      [cards xmas-gate]
    ::
        %born
      `xmas-gate(unix-duct hen)
    ::
        %leaf
      =/  ducts  (~(get ju sticks) path.leaf.task)
      :_  xmas-gate
      %+  turn  ~(tap in ducts)
      |=  duc=duct
      [duc %give %leaf leaf.task]
    ==
  ::
  ++  stay  state
  ++  take
    |=  [wir=wire hen=duct dud=(unit goof) syn=sign-arvo]
    ^-  (quip move _xmas-gate)
    ?^  dud
      ~|(%xmas-take-dud (mean tang.u.dud))
    `xmas-gate
  ++  scry
    ^-  roon
    |=  [lyc=gang pov=path car=term bem=beam]
    ^-  (unit (unit cage))
    ?.  ?&  =(our p.bem)
            =([%da now] r.bem)
        ==
      ~
    ?:  =(%dbug q.bem)
      ``noun+!>(state)
    ?.  =(%$ q.bem)
      [~ ~]
    ~&  pax/s.bem
    ?+    s.bem  [~ ~]
        [%page %foo %bar ~]
      =/  fake  (rip 13 (rap 3 (reap 2 0xbeef.beef)))
      ~&  len/(lent fake)
      ``noun+!>([(lent fake) fake])
    ==
  --
|_  [hen=duct moves=(list move)]
++  main  .
++  abet  [(flop moves) state]
++  emit  |=(card main(moves [[hen +<] moves]))
++  emit-unix  |=(card main(moves [[unix-duct +<] moves]))
++  emil  |=((list move) (welp (turn (flop +<) (lead hen)) moves))
++  fossor
  |_  [=ship =grave]
  ++  fo-abet  
    =.  fo-core  fo-work
    =.  graves   (~(put by graves) ship grave)
    main
  ::
  ++  fo-core  .
  ++  fo-abed  |=(s=^ship fo-core(ship s, grave (~(gut by graves) s *^grave)))
  ++  fo-work  fo-core
  ++  fo-ulna
    |_  [bone=@ud =ossa]
    ++  ul-abet  fo-core(ossuary.grave (~(put by ossuary.grave) bone ossa))
    ++  ul-core  .
    ++  ul-abed
      |=  bon=@ud
      ul-core(bone bon, ossa (~(gut by ossuary.grave) bone *^ossa))
    ++  ul-abed-new  
      ul-core(bone next.grave, next.grave +(next.grave))
    ++  ul-plea
      |=  =plea:ames
      ^+  ul-core
      =.  ducts.ossa  (~(put in ducts.ossa) hen)
      ?.  =(~ shards.ossa) :: already serving request
        ul-core
      =.  shards.ossa
        =<  +
        %+  roll  (rip 11 (jam plea))
        |=  [sad=@ [idx=@ud =shards]]
        [+(idx) (~(put by shards) idx sad)]
      ul-core
    --
  --
++  on-plea
  |=  [=ship vane=@tas =path payload=*]
  ^+  main
  =<  fo-abet:ul-abet
  (ul-plea:ul-abed-new:fo-ulna:(fo-abed:fossor ship) vane path payload)
::
++  on-keen
  |=  [=ship =path]
  ^+  main
  ?>  (lte ship 255)
  =/  =lane:ames  [%.y ship]
  =/  =gift  [%peek ship ~[lane] path]
  (emit-unix %give gift)
--

