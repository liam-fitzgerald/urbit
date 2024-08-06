/-  neo, sole-sur=sole
/+  util=neo-three
/+  default-agent
/+  dbug
/+  libverb=verb
/+  serv=server
/+  shoe
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
+$  card  $+(card card:shoe)
+$  shell
  $:  cwd=pith:neo
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
      shells=(map id:sole shell)
  ==
--
=|  state-0
=*  state  -
=<
  %+  libverb  |
  %-  agent:dbug
  ^-  agent:gall
  %-  (agent:shoe hull)
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
  ++  command-parser
    |=  =id:sole
    ~(parser walk:run id)
  ++  tab-list
    |=  [=id:sole query=@t]
    (~(tab walk:run id) query)
  ++  on-command
    |=  [=id:sole =hull] 
    =^  cards  state
      abet:(~(do walk:run id) hull)
    [cards this]
  ::
  ++  can-connect
    |=  =id:sole
    =(our src):bowl
  ++  on-connect
    |=  =id:sole
    =^  cards  state
      abet:(conn:run id)
    [cards this]
  ++  on-disconnect
    |=  =id:sole
    =^  cards  state
      abet:~(drop walk:run id)
    [cards this]
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
++  conn
  |=  =id:sole
  =/  =shell  [~ ~]
  =.  shells  (~(put by shells) id shell)
  ~(start walk id)
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
++  walk
  |_  =id:sole
  ++  start 
    abet:prompt:peel
  ++  drop
    ^+  run
    run(shells (~(del by shells) id))
  ++  peel
    =/  =shell  (~(got by shells) id)
    |%  
    ++  peel  .
    ++  abet  
      run(shells (~(put by shells) id shell))
    ++  tell  ~(. ^tell cwd.shell)
    ++  prompt
      |^
      =;  ef=shoe-effect:shoe
        =.  run  (shoe-ef ef)
        peel
      :-  %sole
      :^  %pro  &  %foo
      ^-  styx
      =,  shell
      %-  snoc
      :_  '> '
      ^-  (list @t)
      %-  zing
      ^-  (list (list @t))
      %+  turn  cwd
      |=  =iota:neo
      ^-  (list @t)
      =-  ~['/' -]
      ?@  iota  iota
      (scot iota)
      ++  un
        `styl`[`%un ~ ~]
      --
    ++  cwd
      |%
      ++  get  cwd.shell
      ++  set  |=(p=pith:neo =.(cwd.shell p prompt))
      --
    --
  ++  lily
    |*  [naf=@ sab=rule]
    =+  vex=(sab [1 1] (trip naf))
    ?~  q.vex  ~  
    [~ u=p.u.q.vex] 
  ++  default-list
    ^-  (list [@t tank]) 
    :~  'ls'^leaf/"List child shrubs at current path"
        'cd'^leaf/"Change directory"
        '.'^leaf/"Print node at path"
        't'^leaf/"List child shrubs at current path, recursively"
        'd'^leaf/"make pill"
        'b'^leaf/"Run |commit %{(trip q.byk.bowl)}"
        'n'^leaf/"Nuke, commit, restart"
        :: 'p'^leaf/"manual poke (takes [=stud val=*])"
        :: 'r'^leaf/"start form (takes form-name)"
    ==
  ++  tab
    |=  query=@t 
    ?:  =(1 1)
      default-list
    =/  query  (trip query)
    =+  vex=(parser [1 1] query)
    ?~  q.vex
      default-list
    =/  [[? =hull] =nail]  u.q.vex
    =/  parsed  (scag (sub (lent query) (lent q.nail)) query)
    |^  ^-  (list [@t tank])
    ?+  -.hull  ~
      %cd  (cd pith.hull)
    ==
    ++  cd
      |=  =pith:neo
      ^-  (list [@t tank])
      *(list [@t tank])
::    =/  dip  (dip:of-top pith.name)
::    =/  last
::      ?:(=(~ pith.name) %$ (rear pith.name))
::    =/  remove-len  (met 3 (show-iota last))
::    =?  pith.name  =([~ ~] dip)
::      (snip pith.name)
::    =?  parsed     =([~ ~] dip)
::      (scag (sub (lent parsed) remove-len) parsed)
::    =.  dip
::      (dip:of-top pith.name)
::    ?:  =(~ kid.dip)
::      ~
::    %+  turn  ~(tap by kid.dip)
::    |=  [seg=iota ax=(axal:neo room:neo)]
::    ^-  [@t tank]
::    :_  *tank
::    %+  cat  3
::    :-  (crip parsed)
::    ?@  seg  seg
::    (scot seg)
    --
  ++  parser
    |^  ^+  |~(nail *(like [? hull]))
    =-  ;~  pose
          (stag & (cold commit/~ (jest 'b')))
          (stag & (cold nuke/~ (jest 'n')))
          (stag & (cold pill/~ (jest 'd')))
          (stag & (cold dbug/~ (jest 'e')))
          (stag & (cold reload/~ (jest 'r')))
          -
        ==
    %+  stag  |
    ;~  pose
      :: (csym %ls (easy ~))

      (cold ls/~ (jest 'ls'))
      (cold show/~ dot)
      :: (cold ford/~ (jest 'f'))
      (stag %tree ;~(pfix (jest 't') dem:ag))

      :: (stag %race ;~(pfix (jest 'r') ace sym))
      :: (stag %poke ;~(pfix (jest 'p') ace van))
    ::
      cd
      (stag %over ;~(pfix (jest 'o') ace stip:neo))
      :: ;~(pfix wut (cold clay/~ (jest 'clay')))
      :: ;~(pfix hax (cold comm/~ (star prn)))
    ==
    ++  van  tall:(vang & /test)

    ++  cd
      :: ^-  _|~(nail *(like hull))
      :: %+  csym  %cd 
      %+  stag  %cd
      %+  ifix  [(jest 'cd ') (easy ~)]
      ;~  pose
        stip:neo
        %+  sear
          |=  [kets=(list *) =pith:neo]
          ^-  (unit pith:neo)
          =/  cwd  get:cwd:peel
          =/  up  (lent kets)
          ?:  (gth up (lent cwd))
            ~
          =.  cwd  (scag (sub (lent cwd) up) cwd)
          `(welp cwd pith)
        ;~(plug (star ket) (more fas spot:stip:neo))
      ==
    ++  csym
      |*  [term=* rul=rule]
      (stag term ;~(pfix (jest term) rul))
    --
  ++  shoe-ef
    |=  ef=shoe-effect:shoe
    ^+  run
    (emit %shoe ~[id] ef)
  ++  do 
    |=  =hull
    |^  ^+  run
    ?-    -.hull 
        %ls     (tree 1)
        %over   abet:(set:cwd:peel (welp pith.hull get:cwd:peel))
        %cd     abet:(set:cwd:peel pith.hull)
        %poke   (do-poke p.hull)
        %tree   (tree depth.hull)
        %commit   commit
        %pill     (make-pill (en-beam byk.bowl /neo/cod/std/src))
        %reload   (on-poke %noun !>([%src (en-beam byk.bowl (snoc :_(%hoon (pout neo/get:cwd:peel))))]))
        %nuke
      =.  run   (poke-hood kiln-nuke/!>([dap.bowl |]))
      =.  run   commit
      %-  poke-hood
      ::
      =+  .^(=cone:clay %cx /(scot %p our.bowl)//(scot %da now.bowl)/domes)
      =/  =dome:clay  (~(gut by cone) [our.bowl q.byk.bowl] *dome:clay)
      =+  ((slog ?:(=(%live liv.dome) ~ ['kiln: desk not live' ~])) ~)
      :-  %kiln-rein
      !>([q.byk.bowl (~(put by ren.dome) dap.bowl &)])
    ::
        %show
      =/  =effect:sole  [%tan show:tell:peel]
      (shoe-ef %sole effect)
    ::
        %dbug
      =/  =effect:sole  [%tan dbug:tell:peel]
      (shoe-ef %sole effect)
    ==
    ++  commit
      (emit %pass / %agent [our %hood] %poke %kiln-commit !>([q.byk.bowl |]))
    ++  poke-hood
      |=  =cage
      ^+  run
      (emit %pass / %agent [our %hood] %poke cage)
    ::
    ++  do-poke
      |=  =hoon
      =/  vax=vase
        %-  slap
        :_  hoon
        %+  with-faces:ford:neo  !>(..zuse)
        :~  neo/!>(neo)
            eny/!>(eny.bowl)
            now/!>(now.bowl)
            our/!>(our.bowl)
        ==
      =+  !<(=stud:neo (slot 2 vax))
      =.  vax  (slot 3 vax)
      (on-bush-move /$/$/xeno get:cwd:peel %poke stud vax)
   ++  tree
     |=  depth=@ud
      %-  shoe-ef  
      :-  %table  
      :+  (limo tas/%path tas/%code tas/%data tas/%x tas/%y tas/%z ~)
        (limo 40 40 40 4 8 16 ~)
      (desc:tell:peel depth)
    --
  --
--
