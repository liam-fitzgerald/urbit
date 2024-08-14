:: n: Prelapsarian root shrub
::
::   Reserved namespace
::
::     /cod/ - Build system
::     /int/ - interfaces

=/  prelude  !>(.)
|=  neo-args=[ford=(list [=stud:t txt=@t]) src=(axal:neo [kind=?(%hoon %txt %png %css %js) src=@t]) user=(list [=pith:t =vial:neo])]
=>
  ::  |=  init=[build=(list [=post:neo txt=@t]) user=(list card:neo)]
  ~%  %neo-prelude  ..part  ~
  |%
  ++  mk-poem
    |=  =stud:t
    [stud *(set stud:t)]
  ++  riff-poem
    ^-  poem:t
    [%riff *(set stud:t)]
  ++  wave-poem
    ^-  poem:t
    [%wave *(set stud:t)]
  ++  riff
    => 
    |%
    ++  card  card:neo
    --
    ^-  kook:neo
    |%
    ++  state  pro/%vase
    ++  poke   *(set stud:t)
    ++  kids  ~
    ++  deps  ~
    ++  form
      ^-  form:neo
      |_  [=bowl:neo =aeon:t =pail:t]
      +*  sta  !<([cache=(unit vase) ~] state-vase)
      ++  poke
        |=  pail:t  
        ^-  (quip card:neo pail:t)
        `pail
      ::
      ++  init
        |=  old=(unit pail:t)
        ^-  (quip card:neo pail:t)
        `(need old)
      --
    --
  ++  verb  &
  ++  f   fern:t
  ++  b   bush:t
  ++  n   neo
  +$  state-0
    $:  following=(jug pith:t pith:t)
        ripe=_|
        booting=_&
        ~
    ==
  ++  is-parent
    |=  [parent=pith:t kid=pith:t]
    ^-  ?
    ?~  parent  &
    ?~  kid     |
    ?.  =(i.parent i.kid)
      |
    $(parent t.parent, kid t.kid)


  ++  reap
    ~/  %reap
    |=  [=farm:f =seed:f]
    ~+  
    ^-  muck:f 
    =/  =epic:t
      (~(look plow farm) [%z /])
    =/  =muck:f  
      %-  ~(run of epic)
      |=  =saga:t
      q.saga
    =/  sed=(list (pair pith note:t))  ~(aap of seed)
    |-
    ?~  sed
      muck
    ?-    -.q.i.sed
        %grow 
      ?^  cas.q.i.sed
        $(sed t.sed)
      =.  muck  (~(put of muck) p.i.sed [poem pail]:q.i.sed)
      $(sed t.sed)
    ::
        %cull
      ?^  rif.q.i.sed
        $(sed t.sed)
      =.  muck  (~(del of muck) p.i.sed)
      $(sed t.sed)
    ==
  --
=|  state-0
=|  [=step:f muc=(unit muck:n)]
~%  %neo-fern  ..part  ~
|_  =mien:fern:t  
++  reap
  ~>  %reap.[1 %reap-outer]
  ^-  [muck:n _this]
  ?^  muc  [u.muc this]
  =>  .(muc `(unit muck:n)`muc)
  ~|  ~(key by ~(tar of soil.farm.mien))
  =/  =epic:t
    (look:plow [%z /])
  =;  =muck:n
    =.  muc  `muck
    [muck this]
  %-  ~(run of epic)
  |=  =saga:t
  q.saga
::
++  germ
  ~/  %germ
  |=  [=pith:t cas=(unit (pair rift case:t)) =pail:t =poem:t]
  ^+  this
  =.  seed.step  (~(put of seed.step) +<- %grow +<+)
  =^  =muck:n  this
    reap
  ?^  cas
    this
  =.  muck  (~(put of muck) pith poem pail)
  this(muc `muck)
