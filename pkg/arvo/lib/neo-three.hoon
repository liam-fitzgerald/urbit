/-  neo
~%  %neo-three  ..part  ~
|%
++  cache-flag  `?`|
++  neo  ^neo
++  n  neo
+$  case  @ud
++  of  of:neo
++  aon  aon:neo
++  or  or:neo
++  u
  ~%  %u  ..u  ~
  |%
  ++  land-to-ever
    |=  land:t
    ^-  ever:n
    [[case.now 0] [why.latest 0] [zed.latest 0] 0 0 rift.now *time]
  ++  crew
    |%
    ++  mk
      |=  ls=(list [=term =pith:n])
      (~(gas by *crew:n) ls)
    ++  one
      |=  [=term =pith:n]
      ^-  crew:n
      %-  ~(gas by *crew:n)
      ~[term^pith]
    --
  ++  make
    |%
    ++  static
      |=  [=stud:n =pail:n]
      ^-  note:n
      [%make stud `pail ~]
    --
  ++  deps
    |%
    ++  qua
      |_  [=term =bowl:n sud=(unit stud:n)]
      ++  get  `(pair pith:n lore:n)`(~(got by deps.bowl) term)
      ++  lore  q:get
      ++  root  ~(rot of lore)
      ++  pail
        :: =-  ?>(|(?=(~ sud) =(p.- u.sud)) -)
        ^-  pail:n
        pail:root
      ++  vase  `^vase`q:pail
      ++  pith  p:get
      --
    --
  ++  is-parent
    ~/  %is-parent
    |=  [parent=pith:n kid=pith:n]
    ^-  ?
    ?~  parent  &
    ?~  kid     |
    ?.  =(i.parent i.kid)
      |
    $(parent t.parent, kid t.kid)
  --
::
++  t
  |%
  +$  gang
    $@  open=?  :: if 
    $%  [%chum =pith]
        [%shut =pith]
    ==
  +$  pail  pail:neo
  +$  ever  ever:neo
  ++  axal  axal:neo
  +$  zion  (axal fern)
  +$  over  [rift=@ case=@]
  +$  hunt  hunt:neo
  +$  saga  saga:neo
  +$  stud  stud:neo
  +$  chit  ~
  ++  bush
    |%
    ::  $move: IO with source
    ::
    +$  move  (pair pith card)
    ::  $card: addressed IO
    +$  card  (pair pith note)
    ::  $note: IO request at a location
    +$  note
      $~  [%cull ~]
      $%  [%poke =pail]
          [%cull ~]
          [%make code=stud init=(unit pail) xtra=pail]
          [%many cards=(list card)]
      ==
    --
  ++  fern
    =<  fern
    |%
    +$  task   (pair pith note)
    +$  note
      $%  [%bush =move:bush]
          [%hear =hunt]
          [%have =ship =chit]
          [%drip ~]
          [%arvo hand=pith syn=sign-arvo]
          [%http eyre-id=@ta req=inbound-request:eyre]
      ==
    +$  gift
      $%  [%meet =ship pact=(set stud)]  :: perform service discovery on ship
        ::
          [%hark =hunt]  :: listen to changes
        ::
          [%shun =hunt]  :: stop listening to changes
        ::
          [%bush =move:bush] :: deliver external note
        ::
          [%drip ~]
        ::
          [%arvo hand=pith note=note-arvo]
          [%eyre eyre-id=@t =gift:eyre:n]
      ==
    ++  step  
      |^  ,[=seed io=(list gift)]
      ++  merge
        :: ~/  %merge
        |=  [a=$ b=$]
        ^+  a
        %_  a
          seed  (~(uni of seed.a) seed.b)
          io    (welp io.a io.b)
        ==
      --
    +$  fern
      $:  code=vase
          anew=(axal ever)
          heed=(set hunt)
      ==
    +$  mien
      $:  our=@p
          pfix=pith
          now=@da 
          eny=@uvJ
          heed=(set hunt)
          =farm
      ==
    --
  ::
  +$  case  @ud
  ::  $data: resolved data in space
  +$  data  [=oath:neo =gang =pail:neo =poem:neo]
  ::  +dirt: Mapping from x case to datum
  ++  dirt  
    =<  dirt
    |%
    ++  on    ((^on case data) lte)
    +$  dirt  ((mop case data) lte)
    --
  +$  land
    $+  land
    $:  exe=mire
        why=moss
        zed=moss
        parent=pith:n
        kids=soul
        now=over
        latest=[why=@ud zed=@ud]
        exists=_&
    ==
  ::  [rift [start=case end=case]] -> (unit dirt)
  ::
  ::  loam -> case 
  ::  loam -> rift 
  ::
  ::
  ++  loam  (mip:neo (unit dirt))
  ::  $soil: pith to dirt
  +$  soil  (axal:neo loam)
  ::  $soul: shape of children
  ::
  +$  soul  (map pith:neo @ud)
  ::  +body: Mapping from a dare case to shape of children
  ++  moss 
    =<  moss
    |%
    ++  on   ((^on case soul) lte)
    +$  moss  ((mop case soul) lte)    
    --
  ::  $moss: mapping from path to children history
  ::  $mire: mapping from x case to dare cases
  ++  mire
    =<  mire
    |%
    ++  on    ((^on case (set case)) lte)
    ++  mire  ((mop case (set case)) lte)
    --
  +$  plot  (axal:neo land)
  +$  issue  (axal:neo pith:neo)
  +$  farm
    $:  our=ship
        =soil
        =plot
        bump=[why=(axal ~) zed=(axal ~)]
    ==
  +$  seed  (axal:neo note)
  +$  muck  (axal:neo tale:neo)
  +$  note 
    $%  [%grow cas=(unit (pair rift case)) =pail:neo =poem:neo]
        [%cull rif=(unit rift)]
    ==
  ::  $burb: Cases of foreign data
  ++  burb
    =<  burb
    |%
    +$  burb  ((mop case (unit saga)) lte)
    ++  on    ((^on case (unit saga)) lte)
    --
  ::  $town: Foreign namespace
  +$  town
    (axal burb)
  ::  $mart: Information for publishing a path
  ::
  +$  mart
    $:  zed=(set path)
    ==
  ::  $mall: Publishing information for paths
  +$  mall
    (axal mart)
  +$  deli
    $:  last=(unit ever:n)
        pend=_|
        =yuga:n
        =epic:n
    ==
  ::  $ward: Subscriber metadata for a path
  +$  ward
    $:  mode=care:n
        err=(unit tang)
        =deli
    ==
  +$  hobo  ~
  ::  $city: Subscription state
  +$  city
    (axal ward)
  ::
  ++  yurt
    =<  yurt
    |%
    +$  yurt  ((mop @ epic:n) lte)
    ++  on    ((^on @ epic:n) lte)
    --
  ++  tipi
    =<  tipi
    |%
    +$  tipi  ((mop @ saga:n) lte)
    ++  on    ((^on @ saga:n) lte)
    --
  +$  tent  (each yurt tipi)
  ::
  +$  wild  (axal tent)
  --
++  xeno
  |_  =wild:t
  ++  steppe
    |=  [=pith:n =epic:n]
    =/  =tent:t  (~(gut of wild) pith [%& *yurt:t])
    ?>  ?=(%& -.tent)
    =/  cas=@ud   p.zed.p.p:(~(got of epic) /)
    =.  p.tent  (put:on:yurt:t p.tent cas epic)
    (~(put of wild) pith tent)
  ::
  ++  prarie
    |=  [=pith:n =saga:n]
    =/  =tent:t  (~(gut of wild) pith [%| *tipi:t])
    ?>  ?=(%| -.tent)
    =/  cas=@ud   p.exe.p.p.saga
    =.  p.tent  (put:on:tipi:t p.tent cas saga)
    (~(put of wild) pith tent)
  ++  fit
    |=  pax=pith
    !!
  --
++  etch
  =>
    |%
    ++  split
      |=  [a=tape b=@ud]
      ^-  [tape tape]
      [(scag b a) (slag b a)]
    ++  stop  `@ud`2
    ++  cape  (pair @ud tape)
    --
  =|  ind=@ud
  =/  edg=@ud  80
  =|  res=(list cape)
  ~%  %etch  ..etch   ~
  |%
  ++  etch  .
  ++  abet  res
  ++  tang
    (flop `^tang`(turn res (cork tail (lead %leaf))))
  ++  print
    |-  ^+  same
    ?~  res
      same
    ~>  %slog.[p.i.res leaf/q.i.res]
    $(res t.res)
  ++  mean
    !.
    |-  ^+  !!
    ?~  res
      !!
    =/  tap  |.(leaf/q.i.res)
    ~>  %mean.tap
    $(res t.res)

  ++  cards
    |=  caz=(list card:n)
    ^+  etch
    ?~  caz
      etch
    $(etch (card i.caz), caz t.caz)
  ++  card
    |=  =card:n
    ^+  etch
      %+  print-ln-raw  1
      "{<-.q.card>} {(en-tape:pith:neo p.card)}"
::  ?+    -.q.card  !!
::      %cull  (print-ln "%cull")
::      %poke  (print-vase:(print-ln "%poke") q.pail.q.card)
::      %make  
::    =.  etch  (print-ln "%make {<stud.q.card>}")
::    =.  etch
::      (print-ln <conf.q.card>)
::    ?~  init.q.card
::      etch
::    (print-vase q.u.init.q.card)
::  ==
  ++  tab   etch(ind (add ind stop))
  ++  untab  etch(ind (sub ind stop))
  ++  print-vase
    |=  vax=vase
    ?:  (gth (met 3 (jam q.vax)) 1.000)
      (print-ln "too large to print")
    (print-tank (sell vax))
  ++  print-tank
    |=  a=tank
    =/  tan=wall  (~(win re a) [ind edg])
    |-  ^+  etch
    ?~  tan
      etch
    =.  res  (snoc res [0 i.tan])
    $(tan t.tan)
  ++  print-ln
    |=  a=tape
    (print-ln-raw 0 a)
  ::
  ++  print-ln-raw
    |=  [pri=@ud a=tape]
    ^+  etch
    =/  cap  (sub edg ind)
    ?:  (gth cap (lent a))
      =.  res  (snoc res [pri (welp `tape`(reap ind ' ') a)])
      etch
    |-  
    =/  [next=tape cont=tape]
      [(scag cap a) (slag cap a)]
    =.  etch  (print-ln next)
    ?:  =(cont ~)
      etch
    $(a cont)
  ++  seed
    |=  s=seed:fern:t
    =.  etch  (print-ln-raw 2 "Seed")
    =<  (print-ln-raw 2 "seed done")
    %+  roll  ~(aap of s)
    |=  [[=pith:neo =note:t] e=_etch]
    ^+  e
    =.  e  
      %+  print-ln-raw:e  1
      %-  en-tape:pith:neo 
      pith 
    ?-  -.note
      %grow  untab:(print-vase:tab:e q.pail.note)
      %cull  e
   ==
  ++  muck
    |=  m=muck:t
    =.  etch  (print-ln-raw 2 "muck")
    %+  roll  ~(aap of m)
    |=  [[=pith:neo =tale:neo] e=_etch]
    ^+  e
    =.  e  
      %+  print-ln-raw:e  1
      %-  en-tape:pith:neo 
      pith 
    untab:(print-vase:tab:e q.q.tale)
  ++  epic
    |=  p=epic:neo
    ~>  %slog.[2 leaf/"Epic"]
    =<  (print-ln-raw 2 "Done")
    %+  roll  ~(aap of p)
    |=  [[=pith:neo =saga:t] e=_etch]
    ^+  e
    =.  e  
      %+  print-ln-raw:e  1
      %-  en-tape:pith:neo 
      pith 
    untab:(print-vase:tab:e q.q.q.saga)
  ::
  ++  farm
    |=  f=farm:t
    ^+  etch
    %+  roll  ~(aap of soil.f)
    |=  [[=pith:neo l=loam:t] e=_etch]
    ^+  e
    =.  e  
      %+  print-ln-raw:e  1
      %-  en-tape:pith:neo 
      pith 
    =.  e  
      =/  l  (~(get of plot.f) pith)
      ?~  l
        (print-ln:e "Weird, no land") 
      (land:e u.l)
    (loam:e l)
  ++  land
    |=  l=land:t
    ^+  etch
    =.  etch  
      (print-ln "%y {(scow %ud why.latest.l)}, %z {(scow %ud zed.latest.l)}")
    (print-ln <+:(need (ram:on:moss:t zed.l))>)
  ::
  ++  loam-verb  `?`&
  ::
  ++  loam
    |=  l=loam:t
    ^+  etch
    =/  last  (need ~(last or l))
    =/  val   (~(got or l) k.last)
    =.  etch  (print-ln "Current rift: {(scow %ud k.last)}")
    =.  etch
      ?.  loam-verb
        ?~  val  (print-ln "No value at current rift, case {(scow %ud l.last)}")
        =.  etch  (print-ln "Versions starting at {(scow %ud l.last)}")
        untab:(dirt:tab u.val)
      %+  roll  ~(tap by l)
      |=  [[=span:neo dir=(unit dirt:t)] e=_etch]
      ?~  dir  (print-ln:e "No value at rift {(scow %ud k.span)}, case {(scow %ud l.span)}")
      =.  e  (print-ln:e "Versions starting at {(scow %ud l.span)}")
      untab:(dirt:tab:e u.dir)
    etch
  ++  dirt
    |=  d=dirt:t
    ^+  etch
    =<  -
    %^  (dip:on:dirt:t _etch)  d  etch
    |=  [e=_etch [case=@ud =data:t]]
    ^-  [(unit data:t) stop=? _e]
    :+  `data  stop=|
    =.  e  (print-ln:e "value for version: {(scow %ud case)}:")
    untab:(print-vase:tab:e q.pail.data)
  --
++  sow
  |=  [=loam:t =tale:n]
  ^-  [=over:t loam:t]
  =/  las=(unit [=span:n dir=(unit dirt:t)])  
    ~(last-raw or loam)
  =/  =data:t  [*oath:n *gang:t q.tale p.tale]
  ?~  las
    =/  =over:t  [1 1]
    =/  =dirt:t  (put:on:dirt:t *dirt:t 1 data)
    [over (~(put or loam) [1 1 1] `dirt)]
  =/  new=@ud  +(r.span.u.las)
  ?~  dir.u.las
    =/  =dirt:t  (put:on:dirt:t *dirt:t new data)
    =/  =over:t  [+(k.span.u.las) new]
    [over (~(put or loam) [rift case case]:over `dirt)]
  =.  u.dir.u.las  (put:on:dirt:t u.dir.u.las new data)
  =.  r.span.u.las  new
  =/  =over:t  [k.span.u.las r.span.u.las]
  [over (~(put or loam) span.u.las `u.dir.u.las)]
++  die
  |=  =loam:t
  ^-  [=over:t loam:t]
  =/  las=(unit [=span:n dir=(unit dirt:t)])  
    ~(last-raw or loam)
  ?~  las
    !!
  =/  new=@ud  +(r.span.u.las)
  ?~  dir.u.las
    !!
  =/  =over:t  [+(k.span.u.las) new]
  [over (~(put or loam) [rift case case]:over ~)]
::
++  plow
  ~%  %plow  ..plow   ~
  |_  =farm:t
  ++  dip
    ~/  %dip
    |=  =pith:n
    ^+  farm
    ?>  =(~ pith)
    farm
  ::  XX: flesh out
  ++  apt  `?`&
  ::
  ++  rep
    ~/  %rep
    |=  [=pith:n f=_farm]
    ^+  farm
    ?>  =(~ pith)
    f
  ::
  ++  scry
    ~/  %scry
    |=  [=case:neo =hunt:neo]
    |^  ^-  (unit epic:neo)
    ?-    care.hunt
        ?(%x %a)
      =/  res  (read-x-raw pith.hunt case)
      ?-  res
        ~   ~
        [~ ~]  `*epic:neo
        [~ ~ *]  `(~(put of *epic:neo) / u.u.res)
      ==
    ::
        ?(%y %b)
      =/  [rest=pith:n lan=(unit land:t)]
        (~(fit of plot.farm) pith.hunt)
      =/  pfix  (scag (sub (lent pith.hunt) (lent rest)) pith.hunt)
      =/  =land:t  (need lan)
      ?~  sol=(get:on:moss:t why.land case)
        ~  :: XX: wrong for intermediate cases (FIXME!)
      :-  ~
      =-  (~(dip of -) pith.hunt)
      %-  ~(gas of *epic:neo)
      %+  murn  ~(tap by u.sol)
      |=  [kid=pith:neo cas=@ud]
      =.  kid  (welp pfix kid)
      ?~  res=(read-x-raw kid cas)
        ~&  weird-x/[kid cas]
        ~
      ?~  u.res
        ~
      `[kid u.u.res]
        ?(%z %c)
      ~&  %reading-z
      =/  [rest=pith:n lan=(unit land:t)]
        (~(fit of plot.farm) pith.hunt)
      =/  pfix  (scag (sub (lent pith.hunt) (lent rest)) pith.hunt)

::    =/  pfix  (slag (lent parent.land) pith)
::      =/  pfix  (sub:pith:neo pith.hunt rest)
      =/  =land:t  (need lan)
      ?~  sol=(get:on:moss:t zed.land case)
        ~
      =/  =soul:t  u.sol
      =-  `(~(dip of -) rest)
      =|  res=epic:neo
      |-  =*  loop-soul  $
      =/  kids=(list [=pith:neo cas=@ud])
        ~(tap by soul)
      |-  =*  loop-kids  $
      ?~  kids
        res
      =/  [kid=pith:neo c=@ud]  i.kids
      =/  full  (welp pfix kid)
      ?:  =(kid /)
        =/  child  (need (read-x-raw full c))
        ?~  child  $(kids t.kids)
        $(kids t.kids, res (~(put of res) full u.child))
      =/  serf=land:t  (~(got of plot.farm) full)
      %_    $
        kids  t.kids
        res   loop-soul(soul (got:on:moss:t zed.serf c), pfix full)
      ==
    ==
    ::
    ++  read-x-raw
      |=  [pit=pith:neo cas=@ud]
      ^-  (unit (unit saga:neo))
      ?:  =(cas 0)
        [~ ~]
      ?~  lom=(~(get of soil.farm) pit)
        ::  doesn't exist yet
        ~
      ?~  dir=(~(wit or u.lom) cas)
        ::: should never happen
        ~&  weird/[pit cas]
        [~ ~]
      ?~  u.dir
        ::  previously bound, currently empty
        [~ ~]
      ?^  ver=(get:on:dirt:t u.u.dir cas)
        ``(lift pit u.ver)
      ?~  lat=(ram:on:dirt:t u.u.dir)
        :: should never happen
        ~
      :: is request for future case
      ?:  (lte cas key.u.lat)
        [~ ~]
      ~
    ++  lift
      |=  [pit=pith:n =data:t]
      ^-  saga:neo
      =/  =aeon:neo
        [(land-to-ever:u (~(got of plot.farm) pit)) oath.data]
      [aeon poem.data pail.data]
    --
  ::
  ++  look
    ~/  %look
    |=  =hunt:neo
    ~>  %bout.[1 %look]
    =/  cas=@ud  (pine hunt)
    ?:  =(cas 0)
      *epic:n
    (need (scry cas hunt))
  ++  pine
    ~/  %pine
    |=  [=care:neo =pith:neo]
    ~>  %bout.[1 %pine]
    :: =-  ~&(pine/- -)
    ^-  @ud
    =/  [rest=pith:neo lan=(unit land:t)]
      (~(fit of plot.farm) pith)
    ~|  pith
    ?>  ?=(^ lan)
    =/  =land:t  u.lan
    ?-    care
        ?(%x %a)
      ?.  =(rest ~)
        ~&  pine-mismatch/[rest pith]
        0
      case.now.land
    ::
        ?(%y %b)
      why.latest.land
        ::
        ?(%z %c)
      zed.latest.land
    ==
  ::
  ++  plant
    ~/  %plant
    |=  =seed:t
    =/  ls   
      ~(tap of seed)
      :: ~(sap of seed)
    ~>  %bout.[1 %plant]
    |-  ^+  farm
    ?~  ls 
      ~!  farm
      =.  plot.farm  (handle-why why.bump.farm plot.farm)
      =.  plot.farm  (handle-zed zed.bump.farm plot.farm)
      :: ~&  plot.farm
      =.  bump.farm  [~^~ ~^~]
      farm
    $(farm (call i.ls), ls t.ls)
  ++  call
    ~/  %call
    |=  [=pith:neo not=note:t]
    ^+  farm
    ?-  -.not
      %grow  (grow pith poem.not pail.not)
      %cull  (cull pith)
    ==
  ++  cull
    ~/  %cull
    |=  =pith:n
    ^+  farm
    :: ~>  %bout.[1 (crip "%grow: {(en-tape:pith:n pith)}")]
    =/  lot      (~(dip of plot.farm) pith)
    =/  =land:t  (need fil.lot)
    =/  =loam:t  (~(gut of soil.farm) pith *loam:t)
    =/  parent  (~(got of plot.farm) parent.land)
    =.  kids.parent  (~(del by kids.parent) (slag (lent parent.land) pith))
    =.  plot.farm  (~(put of plot.farm) parent.land parent)
    =/  kids  ~(tap in ~(key by kids.land))
    |-
    ?^  kids
      $(kids t.kids, farm (cull (welp pith i.kids)))
    =^  =over:t  loam  
      (die loam)
    %_  farm
      soil  (~(put of soil.farm) pith loam)
      plot  (~(put of plot.farm) pith land(now over, exists |))
    ==


::  XX: technically possible to make %cull non-recursive, punting for
::  now
::  =/  sfix  (slag (lent parent.land) pith)
::  =/  parent=land:t  (~(got of plot.farm) parent.land)
::  =/  orphaned=(list [=pith:n @ud])
::    ~(tap by kids.land)
::  =.  kids.parent
::    %-  ~(gas by kids.parent)
::    %+  turn  orphaned
::    |=  [p=pith:n cas=@ud]
::    [(welp sfix p) cas]
::  |-
::  ?~  orphaned
::    =.  fil.lot  `land
::    farm(bump (sully parent.land pith), plot (~(rep of plot.farm) pith lot))
::  =/  lt  (~(dip of lot) pith.i.orphaned)
::  =/  orphan  (need fil.lt)
::  =.  parent.orphan  parent.land
::  =.  bump.farm  (sully parent.land (welp pith pith.i.orphaned))
::  $(orphaned t.orphaned, lot (~(rep of lot) pith.i.orphaned lt))
::  ::  XX: recompute parents

  ::
  ++  sully
    ~/  %sully
    |=  [parent=pith:neo =pith:neo]
    ^+  bump.farm
    =.  why.bump.farm   (~(put of why.bump.farm) pith ~)
    =.  why.bump.farm   (~(put of why.bump.farm) parent ~)
    =.  zed.bump.farm   (~(put of zed.bump.farm) pith ~)
    bump.farm
  ++  handle-why
    ~/  %handle-why
    |=  [change=(axal:n ~) =plot:t]
    ~>  %bout.[1 %handle-why]
    ^-  plot:t
    !.
    |-  =*  loop  $
    =?  fil.plot  &(?=(^ fil.plot) ?=(^ fil.change))
      =/  =land:t  u.fil.plot
      =/  =soul:t  (~(put by kids.land) / case.now.land)
      =/  race=@ud  (roll ~(val by soul) add)
      `land(why (put:on:moss:t why.land race soul), why.latest race)
    =/  kids=(list [=iota ax=(axal:neo ~)])
      ~(tap aon kid.change)
    |- 
    ?~  kids
      plot
    =/  nex=(unit plot:t)
      (~(get aon kid.plot) iota.i.kids)
    %_    $
        kids  t.kids
        kid.plot
      ?~  nex  kid.plot
      =/  new   
        loop(change ax.i.kids, plot u.nex)
      (~(put aon kid.plot) iota.i.kids new)
      
    ==
  ++  handle-zed
    ~/  %handle-zed
    |=  [change=(axal:n ~) =plot:t]
    ^-  plot:t
    ~>  %bout.[1 %handle-zed]
    !.
    =|  here=pith:neo
    |-  =*  loop  $
    =/  kids  ~(tap by kid.change)
    |-  
    ?^  kids
      %_    $
          kids  t.kids
          kid.plot 
        ?~  nex=(~(get aon kid.plot) -.i.kids)
          kid.plot
        %+  ~(put aon kid.plot)  -.i.kids
        loop(plot u.nex, change +.i.kids, here (snoc here -.i.kids))
      ==
    =?  fil.plot  ?=(^ fil.plot)
      =/  =land:t  u.fil.plot
      =/  =soul:t  kids.land 
      =.  soul
        %-  ~(urn by (~(put by soul) / 0))
        |=  [p=pith:neo cas=@]
        ^-  @ud
        ?:  =(p /)
          case.now.land
        =/  lan=(unit land:t)   
          =>  .(plot `plot:t`plot)
          (~(get of plot) p)
        zed.latest:(fall lan *land:t)
      =/  race=@ud  (roll ~(val by soul) add)
      `land(zed.latest race, zed (put:on:moss:t zed.land race soul))
    plot
  ::
  ++  grow
    ~/  %grow
    |=  [=pith:neo =tale:neo]
    :: ~>  %bout.[1 (crip "%grow: {(en-tape:pith:n pith)}")]
    =/  lot      (~(dip of plot.farm) pith)
    =/  =land:t  (fall fil.lot *land:t)
    =/  =loam:t  (~(gut of soil.farm) pith *loam:t)
    =^  =over:t  loam  
      (sow loam tale)
    =.  soil.farm  (~(put of soil.farm) pith loam)
    =.  now.land  over  
    =.  exists.land  &
    ?.  =(1 rift.over)
      =/  sfix  (slag (lent parent.land) pith)
      =/  parent=land:t  (~(got of plot.farm) parent.land)
      =.  kids.parent  (~(put by kids.parent) sfix case.over)
      =.  plot.farm  (~(put of plot.farm) parent.land parent)

      farm(bump (sully parent.land pith), plot (~(put of plot.farm) pith land))
    :: XX: handle adoption case
    =.  parent.land 
      =/  lot  plot.farm
      =/  left=pith:n  pith
      =/  cur=pith:n  /
      =/  res=pith:n  /
      |-  
      ?~  left  res
      =.  res
        ?~  fil.lot  res
        ?.  exists.u.fil.lot  res
        cur
      =/  nex=(unit plot:t)  (~(get aon:n kid.lot) i.left)
      ?~  nex
         res
      $(cur (snoc cur i.left), lot u.nex, left t.left)
    =/  parent=land:t  (~(got of plot.farm) parent.land)
    =/  adoptees
        %+  skim  ~(tap in ~(key by kids.parent))
        =/  pfix  (slag (lent parent.land) pith)
        |=  p=pith:n  (is-parent:u pfix p)

    =/  sfix  (slag (lent parent.land) pith)
    =.  kids.parent  (~(put by kids.parent) sfix case.over)
    =/  pfix  (slag (lent parent.land) pith)
    |-
    ?~  adoptees
      =.  plot.farm  (~(put of plot.farm) parent.land parent)
      farm(bump (sully parent.land pith), plot (~(put of plot.farm) pith land))
    =/  full  (welp parent.land i.adoptees)
    =/  adoptive-name  (slag (lent pith) full)
    =/  cas=@ud  (~(got by kids.parent) i.adoptees)
    =.  kids.parent  (~(del by kids.parent) i.adoptees)
    =.  kids.land  (~(put by kids.land) adoptive-name cas)
    $(adoptees t.adoptees)
  --
::
::  plow
::=|  dirty=(set pith:n)
::~%  %plow  ..plow   ~
::|_  farm:t
::+*  farm  +<
::++  scry
::  ~/  %scry
::  |=  [=hunt:neo =case]
::  ^-  (unit epic:neo)
::  :: =/  =name:neo  (de-pith:name:neo pith.hunt)
::  =/  is-our=?  &
::  ?+  care.hunt  ~ :: XX: wrong deal with abc
::    %x  (read-x pith.hunt case)
::    %y  (read-y pith.hunt case)
::    %z  (read-z pith.hunt case)
::  ==
::++  apt
::  ^-  ?
::  &(apt-y apt-z)
::++  apt-z  &
::++  apt-y
::  ^-  ?
::  %+  roll  ~(tap of why.farm)
::  |=  [[=pith:n =body:t] out=_&]
::  ?.  out
::    out
::  =/  bod=?  (apt-body %y body)
::  ?.  bod
::    ~&  mismatch/pith
::    bod
::  &(bod out)
::::
::++  apt-body
::  |=  [kind=?(%y %z) =body:t]
::  %+  levy  (tap:on:body:t body)
::  |=  [case=@ud =soul:t]
::  =;  exp=@ud
::    ~?   !=(exp case)
::      mismatch/[exp=exp case=case]
::    =(exp case)
::  (roll ~(val by soul) add)
::::
::++  lift
::  ~/  %lift
::  |=  =data:t
::  ^-  saga:neo
::  =/  =aeon:neo
::    [*ever:neo oath.data]
::  [aeon poem.data pail.data]
::::
::++  wrap
::  ~/  %wrap
::  =|  =epic:neo
::  |=  ls=(list [=pith:neo =data:t])
::  ^+  epic
::  ?~  ls
::    epic
::  =/  =saga:neo  (lift data.i.ls)
::  $(epic (~(put of epic) pith.i.ls saga), ls t.ls)
::++  not-found
::  ^-  (unit (unit saga:neo))
::  [~ ~]
::++  mystery
::  ^-  (unit (unit saga:neo))
::  ~
::++  read-x
::  ~/  %read-x
::  |=  [p=pith:neo =case]
::  ^-  (unit epic:neo)
::  =/  res  (read-x-raw p case)
::  ?-  res
::    ~         ~
::    [~ ~]    `*epic:neo
::    [~ ~ *]  `(~(put of *epic:neo) / u.u.res)
::  ==
::++  read-x-raw
::  ~/  %read-x-raw
::  |=  [pit=pith:neo cas=@ud]
::  ^-  (unit (unit saga:neo))
::  ?~  lom=(~(get of soil) pit)
::    mystery
::  ?~  dir=(~(wit or u.lom) cas)
::    mystery
::  ?~  u.dir
::    not-found
::  ?^  ver=(get:on:dirt:t u.u.dir cas)
::    ``(lift u.ver)
::  ?~  lat=(ram:on:dirt:t u.u.dir)
::    ~
::  ?:  (lte cas key.u.lat)
::    not-found
::  ~
::::
::++  read-y
::  ~/  %read-y
::  |=  [p=pith:neo =case]
::  ^-  (unit epic:neo)
::  ::  /foo/bar <- pith.hunt
::  ::  /foo  <- pith
::  ::  /foo/bar/baz
::  =/  [=pith:n bod=(unit body:t)]
::    (~(fit of why) p)
::  ?~  bod
::    ~
::  =/  pfix  (dif:pith:n p pith)
::  ?~  sol=(get:on:body:t u.bod case)
::    ~
::  :-  ~
::  =-  (~(dip of -) pfix)
::  %-  ~(gas of *epic:neo)
::  %+  murn  ~(tap by u.sol)
::  |=  [kid=pith:neo cas=@ud]
::  =.  kid  (welp pfix kid)
::  ?~  res=(read-x-raw kid cas)
::    ~&  weird-x/[kid cas]
::    ~
::  ?~  u.res
::    ~
::  `[kid u.u.res]
::::
::++  read-z
::  ~/  %read-z
::  |=  [p=pith:neo =case]
::  ^-  (unit epic:neo)
::  ::  /foo/bar <- pith.hunt
::  ::  /foo  <- pith
::  ::  /foo/bar/baz
::  =/  [=pith:n bod=(unit body:t)]
::    (~(fit of zed) p)
::  ?~  bod
::    ~
::  =/  pfix  (dif:pith:n p pith)
::  ?~  sol=(get:on:body:t u.bod case)
::    ~
::  :-  ~
::  =-  (~(dip of -) pfix)
::  %-  ~(gas of *epic:neo)
::  %+  murn  ~(tap by u.sol)
::  |=  [kid=pith:neo cas=@ud]
::  =.  kid  (welp pfix kid)
::  ?~  res=(read-x-raw kid cas)
::    ~&  weird-x/[kid cas]
::    ~
::  ?~  u.res
::    ~
::  `[kid u.u.res]
::++  look
::  ~/  %look
::  |=  =hunt:neo
::  ^-  (unit epic:neo)
::  (scry hunt (get-case hunt))
::  ?~  now
::    og
::  =;  cached=(unit epic:neo)
::    ?.  |(=(og ~) =(cached ~) =(cached og))
::      ^-  (unit epic:neo)
::      %-  print:(epic:etch (need og))
::      %-  print:(epic:etch (need cached))
::      ^-  (unit epic:neo)
::      !!
::    cached
::  =/  res  (~(dip of u.now) pith.hunt)
::  ?+  care.hunt  !!
::    %x  `res(kid ~)
::    %y  `~(snip of res)
::    %z  `res
::  ==
::::
::++  get-case
::  ~/  %get-case
::  |=  =hunt:neo
::  ^-  @ud
::  ?-    care.hunt
::      ?(%x %a)
::    ?~  lom=(~(get of soil) pith.hunt)
::      0
::    ?~  san=~(last or u.lom)
::      0
::    ?~  dir=(~(got or u.lom) k.u.san)
::      l.u.san
::    =/  [key=@ *]  (need (ram:on:dirt:t u.dir))
::    key
::  ::
::      ?(%y %b)
::    =/  [=pith:n bod=(unit body:t)]
::      (~(fit of why) pith.hunt)
::    ?~  bod
::      0
::    key:(need (ram:on:body:t u.bod))
::  ::
::      ?(%z %c)
::    =/  [=pith:n bod=(unit body:t)]
::      (~(fit of zed) pith.hunt)
::    ?~  bod
::      0
::    key:(need (ram:on:body:t u.bod))
::  ==
::::
::++  plant
::  ~/  %plant
::  |=  =seed:t
::  =/  ls   ~(sap of seed)
::  |-  ^+  farm
::  ?~  ls 
::    =.  farm  (till %y)
::    (till %z)
::  $(farm (call i.ls), ls t.ls)
::++  bump-case
::  |=  [=pith:n cas=@ud]
::  =/  res=@  (max cas (~(gut of plot.farm) pith 0))
::  ?:  =(res max)
::    farm
::  farm(plot (~(put of plot.farm) pith res))
::::
::++  get-why
:: ::  ~>  %bout.[1 %get-why]
::  ^-  [@ud soul:t]
::  :: =/  plot  
::  =/  plot  ~(snip of plot.farm)
::  |-  
::  =/  have  ~(tap of plot)
::  :_  (~(gas by *soul:t) have)
::  %+  roll  have
::  |=  [[=pith:neo case=@ud] out=@ud]
::  (add out case)
::++  get-zed
::::  ~>  %bout.[1 %get-zed]
::  ^-  [@ud soul:t]
::  =/  have  ~(tap of plot.farm)
::  :_  (~(gas by *soul:t) have)
::  %+  roll  have
::  |=  [[=pith:neo case=@ud] out=@ud]
::  (add out case)
::++  rep
::  ~/  %rep
::  |=  [=pith f=farm:t]
::  ^+  farm
::  %_  farm
::    soil  (~(rep of soil.farm) pith soil.f)
::    exe   (~(rep of exe.farm) pith exe.f)
::    why   (~(rep of why.farm) pith why.f)
::    zed   (~(rep of zed.farm) pith zed.f)
::    plot  (~(rep of plot.farm) pith plot.f)
::    now   ?~(now ~ ?~(now.f ~ `(~(rep of u.now) pith u.now.f)))
::  ==
::++  dip
::  ~/  %dip
::  |=  =pith
::  %_  farm
::    soil  (~(dip of soil.farm) pith)
::    exe   (~(dip of exe.farm) pith)
::    why   (~(dip of why.farm) pith)
::    zed   (~(dip of zed.farm) pith)
::    plot  (~(dip of plot.farm) pith)
::    now   ?~(now ~ `(~(dip of u.now) pith))
::  ==
::::  +till: update dares
::::
::++  till
::  ~/  %till
::  |=  kind=?(%y %z)
::  ~>  %bout.[1 %till]
::  |-  =*  loop  $
::  ^+  farm 
::  =/  [dare=@ud =soul:t]
::    ?:  =(kind %y)
::      get-why
::    get-zed
::  =/  =body:t
::    ?:  =(kind %y)
::      (~(gut of why.farm) / *body:t)
::    (~(gut of zed.farm) / *body:t)
::  =.  body  (put:on:body:t body dare soul)
::  =.  farm
::    ?:  =(kind %y)
::      farm(why (~(put of why.farm) / body))
::    farm(zed (~(put of zed.farm) / body))
::  =/  kid   ~(tap in ~(key by kid.soil.farm))
::  !.
::  |-
::  ?~  kid
::    farm
::  =.  farm  (rep ~[i.kid] loop(farm (dip ~[i.kid])))
::  $(kid t.kid)
::::
::++  call
::  ~/  %call
::  |=  [=pith:neo not=note:t]
::  ^+  farm
::  ?-  -.not
::    %grow  (grow pith +.not)
::    %cull  (cull pith +.not)
::  ==
::++  grow
::  ~/  %grow
::  |=  $:  =pith
::          cas=(unit (pair rift case))
::          =pail:neo
::          =poem:neo
::      ==
::  ::  XX: check manual casing if foreign ship
::  ^+  farm
::  ?^  cas
::    (grow-at pith u.cas pail poem)
::  =.  dirty  (~(put in dirty) pith)
::  ?~  lom=(~(get of soil) pith)
::    =/  [rest=pith:n bod=(unit body:t)]
::      (~(fit of zed) pith)
::    =/  pfix  (scag (sub (lent pith) (lent rest)) pith)

::    =;  wen=(pair @ud @ud)
::      ::  never bound before
::      (grow-at pith wen pail poem)
::    :-  1
::    ?~  bod  1
::    .+
::    =/  [@ud =soul:t]  (need (ram:on:body:t u.bod))
::    %+  roll  ~(tap by soul)
::    |=  [[kid=pith:n case=@ud] out=@ud]
::    ^-  @ud
::    :: ~&  checking/[pfix=pfix kid=kid par=par pith=pith]
::    ?.  (is-parent:u rest kid)
::      out
::    (add out case)
::  ?~  las=~(last or u.lom)
::    ~&  weird-empty-loam/pith
::    (grow-at pith [1 1] pail poem)
::  ?~  dir=(~(got or u.lom) k.u.las)
::    ::  binding over empty, inc breach
::    =/  [=rift =case]   [+(k.u.las) r.u.las]
::    (grow-at pith [rift case] pail poem)
::  ?~  cas=(ram:on:dirt:t u.dir)
::    ~|  weird-empty-dirt/pith
::    !!
::  ::  binding over normal, no breach
::  ::  XX: enforce that =((~(uni in new-poke) old-poke) new-poke)
::  (grow-at pith [k.u.las +(key.u.cas)] pail poem)
::::
::++  grow-at
::  ~/  %grow-at
::  |=  $:  =pith
::          at=(pair rift case)
::          =pail:neo
::          =poem:neo
::      ==
::  ^+  farm
::  =.  farm  (bump-case pith q.at)
::  =/  =data:t  [=oath:neo & pail poem]
::  =/  =loam:t  (fall (~(get of soil) pith) *loam:t)
::  =/  [=span:neo =dirt:t]
::    =/  res  (~(gat or loam) p.at)
::    ?~  res 
::      [[p.at q.at 0] *dirt:t]
::    ?~  q.u.res
::      ~|  %weird-case-overwriting-culled
::      !!
::    [p u.q]:u.res
::  =.  dirt  (put:on:dirt:t dirt q.at data)
::  =.  loam
::    (~(put or loam) [span `dirt])
::  =.  soil  (~(put of soil) pith loam)
::  farm
::::
::++  cull
::  ~/  %cull
::  |=  [=pith:neo rif=(unit rift)]
::  ^+  farm
::  ?^  rif
::    (cull-at pith u.rif)
::  =.  dirty  (~(put in dirty) pith)
::  =.  now  
::    ?.  cache-flag  ~
::    ?~  now  ~
::    :-  ~
::    (~(del of u.now) pith)
::  %+  cull-at  pith
::  ::  XX: this path should only be hit in local ship case, XX:
::  ::  assert
::  ?~  lom=(~(get of soil) pith)
::    ~|  weird-cull-nothing/pith
::    mean:(farm:etch farm)
::  +(~(wyt or u.lom))
::::
::++  cull-at
::  ~/  %cull-at
::  |=  [=pith:neo =rift]
::  ^+  farm
::  ?~  lom=(~(get of soil) pith)
::    ~|  weird-cull-nothing/pith
::    !!
::  ?:  (lte rift 1)
::    ~|  weird-cull-rift/[pith rift]
::    !!
::  ?~  dir=(~(got or u.lom) (dec rift))
::    ~|  useless-cull/[pith rift]
::    !!
::  ?~  las=(ram:on:dirt:t u.dir)
::    ~|  cull-empty-dirt/[pith rift]
::    !!
::  =.  farm  (bump-case pith +(key.u.las))
::  =.  u.lom  (~(snoc or u.lom) rift +(key.u.las) ~)
::  =.  soil  (~(put of soil) pith u.lom)
::  farm
::--
--
