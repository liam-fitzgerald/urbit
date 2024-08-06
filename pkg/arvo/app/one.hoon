/-  neo, sole-sur=sole
/+  util=neo-three
/+  default-agent
/+  dbug
/+  libverb=verb
/+  serv=server
/+  shoe
/+  etui
/*  txt-root-fern   %hoon   /one/root/hoon
/*  txt-root-neo    %hoon   /one/neo/hoon
/*  txt-ford-same   %hoon   /neo/cod/std/src/imp/ford-same/hoon
/*  txt-ford-slop   %hoon   /neo/cod/std/src/imp/ford-slop/hoon
/*  txt-ford-slap   %hoon   /neo/cod/std/src/imp/ford-slap/hoon
/*  txt-ford-face   %hoon   /neo/cod/std/src/imp/ford-face/hoon
/*  txt-ford-face   %hoon   /neo/cod/std/src/imp/ford-face/hoon
/*  txt-ford-reef   %hoon   /neo/cod/std/src/imp/ford-reef/hoon
/*  txt-ford-desk   %hoon   /neo/cod/std/src/imp/ford-desk/hoon
/*  txt-ford-desp   %hoon   /neo/cod/std/src/pro/ford-desk/hoon
/*  txt-ford-text   %hoon   /neo/cod/std/src/imp/ford-text/hoon

=>
  |%
  ++  prelude  !>(util)
  ++  dev  |
::  =>  !@(dev ((slog leaf/"tape" ~) .) .)
  ++  mute
    ?:  dev  same
    |*  *
    !.  +<
  --
=,  util
|%
+$  card  $+(card card:agent:gall)
+$  size  _[w=80 h=40]
+$  shell
  $:  cwd=pith:neo
      scope=_[w=80 h=40]
      select=@ud
      here=pith:neo
      =epic:neo
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
      [%cd =pith:neo]
      [%poke p=hoon]
      [%commit ~]
      [%nuke ~]
      [%pill ~]
      [%over =pith:neo]
      [%dbug ~]
      [%reload =pith:neo]
      :: [%make =vial:neo]
  ==
::
+$  state-0
  $+  state-0
  $:  =zion:t
      =wild:t
      =farm:t
      ears=(jug hunt:neo pith:neo)
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
::    |=([cas=@ud p=pith:n] (emit (do-watch-scry (wire %scry) cas (welp pith.hunt p))))
++  do-watch
  |=  [=wire ship=@p =path]
  ^-  card
  (pass wire %agent [ship dap.bowl] %watch path)
::
++  do-watch-pine
  |=  [=wire =pith:n]
  ^-  card
  ?>  ?=(^ pith)
  (do-watch wire (ship:pith:n pith) (pout pine/t.pith))
++  do-watch-yuga
  |=  [=wire =pith:n]
  ?>  ?=(^ pith)
  (do-watch wire (ship:pith:n pith) (pout yuga/t.pith))
++  do-watch-scry
  |=  [=wire case=@ud =pith:n]
  ?>  ?=(^ pith)
  (do-watch wire (ship:pith:n pith) (pout (welp #/scry/[ud/case] t.pith)))
++  do-give-saga
  |=  [paxs=(list path) =saga:n]
  =/  =book:n  (saga:soften saga)
  (fact paxs book/!>(book))
::
++  boot
  ^+  run
  =.  our.farm  our.bowl
  =.  plot.farm  (~(put of:neo plot.farm) ~ *land:t)

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
    ==
  ::  install source
    =/  pax=path  (en-beam byk.bowl(r da/now.bowl) default-pill-tub)
    ~&  reading-pil/pax
    ?~  jam=(file:space:userlib pax)
      ~&  %no-pill-skipping
      *(axal:neo [kind=?(%txt %hoon) src=@t])
    ;;((axal:neo [kind=?(%txt %hoon) src=@t]) (cue ;;(@ u.jam)))
  ::
    ~
  ==
++  on-poke
  |=  [=mark =vase]
  ^+  run
  ?:  =(%one-seed mark)
    (harvest !<(crop=seed:t vase))
  ?:  =(%handle-http-request mark)
    fe-abet:(fe-call:(fe /) %http !<([@ta inbound-request:eyre] vase))
  ?:  =(%noun mark)
    ?+    q.vase
      =+  ;;(=task:fern:t q.vase)
      fe-abet:(fe-call:(fe p.task) q.task)
    ::
        [%dbug pax=*]
      =+  ;;(pax=path pax.q.vase)
      %-  print:(farm:etch (~(dip plow farm) (pave:neo pax)))
      run
    :: 
        %apt
      ~&  apt=~(apt plow farm)
      run
    ::
        [%zed pax=*]
      ~&  print:(epic:etch (~(look plow farm) %z (pave:neo ;;(path pax.q.vase))))
      run


        %dbug
      %-  print:(farm:etch farm)
      run
    :: 
        [%src path=*]
      =+  ;;(=path path.q.vase)
      =+  .^(src=@t %cx path)
      =/  src=pith:neo  /$/xeno
      =<  fe-abet
      %^  fe-call:(fe /)  %bush  src
      [(pave:neo (snip (slag 4 path))) %make %hoon `hoon/!>(src) sig/!>(~)]
    ::
        [%pill path=*]
      (make-pill ;;(pax=path path.q.vase))
    ==
  ?:  =(%dill-poke mark)
    (curse !<([@ta dill-belt:dill] vase))
  ?>  |(=(%fern-task mark) =(%one-task mark))
  =+  !<(=task:fern:t vase)
  fe-abet:(fe-call:(fe p.task) q.task)
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
    [%fern *]  fe-abet:(fe-take:(fe /) t.wire sign)
  ==
::
++  on-arvo
  |=  [=wire syn=sign-arvo]
  ^+  run
  ~&  wire/wire
  run
++  on-peek
  |=  =path
  ^-  (unit (unit cage))
  [~ ~]
++  grab
  |=  =pith:n
  ^-  (unit pail:n)
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
  =|  pill=(axal:neo [kind=?(%hoon %txt) src=@t])
  |-  
  ?~  files
    ~&  writing-pill/~(key by ~(tar of pill))
    (write-jamfile (jam pill))
  =+  .^(src=@t %cx `path`(welp pax i.files))
  =/  ext=knot  (rear i.files)
  ?.  ?=(?(%hoon %txt) ext)
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
  =.  zion  (~(put of zion) pith fern)
  fe-abet:fe-boot:(fe pith)
::
++  harvest
  |=  crop=seed:t
  ^+  run
  =/  germ=(list [=pith:neo =note:t])
    ~(aap of crop)
  |-  ^+  run
  =*  loop-germ  $
  ?~  germ
    run
  =/  =hunt:neo  [%x pith.i.germ]
  =/  listeners  ~(tap in (~(get ju ears) hunt))
  |-
  ?~  listeners
    loop-germ(germ t.germ)
  =.  run
    fe-abet:(fe-hear:(fe i.listeners) hunt)
  $(listeners t.listeners)
++  on-bush-move
  |=  =move:bush:t
  ^+  run
  =/  pit=pith:neo  -:(~(fit of zion) p.q.move)
  fe-abet:(fe-call:(fe pit) %bush move)
::
++  fe
  |=  =pith:t
  =/  =fern:t  (~(got of zion) pith)
  |%
  ++  fe-abet  
    run(zion (~(put of zion) pith fern))
  ++  fe  .
  ++  fe-farm  (~(dip plow farm) pith)
  ++  fe-mien
    ^-  mien:fern:t
    [our.bowl pith now.bowl eny.bowl heed.fern fe-farm]
  ++  fe-code  code.fern(+6.q fe-mien)
  ++  fe-hear
    |=  =hunt:neo
    (fe-call %hear hunt)
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
    |=  =note:fern:t
    ~>  %bout.[1 %fe-call]
    (fe-ingest (slym (slap fe-code limb/%call) note))
  ++  fe-take
    |=  [wir=(pole knot) =sign:agent:gall]
    ^+  fe
    ?+    wir  ~|(weird-fe-take/wir !!)
        [%gain mode=@ care=@ pith=*]
      =/  =hunt:n  [;;(care:n care.wir) (pave:n pith.wir)]
      abet:(take:(gain hunt) mode.wir sign)
    ==
  ++  fe-hark
    |=  =hunt:neo
    =/  pic=epic:n  (~(look plow farm) %z #/city)
    =/  [rest=pith:n sag=(unit saga:n)]
      (~(fit of pic) pith.hunt)
    =/  found  (sub:pith:n pith.hunt rest)
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
    |=  =hunt:n
    ^+  fe
    abet:start:(gain hunt)


  ++  gain
    |=  =hunt:neo
    =/  =ward:t
      =/  pic=epic:n  (~(look plow farm) %z #/city)
      ?~  sag=(~(get of pic) pith.hunt)
        [care.hunt ~ *deli:t]
      ?>  =(%ward p.q.q.u.sag)
      !<(ward:t q.q.q.u.sag)
    |%
    ++  abet  
      =/  =seed:t  (~(put of *seed:t) [%city pith.hunt] [%grow ~ [ward/!>(ward) *poem:n]])
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
      ^-  care:neo
      ?:  ?=(?(%y %b %c) care.hunt)
        %z
      care.hunt
    ++  watch-yuga  ^+(gain (emit (do-watch-yuga (wire %yuga) pith.hunt)))
    ++  watch-pine  ^+(gain (emit (do-watch-pine (wire %pine) pith.hunt)))
    ++  watch-scry
      |=  [cas=@ud p=pith:n]
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
          =/  =saga:n
            (book:fantasy !<(book:n q.cage.sign))
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
        =+  !<(=yuga:n q.cage.sign)
        =.  deli.ward  deli.ward(yuga yuga, pend |, last `p:(~(got of yuga) /))
        =/  news=(list [=pith:n =aeon:n])  ~(tap of yuga)
        |-
        ?~  news
          gain
        =/  [=pith:n =aeon:n]  i.news
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
      =.  run  (emit %pass /drip %agent [our dap]:bowl %poke fern-task/!>(`task:fern:t`[pith %drip ~]))
      $(io t.io)
    ::
        %arvo
      =.  run  (emit %pass (pout hand.gift) %arvo note.gift)
      $(io t.io)
    ::
        %bush
      =.  run  (emit %pass deal/(pout p.move.gift) %agent [our dap]:bowl %poke fern-task/!>(`task:fern:t`[/ %bush move.gift]))
      $(io t.io)
    ::
        %eyre
      =/  paxs=(list path)  ~[/http-response/[eyre-id.gift]]
      ~&  eyre/gift
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
  =|  here=pith:n
  |=  change=(axal:n ~)
  =<  work
  |%
  ++  build-yuga
    =|  =yuga:n
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
    [(land-to-ever:u u.fil.plot) *oath:n]
  ++  build-yuga-two
    ^-  yuga:neo
    %-  ~(run of (~(look plow farm) %z /))
    |=  =saga:n
    p.saga
    
    
  ++  work   (recite build-yuga-two)
  ++  tell
    |=  [=pith:n =mart:t =yuga:n]
    ^+  run
    ?:  =(~ zed.mart)
      run
    =/  [pax=pith:n change=(unit ~)]  (~(fit of change) pith)
    ?~  change
      run
    (emit (fact ~(tap in zed.mart) yuga/!>(yuga)))
  ++  recite
    =/  pic=epic:n  (~(look plow farm) %z #/mall)
    |=  =yuga:n
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
  |_  =pith:n
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
    |=  =pail:n
    ^-  vial:n
    [p.pail q.q.pail]
  ++  tale
    |=  =tale:n
    ^-  myth:n
    [p.tale (pail q.tale)]
  ++  saga
    |=  =saga:n
    ^-  book:n
    [p.saga (tale q.saga)]
  --
++  fantasy
  |%
  ++  clam
    |=  =stud:n
    ^-  vase
    q:(need (grab (~(pith press:n [%pro stud]) %out)))
  ::
  ++  vial
    |=  =vial:n
    :-  p.vial
    (slym (clam p.vial) q.vial)
  ++  myth
    |=  =myth:n
    ^-  tale:n
    [p.myth (vial q.myth)]
  ++  book
    |=  =book:n
    ^-  saga:n
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
  ++  move
    |=  =pith:n
    =.  here.sel  pith
    =.  epic.sel  (~(look plow farm) %z here.sel)
    =.  select.sel  0
    draw
  ++  code
    |=  =stud:neo
    ^-  @t
    %-  spat
    ^-  path
    ?@  stud
      /kelvin/(scot %ud zuse)/[stud]
    =,  stud
    /(scot %p ship)/[desk]/[mark]

  ++  z
    |%
    ++  stat  `zone:e`[[0 (sub h.scope.sel 5)] [w.scope.sel 5]]
    ++  tree  `zone:e`[[0 1] [41 (sub h.scope.sel 1)]]
    ++  head  `zone:e`[[0 0] [w.scope.sel 1]]
    ++  main  `zone:e`[[40 1] [(sub w.scope.sel 41) 20]]
    ++  info  `zone:e`[[40 20] [40 (sub h.scope.sel 20)]]
    ++  poke  `zone:e`[[79 20] [20 (sub h.scope.sel 20)]]
    ++  help  `zone:e`[[99 20] [(sub h.scope.sel 99) (sub h.scope.sel 20)]]
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
  ::
  ++  on-user-belt
    |=  belt=dill-belt:dill
    ^+  spit
    ?+    belt  spit
        [%aro *]   spit
        %r          draw
        %h          ?:(=(~ here.sel) do-bell (move (snip here.sel)))
        %j          draw(select.sel (inc-mod:u select.sel ~(wyt by kid:get-epic)))
        %k          draw(select.sel (dec-mod:u select.sel ~(wyt by kid:get-epic)))
        %l
      (move (snoc here.sel -:(snag select.sel ~(tap aon kid:get-epic))))
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
    =/  =poem:n  p.q.u.sag
    ?:  =(poke.poem ~)  def
    =;  [idx=@ud zo=_zo]
      zo-abet:zo
    %+  roll  ~(tap in poke.poem)
    |=  [=stud:neo idx=_2 zo=_zo]
    :-  +(idx)
    (zo-cord:zo [1 idx] (code stud))
  ::
  ++  draw-info
    ^-  blit:dill
    =/  sag  fil:get-epic
    ?~  sag  (~(cord zi:e info:z) [1 1] 'Nothing here')
    =/  =ever:n  p.p.u.sag
    =/  =pail:n  q.q.u.sag
    =/  =poem:n  p.q.u.sag
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
    %+  roll  ~(tap aon kid.pic)
    |=  [[=iota =epic:n] [spot=_[x=1 y=1] idx=@ud zo=_(zo-apex:zo:e tree:z)]]
    :+  spot(y (add y.spot 1))  +(idx)
    =/  val  (scod:u iota)
    ?.  =(select.sel idx)
      (zo-cord:zo spot val)
   (zo-stub:zo spot ~[[stye (tuba (trip val))]])
  ::
  ++  draw-status
    ^-  blit:dill
    [%mor ~]
  ++  draw-main
    ^-  blit:dill
    =/  pic  get-epic
    ?~  fil.pic
      (~(cord zi:e main:z) [1 1] 'Nothing here')
    =/  =pail:n  q.q.u.fil.pic
    %+  ~(wain zi:e main:z)  [1 1]
    (scag (sub h:main:z 2) (turn (~(win re (sell q.pail)) [0 (sub w:main:z 2)]) crip))
  ::
  ++  on-belt
    |=  belt=dill-belt:dill
    ^+  spit
    ?+  belt  (on-user-belt belt)
      ::
        [%hey *]  draw
        [%yow *]  draw
        [%cru *]  ~&(%error draw)
        [%rez *]  draw:(on-size [p q]:belt)
    ==
  --
::
++  tell
  |_  =pith:neo
  ++  get
    ^-  (unit (unit saga:neo))
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
    |=  [[kid=pith:neo =saga:neo] seen=(set pith:neo) res=(list (list dime))]
    ^-  [(set pith:neo) (list (list dime))]
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
      |=  =stud:neo
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
      =/  =ever:n  p.p.u.u.sag
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
      =/  =pail:n  q.q.u.u.sag
      ?:  =(%tang p.pail)
        !<(tang q.pail)
      (sell q.pail)^~
    ==
  --
--
