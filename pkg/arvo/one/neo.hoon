:: n: Prelapsarian root shrub
::
::   Reserved namespace
::
::     /cod/ - Build system
::     /int/ - interfaces

=/  prelude  !>(.)
|=  neo-args=[ford=(list [=stud:neo txt=@t]) src=(axal:neo [kind=?(%hoon %txt) src=@t]) user=(list [=pith:neo =vial:neo])]
=>
  ::  |=  init=[build=(list [=post:neo txt=@t]) user=(list card:neo)]
  ~%  %neo-prelude  ..part  ~
  |%
  ++  mk-poem
    |=  =stud:n
    [stud *(set stud:n)]
  ++  riff-poem
    ^-  poem:neo
    [%riff *(set stud:neo)]
  ++  wave-poem
    ^-  poem:neo
    [%wave *(set stud:neo)]
  ++  riff
    => 
    |%
    ++  card  card:neo
    --
    ^-  kook:neo
    |%
    ++  state  pro/%vase
    ++  poke   *(set stud:neo)
    ++  kids  ~
    ++  deps  ~
    ++  form
      ^-  form:neo
      |_  [=bowl:neo =aeon:neo =pail:neo]
      +*  sta  !<([cache=(unit vase) ~] state-vase)
      ++  poke
        |=  pail:neo  
        ^-  (quip card:neo pail:neo)
        `pail
      ::
      ++  init
        |=  old=(unit pail:neo)
        ^-  (quip card:neo pail:neo)
        `(need old)
      --
    --
  ++  verb  &
  ++  f   fern:t
  ++  b   bush:t
  ++  n   neo
  +$  state-0
    $:  following=(jug pith:n pith:n)
        ripe=_|
        booting=_&
        ~
    ==
  ++  is-parent
    |=  [parent=pith:n kid=pith:n]
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
    =/  =epic:n
      (~(look plow farm) [%z /])
    =/  =muck:f  
      %-  ~(run of epic)
      |=  =saga:n
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
  =/  =epic:n
    (look:plow [%z /])
  =;  =muck:n
    =.  muc  `muck
    [muck this]
  %-  ~(run of epic)
  |=  =saga:n
  q.saga
::
++  germ
  ~/  %germ
  |=  [=pith:neo cas=(unit (pair rift case:neo)) =pail:neo =poem:neo]
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
  =.  this  (germ (~(pith press:n imp/%riff) %out) ~ vase/!>(riff) riff-poem)
  =.  this  (germ ~ ~ sig/!>(~) riff-poem)
  =.  this  (germ #/cod/reef ~ vase/prelude riff-poem)
  =/  pit=pith:n  #/$/boot
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
    ^-  pith:n
    [p/our (~(pith press:n post) %out)]
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
      =.  this  (germ #/$/boot/[ud/idx] ~ bush-card/!>(i.ls) [%bush-card *(set stud:neo)])
      $(ls t.ls, idx +(idx))
    %+  welp
      :~  [(slap-riff pro/%hoon !,(*hoon @t))]
          [(slap-riff pro/%txt !,(*hoon @t))]
          [(slap-riff pro/%disk !,(*hoon disk:neo))]
          ::[(~(pith press:n imp/%desk) (make-riff (slap prelude !,(*hoon desk))))]
      ==
    %+  welp
      ::  ford combinators
      %+  turn   ford.neo-args
      |=  [=stud:n txt=@t]
      =;  hon=hoon
        (slap-riff imp/stud hon)
      ~|  stud=stud
      %-  road  |.
      =/  wer=path  (~(path press:n imp/stud) %src)
      =+  vaz=(vang & (pout wer))
      (scan (trip txt) (full (ifix [gay gay] tall:vaz)))
      :: fill with files
    :~  :+  #/[p/our]/cod/std/src  %many
        %+  turn  ~(tap of src.neo-args)
        |=  [=pith:neo kind=?(%hoon %txt) src=@t]
        ^-  card:b
        :: ?.  ?=([%pro @ ~] pith)
          :: ~
        [pith %make kind `kind^!>(src) sig/!>(sig)]
        :: then, desk shrub
      ::
        [#/[p/our]/cod/std %make %ford-desk `disk/!>(`disk:n`~) crew/!>((one:crew:u %reef #/[p/our]/cod/reef))]
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
    =/  =tale:n   val.u.nex
    =/  =pail:n   q.tale
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
  |=  =hunt:n 
  ^-  [step:f _this]
  abet
++  blow
  |=  [need=curb:n have=stud:n]
  ^-  ?
  ?+  -.need   ~|(curb-not-supported/-.need !!)
      %any            &
      %or             (lien p.need |=(curb:n (blow +< have)))
      ?(%pro %only)   =(p.need have)
  ==
::  $puff: 
++  puff
  |=  [want=stud:n role=(unit stud:n) have=pail:n]
  ^-  (unit (unit pail:n))
  ?:  =(want %vase)
    [~ ~]
  ?:  =(want p.have)
    [~ ~]
  ?:  =(want %sig)
    ``sig/!>(~)
  =/  rol=stud:n
    (fall role %$)
  ?:  =(1 1) :: can=(~(get by con.dive) [p.q.have rol want])
    :: ~&  missing-can/[p.q.have rol want]
    ~
  ~
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
  =|  rol=(unit stud:n)
  |=  [want=curb:n have=pail:n]
  ^-  (unit (unit pail:n))
  =*  loop   $
  =/  =stud:n  p.have
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
  |=  [want=lads:n =pith:n =tale:n]
  ^-  (unit (unit pail:neo))
  ?~  pis=(find:peon:n pith ~(key by want))
    ~
  =/  =lash:n  (~(got by want) u.pis)
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
  |=  [want=quay:n =pith:n]
  ^-  (unit (axal (unit pail:n)))
  =/  =care:n  (get-care:quay:n want)
  =^  muk  this  (grab-care care pith)
  ?:  &(=(care %x) =(muk *muck:n))
    ~
  =|  res=(axal (unit pail:n))
  ?~  rot=(plag state.p.want q:(~(got of muk) /))
    ~&  failed-root/state.p.want
    ~
  =.  res  (~(put of res) / u.rot)
  ?~  q.want
    `res
  =;  [fail=? r=(axal (unit pail:n))]
    ?:  fail  ~
    `r
  %+  roll  ~(tap of muk)
  |=  [[=pith:n =tale:n] fail=_| res=_res]
  ^+  +<+
  ?:  fail  [fail res]
  ?:  =(pith ~)  [fail res]
  ?~  ion=(scion q.u.q.want pith tale)
    [& res]
  [| (~(put of res) pith u.ion)]
::
++  berth
  |=  [=muck:n mooring=(axal:n (unit pail:n))]
  %-  ~(gas of *lore:n)
  %+  turn  ~(tap of muck)
  |=  [=pith:n =tale:n]
  ^-  [pith:n idea:n]
  :-  pith
  =/  =saga:n  [*aeon:n tale]
  =/  rope  (~(get of mooring) pith)
  ?:  ?=(?(~ [~ ~]) rope)
    [saga ~ q.q.saga]
  [saga `%$ u.u.rope]
::
++  husk
  |_  =stud:n
  ++  dock
    ^-  dock:n
    [state poke kids]:kook
  ::
  ++  pith
    ^-  pith:n
    (~(pith press:n imp/stud) %out)
  ++  has  !=(~ -:(grab pith))
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
      |_  [=bowl:n =aeon:n pal=pail:n]
      ++  poke
        |=  =pail:n
        ^-  (quip card:n pail:n)
        ?>  =(p.pail stud)
        `pail
      ++  init
        |=  pal=(unit pail:n)
        ^-  (quip card:n pail:n)
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
    !<(kook:n vax)
  ++  is-plot
    (~(nest ut -:!>(*plot:n)) | p:vase)
  ++  plot
    ^-  (unit plot:n)
    ?.  is-plot
      ~
    `!<(plot:n vase)
  ++  wire
    %+  welp  /husk/stud
    (pout pith)
  --
++  sys-pith  #/$/sys
++  grab
  |=  =pith:n
  ^-  [(unit pail:n) _this]
  =^  =muck:n  this
    reap
  :_  this
  ?~  res=(~(get of muck) pith)  ~
  `q.u.res

++  grab-care
  |=  =hunt:n
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
  |=  [par=pith:neo child=pith:neo car=?(%y %z)]
  ^-  ?
  =^  =muck:n  this  reap
  ?:  =(%y car)
    =(`par (~(parent of:neo muck) child))
  !=(~ (dif:pith:neo par child))
::
:: +abduct: check capture
++  abduct
  |=  [par=pith:neo child=pith:neo]
  ^-  ?
  ::~>  %bout.[1 %adopt]
  =/  wav  -:(grab %int par)
  ?~  wav  |
  =+  !<(=wave:n q.u.wav)
  ?~  kids.dock.wave
    ::~&  bailing-no-kids/[par child]
    |
  (seize par child p.u.kids.dock.wave)
::  +adopt: produce all capturing parents
::
++  adopt
  =|  res=(set pith:neo)
  =|  here=pith:neo
  |=  =pith:neo
  ::~&  adopting/pith
  |-  ^+  res
  =?  res  (abduct here pith)
    (~(put in res) here)
  =/  nex  (dif:pith:neo here pith)
  ?~  nex
    ::~&  adopted/res
    res
  $(here (snoc here i.nex))

::
++  arvo
  =|  =block:n
  ::  callstack
  =|  $:  next=(list card:b)
          down=(list move:n)  :: pending moves for children
          up=(list move:n)    :: pending moves for uncles
          prize=(axal:n mode:n)
          gifts=(list [pith:neo gift:neo]) :: return values
      ==
  ~%  %neo-arvo  ..arvo  ~
  |=  =move:b
  ~>  %bout.[1 %arvo-outer]
  :: =/  src=name:n  (de-pith:name:n p.move)
  =/  [src=pith:n dst=pith:n]  [p p.q]:move
  =/  init=[src=pith:n dst=pith:n]
    [p p.q]:move
  =/  init-move  move
  =/  here  dst.init
  ?:  ?=([%vane @ *] here)
    (on-bush:sys move)
  :: ?>  =(our.mien ship.dst.init)
  ::  XX: blocking semantives
  =<  abet:(start move)
  ~%  %neo-arvo-inner    ..$  ~
  !:
  |%
  ++  grow
    ~/  %arvo-grow
    |=  [=pith:n =tale:n]
    =.  seed.step  (~(put of seed.step) pith %grow ~ q.tale p.tale)
    arvo
  ++  abet  
    ?^  err.block
      %-  (slog (print-quit:neo u.err.block))
      this
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
      =.  cards.q.q.move  (turn cards.q.q.move |=(c=card:b `card:b`c(p `pith:neo`(welp p.q.move p.c))))
      ?>  ?=(^ cards.q.q.move)
      =.  next  t.cards.q.q.move
      (start p.move i.cards.q.q.move)
  ==
  ++  apply
    ~/  %apply
    |=  =move:n
::     ~>  %bout.[1 (crip (en-tape:pith:n p.q.move))]
    ?.  =(~ err.block)
      arvo
    ?>  ?=(^ p.q.move)
::     ~&  here=p.q.move
    =:  src   p.move   
        here  t.p.q.move
      ==
    ~|  [src=src here=here]
    :: ~&  [src=src here=here]
    ?+  -.q.q.move  !!
      %make  (make +.q.q.move)
      %poke  (poke +.q.q.move)
      %cull  cull
    ==
  ++  make
    ~/  %make
    |=  [code=stud:n init=(unit pail:n) =crew:n]
    ^+  arvo
    =|  =dock:n  :: XX: wrong, fix
    =^  m-wav=(unit pail:neo)  this
      (grab %int here)
    =/  wav=pail:n
      (fall m-wav wave/!>(`wave:n`[code *foam:n dock crew &]))
    ?>  =(%wave p.wav)
    =/  =kook:n  ~(kook husk code)  
    =/  =band:n  deps:kook
    =+ 
       !<(=wave:n q.wav)
    =.  code.wave  code
    =.  live.wave  &  :: will turn off again if invalid
    =^  bad=(map term sack:n)  arvo
      (jazz crew band)
    ?.  =(~ bad)
      ~|  make-no-dep/~(tap in bad)
      !!
    =.  arvo  (dance crew band)
    =.  crew.wave  crew :: XX: check
    =/  =poem:n
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
    =/  =care:n  (get-care:quay:n quay)
    ?:  &(req !(~(has by crew) term))
      $(deps t.deps, bad (~(put by bad) term missing/~))
    ?:  &(!req (~(has by crew) term))
      $(deps t.deps)
    ?~  pit=(~(get by crew) term)
      ~&  missing-dep/term
      $(deps t.deps)
    ?.  =((ship:pith:n u.pit) our)
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
    =/  =pith:n  (welp pfix.mien here)
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
    ?^  err.block
      arvo
    ?~  down
      plunder
    =/  nex=move:n  i.down
    =>  .(down t.down)
    (apply nex) :: XX: weird compiler?
    :: $(arvo new-arvo)
  ++  raid
    =/  by-parent=(jug pith:n [=pith =mode:n])
      :: ~>  %bout.[1 %by-parent]
      %+  roll  ~(aap of prize)
      |=  [[=pith:neo =mode:n] out=(jug pith:n [=pith =mode:n])]
      %-  ~(gas ju out)
      (turn ~(tap in (adopt pith)) |=(par=pith:n [par [(dif:pith:n par pith) mode]]))
    =.  gifts
      :: ~>  %bout.[1 %new-gifts]
      %+  turn  (sort ~(tap in ~(key by by-parent)) sort:pith:n)
      |=  =pith:n
      ^-  [pith:n gift:n]
      [pith (~(gas of *gift:n) ~(tap in (~(get ju by-parent) pith)))]
    =.  prize  *(axal:n mode:n)
    give
  ++  give
    ^+  arvo
    ?~  gifts
      plunder
    =/  [=pith:neo =gift:neo]  i.gifts
    =>  .(gifts `(list [pith:neo gift:neo])`gifts)
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
    |=  pok=pail:n
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
    %-  (slog leaf/"wipeout {<src>} -> {<here>}" p.res)
    =.  err.block  `[%goof p.res]
    `arvo
  ++  germ
    |=  [=mode:n =pith:neo cas=(unit (pair rift case:neo)) =pail:neo =poem:neo]
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
      ^-  tale:n
      (fall (~(get of muck) here) *tale:n)
    ++  su-pail  q:su-tale
    ++  su-kids
      =/  kids  kids:kook
      ?~  kids
        *muck:n
      %-  ~(gas of *muck:n)
      ~&  su-kids/[here=here ~]
      =/  child   (~(dip of muck) here)
      :: %-  print:(muck:etch child)
      %+  murn  ~(tap by ~(tar of:n child))
      |=  [=pith:n =tale:n]
      ^-  (unit [pith:n tale:n])
      ?~  ion=(scion q.u.kids pith tale)
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
      ^-  (unit [^term pith:n lore:n])
      =/  dep=(unit pith)  (~(get by crew.wave) term)
      =/  req  ?@(deed deed req.deed)
      ?~  dep
        ~|  invariant-missing-required-conf/term
        ?<  req
        ~
      =/  =care:n  (get-care:quay:n quay)
      ?.  =((ship:pith:n u.dep) our)
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
    ++  su-form  ~(. form:kook [su-bowl *aeon:n su-pail])
    ++  su-poem
      [code.wave poke:kook]
    ++  su-abet ::  TODO: bump
      :: =.  tide  (~(put of:n tide) here wave)
      [cards arvo]
    ++  su-make
      ~/  %su-make
      |=  init=(unit pail:n)
      =/  [cards=(list card:n) new=pail:n]
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
      |=  =pail:n
      ^+  su-core
::    ?.  (blow state:kook p.pail)
::      (mean leaf/"Returned bad state stud, wanted {<state.kook>}, have {<p.pail>}" ~)
      =.  arvo   (germ %dif here ~ pail su-poem)
      su-core
    ::
    ++  su-poke
      ~/  %su-poke
      |=  =pail:n
      ^+  su-core
      ~&  su-poke/here
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
        (mean leaf/"no support for {<p.pail>}" ~)
      =/  [caz=(list card:n) new=pail:n]
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
    |=  [src=pith:neo dst=pith:neo =note:b]
    ^+  this
    ?>  ?=([%vane *] dst)
    ?+  t.dst  ~|(bad-bush/dst !!)
      [%clay *]  abet:(call:silt src t.t.dst note)
      [%eyre *]  abet:(call:sttp src t.t.dst note)
::    [%iris *]  (call:cttp src t.dst note)
::    [%behn *]  (call:bide src t.dst note)
::    [%gall *]  (call:rile src t.dst note)
    ==
  ++  on-arvo
    |=  [hand=pith:n syn=sign-arvo]
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
  =/  here=pith:n  /vane/clay
  =^  pal=(unit pail:n)  this
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
    |=  [src=pith:n dst=pith:n =note:b]
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
    |=  [wir=pith:n syn=sign-arvo]
    ^+  silt
    ?>  ?=(%writ +<.syn)
    =/  paxs=(pole pith:neo)
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
    silt
    :: =.  silt  (emit (do-move move))
    :: (emit (do-peer src hand))
  ::
  ++  do-peer
    |=  [src=pith:neo hand=pith:neo]
    ^-  gift:f
    =/  [case=@ud =peer:clay:neo]  (~(got by sta) [src hand])
    =/  =wire  (welp /sys/clay/peer (pout (en:drive:neo ~[src hand])))
    =/  =rave:clay  [%sing [%t ud/case path.peer]]
    [%arvo wire %c %warp our.mien desk.peer `rave]
  --
++  sttp
  =/  here=pith:n  /vane/eyre
  =^  pal=(unit pail:n)  this
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
    |=  [src=pith:neo dst=pith:neo =note:b]
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
    |=  [%connect =binding:eyre =pith:neo]
    ^+  sttp
    ?>  =(~ site.binding)
    =.  bind.sta  (~(put by bind.sta) binding pith)
    =/  wir=pith:n  (pave:n (welp /sys/eyre/bind (pout pith)))
    (emit %arvo wir %e %connect binding %one)
  ::
  ++  on-eyre-sign
    |=  [src=pith:neo eyre-id=@ta =gift:eyre:neo]
    ^+  sttp
    ~&  eyre-sign/eyre-id
    =?  by-id.sta  ?=(%done -.gift)
      (~(del by by-id.sta) eyre-id)
    ::  ?>  =(src (~(got by by-id.eyre.unix) eyre-id))
    (emit %eyre eyre-id gift)
  ::
  ++  match-binding
    =|  test=(list @t)
    |=  site=(list @t)
    ^-  (unit pith:neo)
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
