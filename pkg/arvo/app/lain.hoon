/-  sole-sur=sole
/-  sept
/+  default-agent
/+  dbug
/+  libverb=verb
/+  serv=server
/+  shoe
/+  etui
/*  txt-root-fern   %hoon   /one/root/hoon
/*  txt-root-neo    %hoon   /one/neo/hoon
/*  txt-neo-sur     %hoon  /sur/neo/hoon
/*  txt-ford-same   %hoon   /neo/cod/std/src/imp/ford-same/hoon
/*  txt-ford-slop   %hoon   /neo/cod/std/src/imp/ford-slop/hoon
/*  txt-ford-slap   %hoon   /neo/cod/std/src/imp/ford-slap/hoon
/*  txt-ford-face   %hoon   /neo/cod/std/src/imp/ford-face/hoon
/*  txt-ford-face   %hoon   /neo/cod/std/src/imp/ford-face/hoon
/*  txt-ford-reef   %hoon   /neo/cod/std/src/imp/ford-reef/hoon
/*  txt-ford-desk   %hoon   /neo/cod/std/src/imp/ford-desk/hoon
/*  txt-ford-desp   %hoon   /neo/cod/std/src/pro/ford-desk/hoon
/*  txt-ford-text   %hoon   /neo/cod/std/src/imp/ford-text/hoon
/*  txt-ford-clay-src   %hoon   /neo/cod/std/src/imp/ford-clay-src/hoon
/*  txt-ford-all-grow   %hoon   /neo/cod/std/src/imp/ford-all-grow/hoon
/*  txt-ford-all-grab   %hoon   /neo/cod/std/src/imp/ford-all-grab/hoon
=>
  |%
  ++  base  !>([sept serv=serv ..zuse])
  ++  neo-sur  (slap base (rain /sur/neo/hoon txt-neo-sur))
  ++  prelude
    =/  sur  neo-sur
    (slop !>(sept) (slop sur(p [%face %neo p.sur]) !>(..zuse)))
  :: ++  prelude  !>([sept ..zuse])
  +$  boot-pros  ?(%hoon %txt %png %css %js)
  ++  dev  |
::  =>  !@(dev ((slog leaf/"tape" ~) .) .)
  ++  mute
    ?:  dev  same
    |*  *
    !.  +<

  --
=,  sept
|%
+$  card  $+(card card:agent:gall)
+$  size  _[w=80 h=40]
+$  shell
  $:  cwd=pith:t
      scope=_[w=120 h=80]
      select=@ud
      here=pith:t
      =epic:t
      scroll=@ud
      search=(unit [buf=@t cur=@ud])
      filter=(unit @t)
      hist=(list pith:t)
      :: by-folder=`?`_&
      ~
  ==
++  sole
  |%
  +$  id  sole-id:sole-sur
  +$  action  sole-action:sole-sur
  +$  effect  sole-effect:sole-sur
  --

::
+$  hull
  $%  [%ls ~]
      [%show ~]
      [%tree depth=@ud]
      [%cd =pith:t]
      [%poke p=hoon]
      [%commit ~]
      [%nuke ~]
      [%pill ~]
      [%over =pith:t]
      [%dbug ~]
      [%reload =pith:t]
      :: [%make =vial:t]
  ==
::
+$  state-0
  $+  state-0
  $:  =zion:t
      =wild:t
      =farm:t
      ears=(jug hunt:t pith:t)
      shells=(map @ta shell)
  ==
--
=|  state-0
=*  state  -
=<
  %+  libverb  |
  %-  agent:dbug
  ^-  agent:gall
  |_  =bowl:gall
  +*  this  .
      run   ~(. +> [bowl ~ *seed:t])
      def   ~(. (default-agent this %|) bowl)
  ++  on-init
    ^-  (quip card _this)
    =^  cards  state
      abet:boot:run
    [cards this]
  ++  on-save  !>(state)
  ++  on-load
    |=  vax=vase
    =+  !<(sta=state-0 vax)
    `this(state sta)
  ++  on-poke
    |=  =cage
    ^-  (quip card _this)
    =^  cards  state
      abet:(on-poke:run cage)
    [cards this]
  ++  on-watch
    |=  =path
    ^-  (quip card _this)
    =^  cards  state
      abet:(on-peer:run path |)
    [cards this]
  ++  on-leave
    |=  =path
    ^-  (quip card _this)
    =^  cards  state
      abet:(on-peer:run path &)
    [cards this]
  ::
  ++  on-agent
    |=  [=wire =sign:agent:gall]
    ^-  (quip card _this)
    ?:  =(1 1)
      (on-agent:def wire sign)
    =^  cards  state
      abet:(on-agent:run wire sign)
    [cards this]
  ++  on-arvo
    |=  [=wire syn=sign-arvo]
    ^-  (quip card _this)
    =^  cards  state
      abet:(on-arvo:run wire syn)
    [cards this]
  ++  on-fail  on-fail:def
  ++  on-peek  on-peek:run
  --
|_  [=bowl:gall cards=(list card) =seed:t]
::  |aux: auxilliary helpers
+|  %aux
++  abet  
  =?  cards  !=(0 ~(wyt of seed))
    :_(cards [%pass / %agent [our dap]:bowl %poke one-seed/!>(seed)])
  [(flop cards) state]
++  run  .
++  our  our.bowl
++  emit  |=(=card run(cards [card cards]))
++  pass  |=([=wire =note:agent:gall] `card`[%pass wire note])
++  give  |=(=gift:agent:gall [%give gift])
++  fact  |=([pas=(list path) =cage] (give %fact pas cage))
++  emil  |=(caz=(list card) run(cards (welp (flop caz) cards)))
++  def   ~(. (default-agent run %|) bowl)
++  xeno  ~(. ^xeno wild)
::++  watch-yuga  (emit (do-watch-yuga (wire %yuga) pith.hunt))
::  ++  watch-pine  (emit (do-watch-pine (wire %pine) pith.hunt))
::  ++  watch-scry
::    |=([cas=@ud p=pith:t] (emit (do-watch-scry (wire %scry) cas (welp pith.hunt p))))
++  do-watch
  |=  [=wire ship=@p =path]
  ^-  card
  (pass wire %agent [ship dap.bowl] %watch path)
::
++  do-watch-pine
  |=  [=wire =pith:t]
  ^-  card
  ?>  ?=(^ pith)
  (do-watch wire (ship:pith:t pith) (pout pine/t.pith))
++  do-watch-yuga
  |=  [=wire =pith:t]
  ?>  ?=(^ pith)
  (do-watch wire (ship:pith:t pith) (pout yuga/t.pith))
++  do-watch-scry
  |=  [=wire case=@ud =pith:t]
  ?>  ?=(^ pith)
  (do-watch wire (ship:pith:t pith) (pout (welp #/scry/[ud/case] t.pith)))
++  do-give-saga
  |=  [paxs=(list path) =saga:t]
  =/  =book:t  (saga:soften saga)
  (fact paxs book/!>(book))
::
++  boot
  ^+  run
  =.  our.farm  our.bowl
  =.  plot.farm  (~(put of:t plot.farm) ~ *land:t)

  =/  vaz  (vang & /root)
  =/  hon  
    (road |.((scan (trip txt-root-neo) (full (ifix [gay gay] tall:vaz)))))
  %+  install  ~
  %+  slym  (slap prelude hon)
  :*  
    :~  [%ford-same txt-ford-same]
        [%ford-face txt-ford-face]
        [%ford-slop txt-ford-slop]
        [%ford-text txt-ford-text]
        [%ford-slap txt-ford-slap]
        [%ford-desk txt-ford-desk]
        [%ford-clay-src txt-ford-clay-src]
        [%ford-all-grow txt-ford-all-grow]
        [%ford-all-grab txt-ford-all-grab]
    ==
  ::  install source
    =/  pax=path  (en-beam byk.bowl(r da/now.bowl) default-pill-tub)
    ~&  reading-pil/pax
    ?~  jam=(file:space:userlib pax)
      ~&  %no-pill-skipping
      *(axal:t [kind=boot-pros src=@t])
    ;;((axal:t [kind=boot-pros src=@t]) (cue ;;(@ u.jam)))
  ::
    ~
  ==
++  on-poke
  |=  [=mark =vase]
  ^+  run
  ?:  =(%one-seed mark)
    (harvest !<(crop=seed:t vase))
  ?:  =(%handle-http-request mark)
    fe-abet:(fe-call:(fe /$/xeno /) / %http !<([@ta inbound-request:eyre] vase))
  ?:  =(%noun mark)
    ?+    q.vase  !!
::    =+  ;;(=task:fern:t q.vase)
::    fe-abet:(fe-call:(fe p.task) q.task)
    ::
        [%dbug pax=*]
      =+  ;;(pax=path pax.q.vase)
      %-  print:(farm:etch (~(dip plow farm) (pave:t pax)))
      run
    :: 
        %apt
      ~&  apt=~(apt plow farm)
      run
    ::
        [%zed pax=*]
      ~&  print:(epic:etch (~(look plow farm) %z (pave:t ;;(path pax.q.vase))))
      run


        %dbug
      %-  print:(farm:etch farm)
      run
    :: 
        [%src path=*]  !!
:::   =+  ;;(=path path.q.vase)
:::   =+  .^(src=@t %cx path)
:::   =/  src=pith:t  /$/xeno
:::   =<  fe-abet
:::   %^  fe-call:(fe /$/xeno src)  %bush
:::   [(pave:t (snip (slag 4 path))) %make %hoon `hoon/!>(src) sig/!>(~)]
    ::
        [%pill path=*]
      (make-pill ;;(pax=path path.q.vase))
    ==
  ?:  =(%dill-poke mark)
    (curse !<([@ta dill-belt:dill] vase))
  ?>  |(=(%fern-move mark))
  =+  !<(=move:fern:t vase)
  fe-abet:(fe-call:(fe p.move /) q.move)
++  on-peer
  |=  [=(pole knot) stop=?]
  ^+  run
  ?+    pole  ~|(on-peer-weird/pole !!)
  ::
      [%sole *]  run
      [%http-response *]  run

      [%yuga rest=*]  run
      [%scry rest=*]  run
      [%pine rest=*]  run
      [%dill ses=@ ~]
    ?:  stop  run
    (hex ses.pole)
  ==
::
++  on-agent
  |=  [=wire =sign:agent:gall]
  ^+  run
  ?+  wire  +:(on-agent:def wire sign)
    [%fern *]  fe-abet:(fe-take:(fe /$/xeno /) t.wire sign)
  ==
::
++  on-arvo
  |=  [=wire syn=sign-arvo]
  ^+  run
  fe-abet:(fe-arvo:(fe /$/xeno /) wire syn)
++  on-peek
  |=  =path
  ^-  (unit (unit cage))
  [~ ~]
++  grab
  |=  =pith:t
  ^-  (unit pail:t)
  =/  pic  (~(look plow farm) %x pith)
  ?~  fil.pic
    ~
  `q.q.u.fil.pic
::
++  default-pill-tub
  /neo-jam/atom
++  write-jamfile
  |=  jam=@
  ^+  run
  =;  =toro:clay
    (emit %pass /file %arvo %c %info toro)
  (foal:space:userlib (en-beam byk.bowl default-pill-tub) atom/!>(jam))

++  make-pill
  |=  pax=path
  ^+  run
  =+  .^(files=(list path) %ct pax)
  =.  files  (turn files (cury slag (sub (lent pax) 3)))
  ~&  files/files
  =|  pill=(axal:t [kind=boot-pros src=@t])
  |-  
  ?~  files
    ~&  writing-pill/~(key by ~(tar of pill))
    (write-jamfile (jam pill))
  =+  .^(src=@t %cx `path`(welp pax i.files))
  =/  ext=knot  (rear i.files)
  ?.  ?=(boot-pros ext)
    ~&  unknown-ext-skipping/[ext i.files]
    $(files t.files)
  =.  pill  (~(put of pill) (snip i.files) [ext src])
  $(files t.files)
::
++  install
  |=  [=pith:t vax=vase]
  =/  =fern:t
    :*  vax
        *(axal:t ever:t)
        *(set hunt:t)
    ==
  ~!  zion
  =.  zion  (~(put of zion) pith fern)
  fe-abet:fe-boot:(fe /$/xeno pith)
::
++  harvest
  |=  crop=seed:t
  ^+  run
  !!
::
++  fe
  |=  [src=pith:t =pith:t]
  =/  =fern:t  (~(got of zion) pith)
  |%
  ++  fe-abet  
    run(zion (~(put of zion) pith fern))
  ++  fe  .
  ++  fe-farm  (~(dip plow farm) pith)
  ++  fe-mien
    ^-  mien:fern:t
    [our.bowl src [p/our.bowl pith] now.bowl eny.bowl heed.fern fe-farm]
  ++  fe-code  code.fern(+6.q fe-mien)
  ++  fe-hear
    |=  =hunt:t
    ^+  fe
    !!
  ++  fe-boot
    (fe-ingest (slap fe-code limb/%boot))
  ++  fe-ingest
    |=  res=vase
    =+
      ~>  %bout.[1 %fe-devase]
      !<([new=seed:t io=(list gift:fern:t)] (slot 2 res))
    =.  farm  
      ~>  %bout.[1 %fe-plant]
      (~(plant plow fe-farm) (~(rep of *seed:t) pith new))
    =.  fe    
      ~>  %bout.[1 %fe-deal]
      (fe-deal io)
    :: =.  fe  (fe-tell new)
    =.  code.fern  (slot 3 res)
    fe
  ::
  ++  fe-call
    |=  =card:fern:t
    ~>  %bout.[1 %fe-call]
    (fe-ingest (slym (slap fe-code limb/%call) card))
  ::
  ++  fe-arvo
    |=  [wir=(pole knot) syn=sign-arvo]
    ^+  fe
    (fe-call / %arvo (pave:t wir) syn)
  ::
  ++  fe-take
    |=  [wir=(pole knot) =sign:agent:gall]
    ^+  fe
    ?+    wir  ~|(weird-fe-take/wir !!)
        [%gain mode=@ care=@ pith=*]
      =/  =hunt:t  [;;(care:t care.wir) (pave:t pith.wir)]
      abet:(take:(gain hunt) mode.wir sign)
    ==
  ++  fe-hark
    |=  =hunt:t
    =/  pic=epic:t  (~(look plow farm) %z #/city)
    =/  [rest=pith:t sag=(unit saga:t)]
      (~(fit of pic) pith.hunt)
    =/  found  (sub:pith:t pith.hunt rest)
    ?~  sag
      (fe-start hunt) 
    ?>  =(%ward p.q.q.u.sag)
    =+  !<(=ward:t q.q.q.u.sag)
    ?+    [mode.ward care.hunt]
      ::  default
      (fe-start hunt)
        [%x %x]
      ?~  rest
        ~&  %resubscribe
        fe
      (fe-start hunt)
    ::
        [%z %x]
      ~&  %resub-zx
      fe
    ::
        [%x %z]
      (fe-start hunt)
    ==
  ++  fe-start
    |=  =hunt:t
    ^+  fe
    abet:start:(gain hunt)


  ++  gain
    |=  =hunt:t
    =/  =ward:t
      =/  pic=epic:t  (~(look plow farm) %z #/city)
      ?~  sag=(~(get of pic) pith.hunt)
        [care.hunt ~ *deli:t]
      ?>  =(%ward p.q.q.u.sag)
      !<(ward:t q.q.q.u.sag)
    |%
    ++  abet  
      =/  =seed:t  (~(put of *seed:t) [%city pith.hunt] [%grow ~ [ward/!>(ward) *poem:t]])
      fe(farm (~(plant plow farm) seed))
    ++  emit
      |=  c=card
      ^+  gain
      =.  run  (^emit c)
      gain
    ++  gain  .
    ++  wire
      |=  =term
      (welp /fern/gain/[term]/[care.hunt] (pout pith.hunt))
    ++   care
      ^-  care:t
      ?:  ?=(?(%y %b %c) care.hunt)
        %z
      care.hunt
    ++  watch-yuga  ^+(gain (emit (do-watch-yuga (wire %yuga) pith.hunt)))
    ++  watch-pine  ^+(gain (emit (do-watch-pine (wire %pine) pith.hunt)))
    ++  watch-scry
      |=  [cas=@ud p=pith:t]
      ^+(gain (emit (do-watch-scry (wire %scry) cas (welp pith.hunt p))))
    ++  start
      ^+  gain
      =/  car  care
      ?+    car  !!
          %z  watch-yuga
      ::
          %x
        ?~  last.deli.ward
          watch-pine
        (watch-scry p.exe.u.last.deli.ward /)
      ==
    ::
    ++  take
      |=  [mode=term =sign:agent:gall]
      ?+    mode  ~|(weird-gain-take/mode !!)
        %yuga  (take-yuga sign)
        %pine  (take-pine sign)
        %scry  (take-scry sign)
      ==
    ++  take-pine
      |=  =sign:agent:gall
      ^+  gain
      =/  car  care
      ?+    car    ~|(weird-care-for-pine/car !!)
          %x
        ?+    -.sign  ~|(weird-take-pine-x/-.sign !!)
            %watch-ack
          ?~  p.sign
            gain
          gain(err.ward `u.p.sign)
        ::
            %fact
          ?>  =(%book p.cage.sign)
          =/  =saga:t
            (book:fantasy !<(book:t q.cage.sign))
          =.  deli.ward  deli.ward(pend |, last `p.p.saga)
          ~&  %todo-publish-to-namespace
          gain
        ==
      ==
    ++  take-scry
      |=  =sign:agent:gall
      ^+  gain
      gain
    ::
    ++  take-yuga
      |=  =sign:agent:gall
      ^+  gain
      ?+    -.sign  ~|(weird-take-yuga/-.sign !!)
          %watch-ack
        ?~  p.sign
          gain
        gain(err.ward `u.p.sign)
      ::
          %fact
        ?>  =(%yuga p.cage.sign)
        =+  !<(=yuga:t q.cage.sign)
        =.  deli.ward  deli.ward(yuga yuga, pend |, last `p:(~(got of yuga) /))
        =/  news=(list [=pith:t =aeon:t])  ~(tap of yuga)
        |-
        ?~  news
          gain
        =/  [=pith:t =aeon:t]  i.news
        $(news t.news, gain (watch-scry p.exe.p.aeon pith))
      ::
          %kick
        ?:  pend.deli.ward
          watch-yuga
        gain
      ==
    --
  ++  fe-deal
    |=  io=(list gift:fern:t)
    ^+  fe
    ?~  io
      fe
    =/  =gift:fern:t  i.io
    ?+    -.gift   
       ~&   skipping-fern-gift/-.gift
       $(io t.io) :: XX: fixme
        %hark
      $(io t.io, fe (fe-hark hunt.gift))
    ::
        %drip
      =.  run  (emit %pass /drip %agent [our dap]:bowl %poke fern-move/!>(`move:fern:t`[/ pith %drip ~]))
      $(io t.io)
    ::
        %arvo
      ~&  got-arvo/hand.gift
      =.  run  (emit %pass (pout hand.gift) %arvo note.gift)
      $(io t.io)
    ::
        %bush
      =.  run  (emit %pass deal/(pout p.move.gift) %agent [our dap]:bowl %poke fern-move/!>(`move:fern:t`[p.move.gift p.q.move.gift %bush q.q.move.gift]))
      $(io t.io)
    ::
        %eyre
      =/  paxs=(list path)  ~[/http-response/[eyre-id.gift]]
      =.  run  
        ?-  -.gift.gift
          %head  (emit %give %fact paxs http-response-header/!>(response-header.gift.gift))
          %data  (emit %give %fact paxs http-response-data/!>(dat.gift.gift))
          %done  (emit %give %kick paxs ~)
        ==
      $(io t.io)
    ==
  --
++  lose
  =|  here=pith:t
  |=  change=(axal:t ~)
  =<  work
  |%
  ++  build-yuga
    =|  =yuga:t
    =/  plot  plot.farm
    |-  =*  loop  $
    =/  kids  ~(tap by kid.change)
    |-  
    ?^  kids
      %_    $
          kids  t.kids
          yuga
        ?~  nex=(~(get aon kid.plot) -.i.kids)
          yuga
        loop(plot u.nex, change +.i.kids, here (snoc here -.i.kids))
      ==
    ?~  fil.plot
      yuga
    %+  ~(put of yuga)  here
    [(land-to-ever:u u.fil.plot) *oath:t]
  ++  build-yuga-two
    ^-  yuga:t
    %-  ~(run of (~(look plow farm) %z /))
    |=  =saga:t
    p.saga
    
    
  ++  work   (recite build-yuga-two)
  ++  tell
    |=  [=pith:t =mart:t =yuga:t]
    ^+  run
    ?:  =(~ zed.mart)
      run
    =/  [pax=pith:t change=(unit ~)]  (~(fit of change) pith)
    ?~  change
      run
    (emit (fact ~(tap in zed.mart) yuga/!>(yuga)))
  ++  recite
    =/  pic=epic:t  (~(look plow farm) %z #/mall)
    |=  =yuga:t
    ^+  run
    =*  loop  $
    =/  kids  ~(tap by kid.yuga)
    |-  
    ?^  kids
      %_    $
          kids  t.kids
          run
        loop(pic (~(dip of pic) ~[-.i.kids]), yuga +.i.kids, here (snoc here -.i.kids))
      ==
    =;  =mart:t 
      (tell here mart yuga)
    ?~  fil.pic
      *mart:t
    ?>  =(%mart p.q.q.u.fil.pic)
    !<(mart:t q.q.q.u.fil.pic)
  --
::
++  fiction
  |_  =pith:t
  ++  saga  (need fil:(~(look plow farm) %x pith))
  ++  tell
    |=  paths=(list path)
    %-  emit
    (do-give-saga paths saga)
  ++  scry  (tell ~[(pout (welp /scry/[ud/p.exe.p.p:saga] pith))])
  ++  pine  (tell ~)
  --
::

++  soften
  |%
  ++  pail
    |=  =pail:t
    ^-  vial:t
    [p.pail q.q.pail]
  ++  tale
    |=  =tale:t
    ^-  myth:t
    [p.tale (pail q.tale)]
  ++  saga
    |=  =saga:t
    ^-  book:t
    [p.saga (tale q.saga)]
  --
++  fantasy
  |%
  ++  clam
    |=  =stud:t
    ^-  vase
    q:(need (grab (~(pith press:u [%pro stud]) %out)))
  ::
  ++  vial
    |=  =vial:t
    :-  p.vial
    (slym (clam p.vial) q.vial)
  ++  myth
    |=  =myth:t
    ^-  tale:t
    [p.myth (vial q.myth)]
  ++  book
    |=  =book:t
    ^-  saga:t
    [p.book (myth q.book)]
  --
++  curse
  |=  [ses=@ta belt=dill-belt:dill]
  ^+  run
  ?:  (~(has by shells) ses)
    abet:(on-belt:(spit ses) belt)
  ~&  bad-curse/ses
  run
++  hex
  |=  ses=@ta
  =.  shells  (~(put by shells) ses *shell)
  abet:(move:(spit ses) /)
::
++  spit
  |=  ses=@ta
  =/  sel=shell  (~(got by shells) ses)
  |%
  ++  sub
    |=  [a=@ b=@]
    ?:  (lte a b)
      0
    (^sub a b)
  ++  pop
    ^+  spit
    ?:  =(~ hist.sel)
      do-bell
    =.  spit  
      ?>  ?=(^ hist.sel)
      (move i.hist.sel)
    spit(hist.sel (slag 2 hist.sel))  
  ::
  ++  move
    |=  =pith:t
    ^+  spit
    =.  hist.sel  [here.sel hist.sel]
    =.  here.sel  pith
    =.  scroll.sel  0
    =.  epic.sel  
      ?^  res=(mole |.((~(look plow farm) %z here.sel)))
        u.res
      *epic:t
    =.  select.sel  0
    =.  filter.sel  ~
    =.  search.sel  ~
    draw
  ++  code
    |=  =stud:t
    ^-  @t
    %-  spat
    ^-  path
    ?@  stud
      /kelvin/(scot %ud zuse)/[stud]
    =,  stud
    /(scot %p ship)/[desk]/[mark]

  ++  z
    |%
    ++  stat  `zone:e`[[0 (sub h.scope.sel 3)] [w.scope.sel 3]]
    ++  tree  `zone:e`[[0 1] [41 (sub h.scope.sel 3)]]
    ++  head  `zone:e`[[0 0] [w.scope.sel 1]]
    ++  main  `zone:e`[[40 1] [(sub w.scope.sel 41) 40]]
    ++  info  `zone:e`[[40 40] [30 (sub h.scope.sel 42)]]
    ++  poke  `zone:e`[[69 40] [30 (sub h.scope.sel 42)]]
    ++  help  `zone:e`[[98 40] [30 (sub h.scope.sel 42)]]
    ++  all  `zone:e`[[0 0] scope.sel]
    --
  ++  e  etui
  ++  abet  run(shells (~(put by shells) ses sel))
  ++  spit  .
  ++  do-blit
    |=  =blit:dill
    =/  =cage  dill-blit+!>(blit)
    =/  card   [%give %fact ~[/dill/[ses]] cage]
    =.  run  (emit card)
    spit
  ++  do-bell  (do-blit %bel ~)
  ++  scroll
    |=  way=?(%u %d %l %r)
    =/  kids  get-filtered-kids
    =/  sizes=(list @ud)  (reap (lent kids) 30)
    =^  point=@ud  scroll.sel
      (generic-scroll:e sizes select.sel [scroll.sel (sub h:tree:z 4)] way)
    =.  select.sel  point
    draw
  ++  on-user-search
    |=  =belt:dill
    ?>  ?=(^ search.sel)
    ?:  ?=([%ret ~] belt)
      draw(search.sel ~)
    =.  u.search.sel
      (generic-input:e u.search.sel belt)
    draw(filter.sel `buf.u.search.sel)
  ++  get-filtered-kids
    =/  kids  ~(tap aon kid:get-epic)
    ?~  filter.sel
      kids
    %+  skim  kids
    |=  [=iota *]
    =/  rendered  (scod:u iota)
    =(u.filter.sel (end [3 (met 3 u.filter.sel)] rendered))
  ::
  ++  on-user-belt
    |=  =belt:dill
    ^+  spit
    ?^  search.sel
      (on-user-search belt)
    ?+    belt  ~&(weird-belt/belt spit)
        [%aro *]   spit
        %~-~2f.     draw(search.sel `['' 0])
        %p          spit(run (make-pill (en-beam byk.bowl(r da/now.bowl) /neo/cod/std/src)))
        %b          pop
        %r          draw
        %h          ?:(=(~ here.sel) do-bell (move (snip here.sel)))
        %j          (scroll %d)
        %k          (scroll %u)
        %l
      (move (snoc here.sel -:(snag select.sel get-filtered-kids)))
        %c
      spit(run (emit (pass / %agent [our %hood] %poke kiln-commit/!>([q.byk.bowl |]))))
        %'J'
      =/  sag  fil:get-epic
      ?~  sag
        do-bell
      ?.  =(p.q.q.u.sag %pith)
        do-bell
      (move (slag 1 !<(pith:t q.q.q.u.sag)))
    ==
  ++  on-size
    |=  siz=size
    spit(sel sel(scope siz))
  ++  draw-poke
    ^-  blit:dill
    =/  =stye
      :-  (sy %un ~)
      [%k %w]
    =/  zo   (zo-stub:(zo-apex:zo:e poke:z) [1 1] ~[[stye (tuba "Pokes:")]])
    =/  sag  fil:get-epic
    =/  def  zo-abet:(zo-cord:zo [1 2] 'No pokes here')
    ?~  sag  def
    =/  =poem:t  p.q.u.sag
    ?:  =(poke.poem ~)  def
    =;  [idx=@ud zo=_zo]
      zo-abet:zo
    %+  roll  ~(tap in poke.poem)
    |=  [=stud:t idx=_2 zo=_zo]
    :-  +(idx)
    (zo-cord:zo [1 idx] (code stud))
  ::
  ++  draw-info
    ^-  blit:dill
    =/  sag  fil:get-epic
    ?~  sag  (~(cord zi:e info:z) [1 1] 'Nothing here')
    =/  =ever:t  p.p.u.sag
    =/  =pail:t  q.q.u.sag
    =/  =poem:t  p.q.u.sag
    =/  zo  (zo-apex:zo:e info:z)
    =.  zo  (zo-cord:zo [1 1] (crip "data: {(trip (code p.pail))}"))
    =.  zo  (zo-cord:zo [1 2] (crip "code: {(trip (code code.poem))}"))
    =.  zo  (zo-cord:zo [1 3] (crip "%x case: {(scow %ud p.exe.ever)}"))
    =.  zo  (zo-cord:zo [1 4] (crip "%y case: {(scow %ud p.why.ever)}"))
    zo-abet:(zo-cord:zo [1 5] (crip "%z case: {(scow %ud p.zed.ever)}"))

  
  ++  draw-head
    ^-  blit:dill
    =/  val=tape  (spud (pout p/our.bowl here.sel))
    =/  =stye
      :-  (sy %un ~)
      [%k %w]
    zo-abet:(zo-stub:(zo-apex:zo:e head:z) [0 0] ~[[stye (tuba val)]])
  ++  draw-border
    ^-  blit:dill
    =/  =stye  [~ [%k %w]]
    =/  tyl  [`@c`'-' `@c`'|' `@c`'+']
    :-  %mor
    :~  (~(line zi:e main:z) stye ~ tyl)
        (~(line zi:e tree:z) stye ~ tyl)
        (~(line zi:e info:z) stye ~ tyl)
        (~(line zi:e poke:z) stye ~ tyl)
        (~(line zi:e help:z) stye ~ tyl)
    ==
  ++  draw-help
    ^-  blit:dill

    %+  ~(wain zi:e help:z)  [1 1]
    :~  'Help:'
        'h,j,k,l moves as in vim'
        'c will commit %base'
        'p will make a new pill'
    ==
  ++  draw
    %-  do-blit
    :-  %mor
    :~  ~(wipe zi:e all:z)
        draw-border
        draw-tree
        draw-status
        draw-main
        draw-head
        draw-info
        draw-poke
        draw-help
    ==
  ++  get-epic  epic.sel :: (~(look plow farm) %z here.sel)
  ++  draw-tree
    ^-  blit:dill
    =/  pic  get-epic
    =;  [=spot:e idx=@ud zo=_zo:e]
      zo-abet:zo
    =/  =stye
     :-  ~
     [%w %k]
    =/  kids  get-filtered-kids
    =/  sizes=(list @ud)  (reap (lent kids) 30)
    =^  point=@ud  scroll.sel
      (generic-scroll:e sizes select.sel [scroll.sel (sub h:tree:z 3)] ~)
    =.  select.sel  point
    =/  selected  (sub select.sel scroll.sel)
    %+  roll  (scag (sub h:tree:z 3) (slag scroll.sel kids))
    |=  [[=iota =epic:t] [spot=_[x=1 y=1] idx=@ud zo=_(zo-apex:zo:e tree:z)]]
    :+  spot(y (add y.spot 1))  +(idx)
    =/  val  (scod:u iota)
    ?.  =(selected idx)
      (zo-cord:zo spot val)
   (zo-stub:zo spot ~[[stye (tuba (trip val))]])
  ::
  ++  draw-status
    ^-  blit:dill
    ?~  search.sel
      [%mor ~]
    =/  notice=@t  'Searching:'
    :-  %mor
    :~  (~(cord zi:e stat:z) [0 1] 'Searching:')
        (~(cord zi:e stat:z) [+((met 3 notice)) 1] buf.u.search.sel)
        [%hop [x y]:stat:z]
    ==
  ++  draw-main
    ^-  blit:dill
    =/  pic  get-epic
    ?~  fil.pic
      (~(cord zi:e main:z) [1 1] 'Nothing here')
    =/  =pail:t  q.q.u.fil.pic
    %+  ~(wain zi:e main:z)  [1 1]
    ^-  wain
    ?:  =(%tang p.pail)
      %+  scag  (sub h:main:z 2)
      ^-  wain
      %-  zing
      ^-  (list wain)
      %+  turn  !<(tang q.pail)
      |=  =tank 
      ^-  wain
      (turn (~(win re tank) [0 (sub w:main:z 2)]) crip)
    (scag (sub h:main:z 2) (turn (~(win re (sell q.pail)) [0 (sub w:main:z 2)]) crip))
  ::
  ++  on-belt
    |=  belt=dill-belt:dill
    ^+  spit
    ?+  belt  (on-user-belt belt)
      ::
        [%hey *]  draw
        [%yow *]  draw
        [%cru *]  ((slog leaf/"Belt error: {<p.belt>}" q.belt) spit)
        [%rez *]  draw:(on-size [p q]:belt)
    ==
  --
::
++  tell
  |_  =pith:t
  ++  get
    ^-  (unit (unit saga:t))
    `(~(get of (~(look plow farm) %x pith)) /)
  ++  fam  (~(dip plow farm) pith)
  ++  kids  desc
  ++  desc
    |=  depth=@ud
    |-  =*  loop  $
    ^-  (list (list dime))
    =/  pic  (~(look plow farm) %y pith)
    ~&  ~(key by ~(tar of pic))
    :: ~&  desc/[depth=depth keys=~(key by ~(tar of u.pic))]
    =<  +
    %+  roll  ~(tap of pic)
    |=  [[kid=pith:t =saga:t] seen=(set pith:t) res=(list (list dime))]
    ^-  [(set pith:t) (list (list dime))]
    =.  kid  (scag depth kid)
    ?:  (~(has in seen) kid)
      [seen res]
    :-  (~(put in seen) kid)
    =.  pith  (welp pith kid)
    (snoc res row:item)
  ++  item
    =/  sag   get
    |%
    ++  code
      |=  =stud:t
      ^-  @t
      %-  spat
      ^-  path
      ?@  stud
        /kelvin/(scot %ud zuse)/[stud]
      =,  stud
      /(scot %p ship)/[desk]/[mark]
    ++  row
      ^-  (list dime)
      ?~  sag
        :~  t/(spat (pout pith))
            t/'Directory'
            t/''
            ud/0
            ud/0
            ud/0
        ==
      ?~  u.sag
       :~  t/(spat (pout pith))
           t/'Empty'
           t/''
           ud/0
           ud/0
           ud/0
        ==
      =/  =ever:t  p.p.u.u.sag
      :~  t/(spat (pout pith))
          t/(code code.p.q.u.u.sag)
          t/(code p.q.q.u.u.sag)
          ud/p.exe.ever
          ud/p.why.ever
          ud/p.zed.ever
      ==
    --
  ++  dbug
    ^-  (list tank)
    tang:(farm:etch fam)
  ++  show
    ^-  tang
    =/  sag   get
    ?-    sag
        ~         ~[leaf/"Unbound"]
        [~ ~]     ~[leaf/"Bound, empty"]
        [~ ~ *]   
      =/  =pail:t  q.q.u.u.sag
      ?:  =(%tang p.pail)
        !<(tang q.pail)
      (sell q.pail)^~
    ==
  --
--