++  snip
  ~/  %snip
  |=  [=pith rif=(unit @ud)]
  =.  seed.step  (~(put of seed.step) +<- %cull +<+)
  ?^  rif
    this
  =^  =muck:n  this
    reap
  =.  muck  (~(del of muck) pith)
  this(muc `muck)
::
++  plow  ~(. ^plow farm.mien)
++  abet
  =/  s=step:f  step
  =.  step  *step:f
  =.  muc  ~
  [s this]
::
++  this  .
++  our  our.mien
++  here  pfix.mien
++  boot
  ^-  [step:f _this]
  |^  ^-  [step:f _this]
  =.  this  (germ (~(pith press:u imp/%riff) %out) ~ vase/!>(riff) riff-poem)
  =.  this  (germ ~ ~ sig/!>(~) riff-poem)
  =.  this  (germ #/cod/reef ~ vase/prelude riff-poem)
  =/  pit=pith:t  #/$/boot
  =.  this  (hatch)
  =.  io.step  (snoc io.step `gift:f`[%drip ~])
  =.  this  init:sys
  abet
  ::
  ++  make-riff
    |=  [=post:n riff=vase]
    ^-  card:b
    [(pess post) %make %riff `vase/riff sig/!>(~)]
  ::
  ++  pess
    |=  =post:n
    ^-  pith:t
    [p/our (~(pith press:u post) %out)]
  ::
  ++  slap-riff
    |=  [=post:n hon=hoon]
    (make-riff post (slap prelude hon))
  ::
  ++  hatch
    |.  
    ^+  this
    =;  ls=(list card:b)
      =|  idx=@
      |-
      ?~  ls 
        this
      =.  this  (germ #/$/boot/[ud/idx] ~ bush-card/!>(i.ls) [%bush-card *(set stud:t)])
      $(ls t.ls, idx +(idx))
    %+  welp
      :~  [(slap-riff pro/%hoon !,(*hoon @t))]
          [(slap-riff pro/%txt !,(*hoon @t))]
          [(slap-riff pro/%css !,(*hoon @t))]
          [(slap-riff pro/%png !,(*hoon @t))]
          [(slap-riff pro/%js !,(*hoon @t))]
          [(slap-riff pro/%disk !,(*hoon disk:neo))]
          ::[(~(pith press:u imp/%desk) (make-riff (slap prelude !,(*hoon desk))))]
      ==
    %+  welp
      ::  ford combinators
      %+  turn   ford.neo-args
      |=  [=stud:t txt=@t]
      =;  hon=hoon
        (slap-riff imp/stud hon)
      ~|  stud=stud
      %-  road  |.
      =/  wer=path  (~(path press:u imp/stud) %src)
      =+  vaz=(vang & (pout wer))
      (scan (trip txt) (full (ifix [gay gay] tall:vaz)))
      :: fill with files
    :~  :+  #/[p/our]/cod/std/src  %many
        %+  turn  ~(tap of src.neo-args)
        |=  [=pith:t kind=?(%hoon %txt %png %css %js) src=@t]
        ^-  card:b
        :: ?.  ?=([%pro @ ~] pith)
          :: ~
        [pith %make kind `kind^!>(src) sig/!>(sig)]
        :: then, desk shrub
      ::
        [#/[p/our]/cod/std %make %ford-desk `disk/!>(`disk:n`~) crew/!>((one:crew:u:n %reef #/[p/our]/cod/reef))]
        [#/[p/our]/cod/std/src %make %ford-clay-src `desk/!>(%base) crew/!>((one:crew:u:n %clay #/[p/our]/vane/clay))]
        [#/[p/our]/sky %make %sky ~ sig/!>(~)]
        [#/[p/our]/srv/hawk %make %hawk-eyre ~ sig/!>(~)]
        [#/[p/our]/srv/sky %make %sky-eyre ~ sig/!>(~)]
    ==
  --
++  call
  ~/  %call
  |=  =note:fern:t
  ~>  %bout.[1 %neo-call]
  ^-  [step:f _this]
  ?-  -.note
    %bush  abet:(arvo +.note)
    %hear  (hear +.note)
    %drip  drip
    %have  !!
    %arvo  abet:(on-arvo:sys +.note)
    %http  abet:abet:(handle-http-request:sttp +.note)
  ==
++  drip
  ^-  [step:f _this]
  ?:  booting
    =^  =muck:n  this
      reap
    :: %-  print:(epic:etch epic)
    %-  (slog leaf/"Checking for more boot cards" ~)
    ?~  nex=~>(%bout.[1 %prying-muck] (~(pry of muck) #/$/boot))
      ~&  >  %finished-booting
      =.  booting  |
      abet
    ~&  drip-key=key.u.nex
    =.  this  (snip #/$/boot/[key.u.nex] ~)
    =/  =tale:t   val.u.nex
    =/  =pail:t   q.tale
    =/  vax=vase  q.pail
    =+  !<(=card:b vax)
    :: ~&  larval/[step=`@`+:key.u.nex dst=p.card]
    =.  this
      (arvo #/$/xeno/[da/now.mien] card)
    =.  io.step  (snoc io.step %drip ~)
    :: %-  print:(seed:etch seed.step)
    abet
  ~&  %neo-funny-drip
  abet
  
++  hear
  |=  =hunt:t
  ^-  [step:f _this]
  abet
++  blow
  |=  [need=curb:n have=stud:t]
  ^-  ?
  ?+  -.need   ~|(curb-not-supported/-.need !!)
      %any            &
      %or             (lien p.need |=(curb:n (blow +< have)))
      ?(%pro %only)   =(p.need have)
  ==
++  dive
  |%
  ++  get-con
    |=  [have=stud:t want=stud:t]
    ^-  (unit vase)
    =/  sud=(unit pail:t)
      =<  -
      %-  grab
      %+  welp  /cod/std/index/thru
      %+  welp  (stud-to-pith:t have)
      (stud-to-pith:t want)
    ?~  sud
      ~
    =+  !<(=stud:t q.u.sud)
    =/  res=(unit pail:t)
      ?>  ?=(@ stud)
      -:(grab /cod/std/out/con/[stud])
    ?~  res  ~
    `(slot 3 q.u.res)
  --
::  $puff: 
++  puff
  |=  [want=stud:t role=(unit stud:t) have=pail:t]
  ^-  (unit (unit pail:t))
  ?:  =(want p.have)
    [~ ~]
  ?:  =(want %vase)
    ?:  =(p.have %tang)
      ~
    ``vase/q.have
  ?:  =(want %sig)
    ``sig/!>(~)
  ?~  con=(get-con:dive p.have want)
    :: ~&  missing-con/[p.have want]
    ~
  ~|  [%failed-convert have=p.have want=want]
  ``[want (slam u.con q.have)]

::?:  =(1 1) :: can=(~(get by con.dive) [p.q.have rol want])
::  :: ~&  missing-can/[p.q.have rol want]
::  ~
::~
::=/  conv  run:~(do con u.can)
::~|  dead-horse/[p.q.have rol want u.can]
:::+  ~  want
::%+  slam  conv
::?:  =(p.q.have %vase)
::  !>(q.q.q.have)
::q.q.q.have
::
::  +plag: Transform .have according to .want
::
::    Follows same calling convention as +moor
::
++  plag
  =|  rol=(unit stud:t)
  |=  [want=curb:n have=pail:t]
  ^-  (unit (unit pail:t))
  =*  loop   $
  =/  =stud:t  p.have
  ?-    -.want
      %pro
    (puff p.want rol have)
  ::
      %rol
    $(rol `p.want, want q.want)
  ::
      %only
    ?.  =(p.have p.want)
      ~
    [~ ~]
  ::
      %any
    ?>  =(~ rol) :: XX: not neccessary, but wat means
    [~ ~]
  ::
      %not
    =/  r  rol
    ?.  =(~ loop(want p.want))
      ~
    =.  rol  r
    loop(want q.want)
  ::
      %or
    |-
    ?~  p.want
      ~
    =/  r  rol
    =/  nex  loop(want i.p.want)
    =.  rol  r
    ?^  nex
      `u.nex
    $(p.want t.p.want)
  ==
::
::?.  (~(has by con.fiesta) [p.have want])
::  ~
::
::=/  conv   run:~(do con (~(got by con.fiesta) [p.have want]))
::`[want (slam conv q.have)]
::
++  scion
  |=  [want=lads:n =pith:t =tale:t]
  ^-  (unit (unit pail:t))
  ?~  pis=(find:peon:n pith ~(key by want))
    ~
  =/  =lash:n  (~(got by want) u.pis)
  ::~&  [lash=lash stud=p.q.tale]
  :: =-  ~&(res=?~(- %.n %.y) -)
  (plag state.lash q.tale)
::  +moor: Transform pith according to quay
::
::    Returns ~ if pith cannot match quay
::
::    Entry in axal is ~ if pith does not require transformation to 
::    match quay
::    Entry in axal is [~ *] with transformed pith to match quay
::
++  moor
  |=  [want=quay:n =pith:t]
  ^-  (unit (axal (unit pail:t)))
  =/  =care:t  (get-care:quay:n want)
  =^  muk  this  (grab-care care pith)
  ?:  &(=(care %x) =(muk *muck:n))
    :: ~&  moor-lost-void/[pith muk=muk]
    ~
  =|  res=(axal (unit pail:t))
  =/  rot  (~(get of muk) /)
  ?:  &(?=(~ rot) !=(any/~ state.p.want))
    ~&  %missing-root
    ~
  =^  quit=?  res
    ?~  rot  |/res
    ?~  vale=(plag state.p.want q.u.rot)
      &/res
    |/(~(put of res) / u.vale)
  ?:  quit
    ~&  failed-plag/[state=state.p.want rot=?~(rot ~ p.q.u.rot)]
    ~
  ::
  ?~  q.want
    `res
  =;  [fail=? r=(axal (unit pail:t))]
    ?:  fail  ~
    `r
  %+  roll  ~(tap of muk)
  |=  [[=pith:t =tale:t] fail=_| res=_res]
  ^+  +<+
  ?:  fail  [fail res]
  ?:  =(pith ~)  [fail res]
  ?~  ion=(scion q.u.q.want pith tale)
    :: ~&  wayward-kid/pith
    [| res]
  [| (~(put of res) pith u.ion)]
::
++  berth
  |=  [=muck:n mooring=(axal:n (unit pail:t))]
  %-  ~(gas of *lore:n)
  %+  turn  ~(tap of muck)
  |=  [=pith:t =tale:t]
  ^-  [pith:t idea:n]
  :-  pith
  =/  =saga:t  [*aeon:t tale]
  =/  rope  (~(get of mooring) pith)
  ?:  ?=(?(~ [~ ~]) rope)
    [saga ~ q.q.saga]
  [saga `%$ u.u.rope]
::
++  husk
  |_  =stud:t
  ++  dock
    ^-  dock:n
    [state poke kids]:kook
  ::
  ++  pith
    ^-  pith:t
    (~(pith press:u imp/stud) %out)
  ++  has  
    =/  pal  -:(grab pith)
    ?~  pal
      |
    !=(%tang p.u.pal)
  ::
  ++  vase
    ^-  ^vase
    ~|  husk/stud
    q:(need -:(grab pith))
  ++  is-bunted
    =(~ q:vase)
  ++  default-kook
    ^-  kook:n
    |%
    ++  state  pro/stud
    ++  poke   (sy stud ~)
    ++  kids   *kids:n
    ++  deps   *deps:n
    ++  form
      ^-  form:n
      |_  [=bowl:n =aeon:t pal=pail:t]
      ++  poke
        |=  =pail:t
        ^-  (quip card:n pail:t)
        ?>  =(p.pail stud)
        `pail
      ++  init
        |=  pal=(unit pail:t)
        ^-  (quip card:n pail:t)
        ~|  here=here.bowl
        `(need pal)
      --
    --
  ::
  ++  kook
    ^-  kook:n
    ~|  kook/pith
    ?.  has
      default-kook
    =/  vax  vase
    ?:  is-bunted
      default-kook
    ~>  %mean.|.((sell vax))
    !<(kook:n vax)
  ++  wire
    %+  welp  /husk/stud
    (pout pith)
  --
++  sys-pith  #/$/sys
++  grab
  |=  =pith:t
  ^-  [(unit pail:t) _this]
  =^  =muck:n  this
    reap
  :_  this
  ?~  res=(~(get of muck) pith)  ~
  `q.u.res

++  grab-care
  |=  =hunt:t
  ^-  [muck:n _this]
  =^  =muck:n  this
    reap
  =/  new  (~(dip of muck) pith.hunt)
  =.  new
    ?+  care.hunt  !!
      %x   new(kid ~)
      %y   ~(snip of new)
      %z   new
    ==
  [new this]
::
++  seize
  |=  [par=pith:t child=pith:t car=?(%y %z)]
  ^-  ?
  =^  =muck:n  this  reap
  ?:  =(%z car)
    &
  =(`par (~(parent of:neo muck) child))
::
:: +abduct: check capture
++  abduct
  |=  [par=pith:t child=pith:t]
  ^-  ?
  ::~>  %bout.[1 %adopt]
  =^  =muck:n  this
    reap
  =/  wav  -:(grab %int par)
  ?~  wav
    |
  =+  !<(=wave:n q.u.wav)
  ?~  kids.dock.wave
    ::~&  bailing-no-kids/[par child]
    |
  (seize par child p.u.kids.dock.wave)
::  +adopt: produce all capturing parents
::
++  adopt
  =|  res=(set pith:t)
  =|  here=pith:t
  |=  =pith:t
  ?:  ?=([%int *] pith)
    res
  =/  rest=pith:t  pith
  ::~&  adopting/pith
  |-  ^+  res
  =?  res  (abduct here pith)
    (~(put in res) here)
  ?~  rest
    ::~&  adopted/res
    res
  $(here (snoc here i.rest), rest t.rest)

::
++  arvo
  =|  =block:n
  ::  callstack
  =|  $:  next=(list card:b)
          down=(list move:n)  :: pending moves for children
          up=(list move:n)    :: pending moves for uncles
          prize=(axal:n mode:t)
          gifts=(list [pith:t gift:neo]) :: return values
      ==
  ~%  %neo-arvo  ..arvo  ~
  |=  =move:b
  ~>  %bout.[1 %arvo-outer]
  :: =/  src=name:n  (de-pith:tame:n p.move)
  =/  [src=pith:t dst=pith:t]  [p p.q]:move
  =/  init=[src=pith:t dst=pith:t]
    [p p.q]:move
  =/  init-move  move
  =/  here  dst.init
  ?:  ?=([[%p @] %vane *] here)
    (on-bush:sys move)
  :: ?>  =(our.mien ship.dst.init)
  ::  XX: blocking semantives
  =<  abet:(start move)
  ~%  %neo-arvo-inner    ..$  ~
  !:
  |%
  ++  grow
    ~/  %arvo-grow
    |=  [=pith:t =tale:t]
    =.  seed.step  (~(put of seed.step) pith %grow ~ q.tale p.tale)
    arvo
  ++  abet  
::  ?^  err.block
::    %-  (slog (print-quit:neo u.err.block))
::    this
    =.  io.step  
      %+  welp  io.step 
      %+  turn  up 
      |=  =move:n
      ^-  gift:f
      :-  %bush
      ^-  move:b
      ?+  -.q.q.move  !!
        ?(%poke %cull)  move
        %make          =,(move [p p.q %make stud.q.q init.q.q crew/!>(conf.q.q)])
      ==
    this
  ++  arvo  .
  ++  start
    ~/  %start
    |=  =move:b
    ^+  arvo
    ?-    -.q.q.move
        %poke  (apply move)
        %cull  (apply move)
  ::
        %make
      =/  =crew:n
        ?:  =(p.xtra.q.q.move %crew)
          !<(=crew:n q.xtra.q.q.move)
        *crew:n
      =,  move
      (apply p p.q %make code.q.q init.q.q crew)
  ::
        %many
      =.  cards.q.q.move  (turn cards.q.q.move |=(c=card:b `card:b`c(p `pith:t`(welp p.q.move p.c))))
      ?>  ?=(^ cards.q.q.move)
      =.  next  t.cards.q.q.move
      (start p.move i.cards.q.q.move)
  ==
  ++  apply
    ~/  %apply
    |=  =move:n
::     ~>  %bout.[1 (crip (en-tape:pith:t p.q.move))]
::  ?.  =(~ err.block)
::    arvo
    ?>  ?=(^ p.q.move)
::     ~&  here=p.q.move
    =:  src   p.move   
        here  t.p.q.move
      ==
::  ~&  [src=src here=here type=-.q.q.move]
    ?<  ?=([%vane *] here)
      
    :: ~&  [src=src here=here]
    ?+  -.q.q.move  !!
      %make  (make +.q.q.move)
      %poke  (poke +.q.q.move)
      %cull  cull
    ==
  ++  make
    ~/  %make
    |=  [code=stud:t init=(unit pail:t) =crew:n]
    ^+  arvo
    =|  =dock:n  :: XX: wrong, fix
    =^  m-wav=(unit pail:t)  this
      (grab %int here)
    =/  wav=pail:t
      (fall m-wav wave/!>(`wave:n`[code *foam:n dock crew &]))
    ?>  =(%wave p.wav)
    =/  =kook:n  ~(kook husk code)  
    =/  =band:n  deps:kook
    =+  !<(=wave:n q.wav)
    =.  code.wave  code
    =.  dock.wave  ~(dock husk code)
    =.  live.wave  &  :: will turn off again if invalid
    =^  bad=(map term sack:n)  arvo
      (jazz crew band)
    ?.  =(~ bad)
      ~|  make-no-dep/~(tap in bad)
      !!
    =.  arvo  (dance crew band)
    =.  crew.wave  crew :: XX: check
    =/  =poem:t
      [code poke:kook]
    =.  arvo  (germ ?~(m-wav %add %dif) int/here ~ wave/!>(wave) wave-poem)
    =^  cards=(list card:n)  arvo 
      (soft-surf |.(su-abet:(su-make:surf init)))
    ::  %-  print:(cards:etch cards)
    :: %-  print:(seed:etch seed.step)
    (ingest cards)
  ::
  ++  jazz :: XX: fix
    =|  bad=(map term sack:n)
    |=  [=crew:n =band:n]
    ^+  [bad arvo]
    =/  deps  ~(tap by band)
    |-
    ?~  deps
      [bad arvo]
    =/  [=term =deed:n =quay:n]  i.deps
    =/  req=?  ?@(deed deed req.deed)
    =/  timeout=(unit @dr)  ?@(deed ~ time.deed)
    =/  =care:t  (get-care:quay:n quay)
    ?:  &(req !(~(has by crew) term))
      $(deps t.deps, bad (~(put by bad) term missing/~))
    ?:  &(!req (~(has by crew) term))
      $(deps t.deps)
    ?~  pit=(~(get by crew) term)
      ~&  missing-dep/term
      $(deps t.deps)
    ?.  =((ship:pith:t u.pit) our)
      $(deps t.deps)
    $(deps t.deps)
  ::
  ++  dance
    |=  [=crew:n =band:n]
    ^+  arvo
    arvo
  ::
  ++  ingest
    |=  caz=(list card:n)
    =/  =pith:t  (welp pfix.mien here)
    :: ~&  pith/pith
    =.  up
      %+  welp  up
      %+  murn  caz
      |=  =card:n
      ^-  (unit move:n)
      ?:  (is-parent pith p.card)
        ~
      `[pith card]
    =.  down
      %-  welp
      :_  down
      %+  murn  caz
      |=  =card:n
      ^-  (unit move:n)
      ?.  (is-parent pith p.card)
        ~
      `[pith card]
    :: ~&  %down
    ::k%-  print:(cards:etch (turn down tail))
    work
  ::
  ++  work
    ^+  arvo
::  ?^  err.block
::    arvo
    ?~  down
      plunder
    =/  nex=move:n  i.down
    =>  .(down t.down)
    (apply nex) :: XX: weird compiler?
    :: $(arvo new-arvo)
  ++  raid
    =/  by-parent=(jug pith:t [=pith =mode:t])
      :: ~>  %bout.[1 %by-parent]
      %+  roll  ~(aap of prize)
      |=  [[=pith:t =mode:t] out=(jug pith:t [=pith =mode:t])]
      %-  ~(gas ju out)
      (turn ~(tap in (adopt pith)) |=(par=pith:t [par [(dif:pith:t par pith) mode]]))
    =.  gifts
      :: ~>  %bout.[1 %new-gifts]
      %+  turn  (sort ~(tap in ~(key by by-parent)) sort:pith:t)
      |=  =pith:t
      ^-  [pith:t gift:n]
      [pith (~(gas of *gift:n) ~(tap in (~(get ju by-parent) pith)))]
    =.  prize  *(axal:n mode:t)
    give
  ++  give
    ^+  arvo
    ?~  gifts
      plunder
    =/  [=pith:t =gift:neo]  i.gifts
    =>  .(gifts `(list [pith:t gift:neo])`gifts)
    =.  gifts
      ?>  ?=(^ gifts)
      t.gifts
    =.  src  here
    =.  here  pith
    =^  cards=(list card:neo)  arvo
      (soft-surf |.(su-abet:(su-give:surf gift)))
    (ingest cards)
  ::
  ++  plunder :: XX: TODO
    ^+  arvo
    ?.  =(0 ~(wyt of prize))
      raid
    ?~  next
      arvo
    =/  nex  i.next
    =>  .(next t.next)
    (start p.move nex)
  ::
  ++  poke
    |=  pok=pail:t
    ^+  arvo
    =^  cards=(list card:n)  arvo 
      (soft-surf |.(su-abet:(su-poke:surf pok)))
    (ingest cards)
  ::
  ++  cull
    ^+  arvo
    arvo
  ++  soft-surf
    |=  tap=(trap (quip card:n _arvo))
    ^-  (quip card:n _arvo)
    ::  do not virtualise fastboot
    ::?:  =(1 1)
      :: (tap)
    :: ?:  &(!ripe =(sys-init)
      :: (tap)
    =/  res=(each (quip card:n _arvo) tang)
      (mule tap)
    ?:  ?=(%& -.res)
      p.res
    %-  (%*(. slog pri 3) leaf/"wipeout {<src>} -> {<here>}" ~)
    %-  (slog p.res)
    =.  err.block  `[%goof p.res]
    `arvo
  ++  germ
    |=  [=mode:t =pith:t cas=(unit (pair rift case:t)) =pail:t =poem:t]
    ^+  arvo
    =.  this  (^germ +<+)
    =.  prize  (~(put of prize) pith mode)
    arvo
  ++  is-vane  =(%vane (snag 0 here))
::++  vane
::  ?>  ?=([%vane @ *] here)
::  =/  way=term  i.t.here
::  =/  rest      t.t.here
::  |^  ?+  dst  !!
::    [%clay *]  (call:silt src t.dst note)
::    [%iris *]  (call:cttp src t.dst note)
::    [%behn *]  (call:bide src t.dst note)
::    [%gall *]  (call:rile src t.dst note)
::    [%eyre *]  (call:sttp src t.dst note)
::  ==
  ::
  ++  surf
    =^  w  this
      (grab %int here)
    =/  wav  (need w)
    =+  !<(=wave:n q.wav)
    =|  cards=(list card:n)
    =/  =kook:n  ~(kook husk code.wave)
    =.  dock.wave  ~(dock husk code.wave)
    ?.  live.wave
      ~|  dead-wave/here
      !!
    =^  =muck:n  this
      reap
    ~%  %surf-core  ..surf  ~
    |%
    ++  su-core  .
    ++  su-emil  |=(caz=(list card:n) su-core(cards (welp cards caz)))
    ++  su-bowl
      =/  hare  (welp pfix.mien here)
      ^-  bowl:n
      :*  [our.mien src]
          our.mien
          hare
          hare
          now.mien
          eny.mien
          su-deps
          su-kids
      ==
    ++  su-tale
      ^-  tale:t
      (fall (~(get of muck) here) *tale:t)
    ++  su-pail  q:su-tale
    ++  su-kids
      =/  kids  kids:kook
      ?~  kids
        *muck:n
      %-  ~(gas of *muck:n)
      =/  child   (~(dip of muck) here)
      :: %-  print:(muck:etch child)
      %+  murn  ~(tap by ~(tar of:n child))
      |=  [=pith:t =tale:t]
      ^-  (unit [pith:t tale:t])
      ?~  ion=(scion q.u.kids pith tale)
        :: ~&  lost-kids-scion/pith=pith 
        ~
      :^  ~  pith
        p.tale
      ?~  u.ion
        q.tale
      u.u.ion
    ::
    ++  su-deps
      :: =-  ((slog (deps:dbug:n -) ~) -)
      %-  ~(gas by *(map term [pith lore:n]))
      ^-  (list [term pith lore:n])
      %+  murn  ~(tap by deps:kook)
      |=  [=term =deed:n =quay:n]
      ^-  (unit [^term pith:t lore:n])
      =/  dep=(unit pith)  (~(get by crew.wave) term)
      =/  req  ?@(deed deed req.deed)
      ?~  dep
        ~|  invariant-missing-required-conf/term
        ?<  req
        ~
      =/  =care:t  (get-care:quay:n quay)
      ?.  =((ship:pith:t u.dep) our)
        ~ :: XX: fixme
      ?>  ?=(^ u.dep)
      ?~  ax=(moor quay t.u.dep)
        :: ~|  seed=~(key by ~(tar of (~(dip of seed.step) (scag 4 u.dep)))
        ~&  lost-moor/[here=here dep=term pith=t.u.dep code=code.wave]
        ?<  req
        `[term u.dep *lore:n]
      =^  mak  this
        (grab-care care t.u.dep)
      `[term u.dep (berth mak u.ax)]
::      %-  (slog term (epic:dbug:n epic) ~)
      :: `[term u.dep u.lor]
    ::
    ++  su-form  ~(. form:kook [su-bowl *aeon:t su-pail])
    ++  su-poem
      [code.wave poke:kook]
    ++  su-abet ::  TODO: bump
      :: =.  tide  (~(put of:n tide) here wave)
      [cards arvo]
    ++  su-make
      ~/  %su-make
      |=  init=(unit pail:t)
      =/  [cards=(list card:n) new=pail:t]
        (init:su-form init)
      =.  su-core  (su-emil cards)
      =.  arvo   (germ %add here ~ new su-poem)
      su-core
    ++  su-give
      |=  =gift:neo
      ?.  (~(has in poke.dock.wave) %gift)
        ::  ~&  skipping-give/here
        su-core
      (su-poke gift/!>(gift))
    ++  su-grow
      ~/  %su-grow
      |=  =pail:t
      ^+  su-core
::    ?.  (blow state:kook p.pail)
::      (mean leaf/"Returned bad state stud, wanted {<state.kook>}, have {<p.pail>}" ~)
      =.  arvo   (germ %dif here ~ pail su-poem)
      su-core
    ::
    ++  su-poke
      ~/  %su-poke
      |=  =pail:t
      ^+  su-core
      =?  live.wave  =(p.pail %dead)
        =+  !<(dead=term q.pail)
        ?~  dep=(~(get by deps:kook) dead)
          &
        =/  [=deed:n =quay:n]  u.dep
        ?@  deed  !deed
        !req.deed
      ?.  (~(has in poke.dock.wave) p.pail)
        ?:  ?=(%ack p.pail)
          %.  su-core
          =+  !<(ack=(unit quit:n) q.pail)
          ?~  ack
            same
          (slog (print-quit:n u.ack))
        ?:  |(=(%dead p.pail) =(%rely p.pail))
          su-core
        (mean leaf/"no support for {<p.pail>}" leaf/"api: {<dock.wave>}" ~)
      =/  [caz=(list card:n) new=pail:t]
        (poke:su-form pail)
      =.  su-core  (su-emil caz)
      ?:  =(new su-pail)
        su-core
      (su-grow new)
    --
  --
++  sys
  |%
  ++  init
    ^+  this
    =.  this  (germ /vane/clay ~ clay-state/!>(*clay:unix:n) (mk-poem %clay))
    (germ /vane/eyre ~ eyre-state/!>(*eyre:unix:n) (mk-poem %eyre))
  ::
  ++  on-bush
    |=  [src=pith:t dst=pith:t =note:b]
    ^+  this
    ?>  ?=([[%p @] %vane *] dst)
    ?+  t.t.dst  ~|(bad-bush/dst !!)
      [%clay *]  abet:(call:silt src t.t.t.dst note)
      [%eyre *]  abet:(call:sttp src t.t.t.dst note)
::    [%iris *]  (call:cttp src t.dst note)
::    [%behn *]  (call:bide src t.dst note)
::    [%gall *]  (call:rile src t.dst note)
    ==
  ++  on-arvo
    |=  [hand=pith:t syn=sign-arvo]
    ^+  this
    ?+  hand  ~|(bad-vane/hand !!)
      [%clay *]  abet:(take:silt t.hand syn)
      :: [%eyre *]  abet:(take:sttp src t.dst note)
::    [%iris *]  (take:cttp src t.dst note)
::    [%behn *]  (take:bide src t.dst note)
::    [%gall *]  (take:rile src t.dst note)
    ==
  --
++  silt
  =/  here=pith:t  /vane/clay
  =^  pal=(unit pail:t)  this
    (grab here)
  ?>  ?=(^ pal)
  =+  !<(sta=clay:unix:n q.u.pal)
  ?>  =(%clay-state p.u.pal)
  =|  gifts=(list gift:f)
  |%
  ++  silt  .
  ++  abet
    =.  io.step  (welp io.step (flop gifts))
    (germ here ~ clay-state/!>(sta) (mk-poem %clay))
  ++  emit  |=(g=gift:f silt(gifts [g gifts]))
  ++  call
    |=  [src=pith:t dst=pith:t =note:b]
    ^+  silt
    ?>  ?=(%poke -.note) :: XX: all shanes should be virtualised and hand deliver acks
    ?>  ?=(%clay-req p.pail.note)
    =+  !<(=req:clay:n q.pail.note)
    ?-    -.req
        %pull
      =.  sta  (~(del by sta) [src pith.req])
      silt
    ::
        %peer
      =+  .^(=cass:clay %cw /(scot %p our.mien)/[desk.peer.req]/(scot %da now.mien)/sys/kelvin)
      =/  [case=@ud =peer:clay:neo]  (~(gut by sta) [src pith.req] [0 peer.req])
      =.  case  ud.cass
      =.  sta  (~(put by sta) [src pith.req] [case peer])
      (emit (do-peer src pith.req))
    ==
  ::
  ++  take
    |=  [wir=pith:t syn=sign-arvo]
    ^+  silt
    ~&  taking-clay/wir
    ?>  ?=(%writ +<.syn)
    =/  paxs=(pole pith:t)
      (de:drive:neo wir)
    ?>  ?=([src=* hand=* ~] paxs)
    =/  src=pith  src.paxs
    =/  hand=pith  hand.paxs
    ?~  cas=(~(get by sta) [src hand])
      silt
    =/  [case=@ud =peer:clay:neo]  u.cas
    =.  case  +(case)
    ?~  p.syn
      ~&  empty-clay-res/wir
      silt
    =+  !<(kids=(list path) q.r.u.p.syn)
    =/  res=(axol:n cage)
      %-  ~(gas axol-of:n *(axol:n cage))
      %+  turn  kids
      |=  kid=path
      ^-  [path cage]
      :: =?  kid   ?=(^ as.peer)
        ::(snoc (snip kid) u.as.peer)
      :-  kid
      ~&  trying/kid
      :-  (fall as.peer (rear kid))
      %.  .^(vase %cr (welp /(scot %p our.mien)/[r.p.u.p.syn]/(scot %da now.mien) kid))
      ^-  $-(vase vase)
      ?~  as.peer  |=(=vase vase)
      .^(tube:clay %cc (welp /(scot %p our.mien)/[r.p.u.p.syn]/(scot %da now.mien) /(rear kid)/[u.as.peer]))
    =.  res  (~(dip axol-of:neo res) path.peer)
    =/  =note:neo  [%poke %clay-res !>(`res:clay:neo`[hand case res])]
    ~&  sending-to/src
    =/  =move:neo  [[p/our.mien #/$/clay] src note]
    :: =/  =wire      (welp /sys/clay/res wir)
    =.  sta   (~(put by sta) [src hand] [case peer])
    (emit (do-peer [src hand]))
    :: =.  silt  (emit (do-move move))
    :: (emit (do-peer src hand))
  ::
  ++  do-peer
    |=  [src=pith:t hand=pith:t]
    ^-  gift:f
    =/  [case=@ud =peer:clay:neo]  (~(got by sta) [src hand])
    =/  =wire  (welp /clay (pout (en:drive:neo ~[src hand])))
    =/  =rave:clay  [%sing [%t ud/case path.peer]]
    [%arvo wire %c %warp our.mien desk.peer `rave]
  --
++  sttp
  =/  here=pith:t  /vane/eyre
  =^  pal=(unit pail:t)  this
    (grab here)
  ?>  ?=(^ pal)
  =+  !<(sta=eyre:unix:n q.u.pal)
  ?>  =(%eyre-state p.u.pal)
  =|  gifts=(list gift:f)
  |%
  ++  sttp  .
  ++  emit  |=(g=gift:f sttp(gifts [g gifts]))
  ++  emil  |=(gs=(list gift:f) sttp(gifts (welp (flop gs) gifts)))
  ++  abet   
    =.  io.step  (welp io.step (flop gifts))
    (germ here ~ eyre-state/!>(sta) (mk-poem %eyre))
  ++  call
    |=  [src=pith:t dst=pith:t =note:b]
    ^+  sttp
    ?>  ?=(%poke -.note) :: XX: all shanes should be virtualised and hand deliver acks
    ?+  p.pail.note  ~|(bad-eyre-call/p.pail.note !!)
      %ack         sttp
      %eyre-req    (on-eyre-req !<(req:eyre:neo q.pail.note))
      %eyre-sign   (on-eyre-sign src !<(sign:eyre:neo q.pail.note))
    ==
  +$  request-line
    $:  [ext=(unit @ta) site=(list @t)]
        args=(list [key=@t value=@t])
    ==
  ::  +parse-request-line: take a cord and parse out a url
  ::
  ++  parse-request-line
    |=  url=@t
    ^-  request-line
    (fall (rush url ;~(plug apat:de-purl:html yque:de-purl:html)) [[~ ~] ~])
  ::
  ++  on-eyre-req
    |=  [%connect =binding:eyre =pith:t]
    ^+  sttp
    ?>  =(~ site.binding)
    =.  bind.sta  (~(put by bind.sta) binding pith)
    =/  wir=pith:t  (pave:n (welp /sys/eyre/bind (pout pith)))
    (emit %arvo wir %e %connect binding %one)
  ::
  ++  on-eyre-sign
    |=  [src=pith:t eyre-id=@ta =gift:eyre:neo]
    ^+  sttp
    ~&  eyre-sign/[eyre-id -.gift]
    =?  by-id.sta  ?=(%done -.gift)
      (~(del by by-id.sta) eyre-id)
    ::  ?>  =(src (~(got by by-id.eyre.unix) eyre-id))
    (emit %eyre eyre-id gift)
  ::
  ++  match-binding
    =|  test=(list @t)
    |=  site=(list @t)
    ^-  (unit pith:t)
    ?^  res=(~(get by bind.sta) [~ test])
      `u.res
    =/  nex  (slag (lent test) site)
    ?~  nex
      ~
    $(test (snoc test i.nex))
  ++  give-simple-payload
    |=  [eyre-id=@ta =simple-payload:http]
    ^-  (list gift:f)
    :~  [%eyre eyre-id %head response-header.simple-payload]
        [%eyre eyre-id %data data.simple-payload]
        [%eyre eyre-id %done ~]
    ==
  ::
  ++  handle-http-request
    |=  [eyre-id=@ta req=inbound-request:eyre]
    ^+  sttp
    =/  lin=request-line   (parse-request-line url.request.req)
    ?~  bin=(match-binding site.lin)
      (emil (give-simple-payload eyre-id not-found:gen:serv:n))
    =.  by-id.sta     (~(put by by-id.sta) eyre-id u.bin)
    =.  by-pith.sta  (~(put by by-pith.sta) u.bin eyre-id)
    =/  =card:b  [u.bin %poke eyre-task/!>(`task:eyre:neo`[eyre-id req])]
    =/  =move:b  [here card]
    (emit %bush move) 
  --
--
