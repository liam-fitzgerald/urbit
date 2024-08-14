|%
::
+$  deed
  $@  ?
  $:  time=(unit @dr)
      req=?
  ==
::
::  $gift: notification that a children changed
::
+$  gift  (axal mode:t)
::    
::  $block: call-stack state for blocking semantics
::
::    .get is the list of blocking requests
::    .err is the possible error state
::    If .err is not ~, then .get is functionally ~
::    
+$  block  [get=(set hunt:t) err=(unit quit)]
+$  quit
  $%  [%gone =term] :: injected a bad dependency
      [%goof =tang] :: crash
  ==
::  $curb: Constraint
+$  curb
  $~  [%pro %$]
  $%  [%or p=(list curb)] :: product type
      [%only p=stud:t] :: exclusivel
      [%rol p=stud:t q=curb]
      [%not p=curb q=curb] :: q not p
      [%pro p=stud:t] :: base case
      [%any ~]
  ==

++  print-quit
  |=  q=quit
  ^-  tang
  ?-  -.q
    %goof  tang.q
    %gone  ~[leaf/"No dependency at {<term>}"]
  ==
+$  ack  (pair flow (unit quit))
::
::  $flow: Call direction
::  
::    .p is the source
::    .q is the destination
::
+$  flow  (pair pith pith)
::
::  $disk: Reference to a suite of code
::
::    If sig case, then refers to the %std disk
+$  disk
  $@(~ [=ship =desk])
::  $tack: Type of code being distributed
::
::    %con: CONverter of protocols
::    %imp: IMPlemenation of shrub
::    %pro: PROtocol (type)
::
+$  tack
  ?(%con %imp %pro %lib %rol %fil)
::  $post: Name of code being distributed
::
+$  post  (pair tack stud:t)
::  $prop: Code unit inside desk
+$  prop  (pair tack mark)
::
::  +get-stud-name: Get name for $stud
::
++  get-stud-name
  |=  =stud:t
  ?@  stud  stud
  mark.stud
::  +drive: Path multiplexer core
::
++  drive
  |%
  ::  +en:drive: Multiplex several paths into one
  ::    
  ::    See also: (+de:drive)
  ++  en
    =|  res=pith
    |=  ps=(list pith)
    ?~  ps
      res
    $(res (welp res [%ud (lent i.ps)] i.ps), ps t.ps)
  ::  +de:drive: Demultiplex one path into several
  ::    
  ::    See also: (+en:drive)

  ++  de
    =|  res=(list pith)
    |=  pax=(pole iota)
    ^+  res
    ?:  =(~ pax)
      (flop res)
    =^  nex=pith  pax
      ?>  ?=([[%ud len=@] rest=*] pax)
      `[pith (pole iota)]`[(scag [len rest]:pax) (slag [len rest]:pax)]
    $(res [nex res])
  --
++  curt
  =|  res=(set post)
  |=  =curb
  ^+  res
  =*  loop-curb  $
  ?-    -.curb
      ?(%pro %only)
    (~(put in res) pro/p.curb)
  ::
      %or
    =/  curs  p.curb
    |-
    ?~  curs
      res
    =/  new  loop-curb(curb i.curs)
    =.  res  (~(uni in res) new)
    $(curs t.curs)
  ::
      %rol
    =.  res  (~(put in res) rol/p.curb)
    $(curb q.curb)
  ::
      %not
    $(curb q.curb)
  ::
      %any  res

  ==

::  +ford: Container for build system bootstrapping
++  ford
  |%
  +$  kind  ?(%pre %src %out)
  ++  desk
    |%
    ++  kids  *^kids
    --
  ++  dock
    ^-  ^dock
    [pro/%vase ~ ~]
  ++  is-stud
    |=  s=stud:t
    ?^  s  |
    =(%ford (end [3 4] s))
  ++  out
    ^-  curb
    [%or pro/%vase pro/%tang ~]
  ::  +riff:ford: Constant build system node
  ::  
  ::    Required for bootstrapping. This is used to put the reef and
  ::    other ford combinators into the build system to bootstrap
  ::    everything else. To update a riff, simply %make over the top
  ::
  ++  riff
    ^-  kook
    |%
    ++  state  out:ford
    ++  poke   *(set stud:t)
    ++  kids  ~
    ++  deps  ~
    ++  form
      ^-  ^form
      |_  [=bowl =aeon:t =stud:t state-vase=vase]
      +*  sta  !<([cache=(unit vase) ~] state-vase)
      ++  poke
        |=  pal=pail:t
        ^-  (quip card pail:t)
        !!
      ::
      ++  init
        |=  pal=(unit pail:t)
        ^-  (quip card pail:t)
        =/  old  (need pal)
        ?>  ?=(%vase p.old)
        `old
      --
    --
  ::  +dep:ford: $fief for a ford dependency
  ::  
  ::    Handy shortcut to specifiy a dependency in the build system
  ++  dep  `fief`[| [or/~[pro/%vase pro/%tang] ~] ~]
  ::  +get-output: pull build resuit of dependency
  ::
  ++  get-output
    |=  [=bowl =term]
    ^-  pail:t
    =/  [p=pith =lore]  (~(got by deps.bowl) term)
    ?~  fil.lore
      tang/!>(~[leaf/"{(en-tape:pith:t here.bowl)}: Missing dep {<term>}"])
    ~|  p.pail.u.fil.lore
    ?>  ?=(?(%vase %tang) p.pail.u.fil.lore)
    pail.u.fil.lore
  ::
  ++  run
    |=  txt=@t
    (scan (trip txt) apex:(rein *pith))
  +$  loc
    [=disk =pith]
  ::  $lib:ford: Specification of library import
  ::
  +$  lib
    [face=term =stud:t]
  ::  $pro:ford: Specification of protocol import
  ::
  +$  pro
    [face=term =stud:t]
  +$  fil  
    [face=term =stud:t]
  +$  far  
    [face=term =stud:t]
  +$  fal
    [face=term =stud:t]
  +$  vale
    [face=term =stud:t]
  ::  $file:ford: Code with imports
  ::
  ::    XX: rename to pile
  ::
  +$  file
    $:  pro=(list pro)
        :: grab=(list 
        lib=(list lib)
        fil=(list fil)
        far=(list far)
        fal=(list fal)
        =hoon
    ==
  ::  +rein:ford: Parse code with imports
  ++  rein
    |=  =pith
    !:
    |%
    ++  dis  
      ;~  pose
        (cold ~ cab)
        ;~((glue bar) ;~(pfix sig fed:ag) sym)
      ==
    ::  +lib-loc: Parse library location
    ::
    ++  lib-loc
      ;~(plug dis stip)
    ::  +std:rein:ford: Parse import directive
    ::
    ::    Either  name:~ship/desk
    ::    or      name (from %std disk)
    ::
    ++  std
      ;~  pose
        ;~(plug sym ;~(pfix col sig fed:ag) ;~(pfix fas sym))
        sym
      ==
    ::  +pro:rein:ford: Parse protocol import directive
    ::
    ::    /@  foo=bar  :: imports %bar protocol from %std disk with name foo
    ::    /@  bar      :: imports %bar protocol from %std disk with name bar
    ::

    ++  pro
      :: ^-  $-(nail (like ^pro))
      %+  rune  pat
      ;~  pose
        ;~(plug sym ;~(pfix tis std))
        %+  cook
          |=  =stud:t
          ?@  stud  [stud stud]
          [mark.stud stud]
        std
      ==
    ++  lib
      :: ^-  $-(nail (like ^pro))
      %+  rune  hep
      ;~  pose
        ;~(plug sym ;~(pfix tis std))
        %+  cook
          |=  =stud:t
          ?@  stud  [stud stud]
          [mark.stud stud]
        std
      ==
    ::
    ++  fil
      :: ^-  $-(nail (like ^pro))
      %+  rune  tar
      ;~  pose
        ;~(plug sym ;~(pfix tis std))
        %+  cook
          |=  =stud:t
          ?@  stud  [stud stud]
          [mark.stud stud]
        std
      ==
    ::
    ++  far
      :: ^-  $-(nail (like ^pro))
      %+  rune  gar
      ;~  pose
        ;~(plug sym ;~(pfix tis std))
        %+  cook
          |=  =stud:t
          ?@  stud  [stud stud]
          [mark.stud stud]
        std
      ==
    ++  fal
      :: ^-  $-(nail (like ^pro))
      %+  rune  gal
      ;~  pose
        ;~(plug sym ;~(pfix tis std))
        %+  cook
          |=  =stud:t
          ?@  stud  [stud stud]
          [mark.stud stud]
        std
      ==

    ++  rune
      |*  [car=rule rul=rule]
      (ifix [;~(plug fas car gap) gay] rul)

    ++  libs
      :: ^-  $-(nail (like (list ^lib)))
      (star lib)
    ++  pros
      :: ^-  $-(nail (like (list ^pro)))
      (star pro)
    ++  fils  (star fil)
    ++  fals  (star fal)
    ++  fars  (star far)
    ++  hone
      :: ^-  $-(nail (like hoon))
      =+  vaz=(vang & (pout pith))
      (ifix [gay gay] tall:vaz)
    ++  imports
      ;~  plug
        pros
        libs
        fils
        fars
        fals
        (easy *hoon)
      ==
    ++  apex
      :: ^-  rule
      ;~  plug 
        pros
        libs
        fils
        fars
        fals
        hone
      ==
    --
  ::  +with-face:ford: Decorate vase with face
  ::
  ++  with-face
    |=  [fac=@tas =vase]
    vase(p [%face fac p.vase])
  ::  +with-faces:ford: Decorate vases with faces, slopped onto reef
  ::
  ++  with-faces
    |=  [reef=vase faces=(list (pair term vase))]
    ?~  faces
      reef
    $(reef (slop (with-face i.faces) reef), faces t.faces)
  --
++  gall
  |%
  +$  req  
    $%  [%peek p=@dr]
        [%keep ~]
        [%reap ~]
        [%peer ~]
    ==
  +$  peek  [src=(set pith) refresh=@dr]
  +$  sign  sign:agent:^gall
  +$  res   (pair pith sign)
  --
::  +behn: Timer vane
++  behn
  |%
  ::  $req: Timer request
  ::
  ::    %wait: Set timer
  ::    %rest: Cancel timer
  ::
  +$  req  $>(?(%rest %wait) task:^behn)
  ::  $behnres: Timer response
  ::
  ::    %wake: Timer went off
  ::
  +$  res  $>(%wake gift:^behn)
  --
++  eyre
  |%
  +$  req  [%connect =binding:^eyre =pith]
  +$  res  [%bound ~]
  +$  sign  (pair @ta gift)
  +$  gift
    $%  [%head =response-header:http]
        [%data dat=(unit octs)]
        [%done ~]
    ==
  +$  task
    (pair @ta inbound-request:^eyre)
  --
::  +clay: Filesystem overlay
::
++  clay
  |%
  ::  $peer:clay: Request for file(s) subscription
  ::
  +$  peer  [=desk =path as=(unit mark)]
  ::
  ::  $req:clay: Filesystem request
  ::   
  ::    %peer: Setup file subscription at .pith
  ::    %pull: Cancel file subscripiton at .pith
  ::
  +$  req
    $%  [%peer =pith =peer]
        [%pull =pith]
    ==
  ::  $res:clay: Filesystem response
  +$  res  [=pith case=@ud files=(axol cage)]
  --
::
++  iris
  |%
  +$  req  [hand=pith dat=request:http]
  +$  res  [hand=pith dat=client-response:^iris]
  --
  
+$  dita  (each iota aura)
+$  zeta  (each iota aura)
::  $pish: Pattern match over a path
::  
::    Ending with & indicates that the path match continues with
::    Ending with | indicates that the path match stops
::
+$  pish
  $+  pish
  $@(? [i=dita t=pish])
+$  rail
  $+  rail
  $@(? [i=zeta t=rail])
+$  conf  (map term pith)
+$  crew  (map term pith)
::  $deck: ???
::
::  apse, cove, dais, 
+$  card  (pair pith note)
+$  move  (pair pith card)
+$  request
  [src=pith dest=pith val=*]
+$  nack
  $%  [%get p=(set pith)]
      [%sec p=(set pith)]
      [%err p=tang]
  ==
::
+$  err
  $%  [%here =pith]
      [%goof err=*]
      [%fail err=*]
  ==

+$  response-status
  $%  [%done ~]
      err
  ==
+$  page  (pair stud:t *)
:: +$  cage  (pair stud vase)
::
+$  made
  [=stud:t init=(unit pail:t) =conf]
+$  note
  $%  [%make made] :: todo: configuration values, init cannot be ^ if installing over
      [%poke =pail:t]
      [%tomb cas=(unit case)]    :: tom
      [%cull ~]
      [%link from=pith src=stud:t] :: XX deprecate
  ==
+$  raw-poke
  (pair flow vial)
::
+$  rely
  [=term =leaf]
::
+$  peer
  $:  run-nonce=@uvJ
      ~
  ==
+$  mate  (map ship peer)
+$  meet  (pair ship peer)
::
+$  dish  (pair pith mode:t)
+$  yarn  (pair aeon:t mode:t)
::  $leaf: diff over namespace
+$  leaf
  (axal mode:t)
::
::
+$  lore  (axal idea)
+$  idea
  $:  =saga:t :: original binding
      thru=(unit stud:t) :: any role
      =pail:t :: transformed binding
  ==
::
++  unix
  =<  unix
  |%
  +$  unix
    $:  =clay
        =iris
        =behn
        =gall
        =eyre
    ==
  +$  behn  (jug @da pith)
  +$  clay
    (map [src=pith hand=pith] [case=@ud =desk =path as=(unit mark)])
  +$  iris
    (set [src=pith hand=pith])
  +$  eyre
    $:  by-id=(map @ta pith)
        by-pith=(map pith @ta)
        bind=(map binding:^^eyre pith)
    ==
  ++  gall
    =<  gall
    |%
    +$  gall
      $:  peer=(jug pith pith)
          peek=(map pith peek:^^gall)
      ==
    --
  --
+$  muck  (axal tale:t)
+$  bowl
  $:  src=name:t :: [=ship =pith]
      our=@p   :: our
      were=pith :: XX: rename to here
      here=pith :: 
      now=@da
      eny=@uvJ
      deps=(map term (pair pith lore))
      kids=muck
  ==
++  quay
  =<  quay
  |%
  +$  quay   (pair lash (unit port))
  ++  get-care
    |=  q=quay
    ^-  care:t
    ?~  q.q
      %x
    p.u.q.q
  --
+$  fief  [=deed =quay]
::
::  $port: Children API
::
::
+$  lash
  [state=curb poke=(set stud:t)]
+$  dock
  [state=curb poke=(set stud:t) =kids]
:: +$  slip
::  [state=stud diffs=(set stud) =kids] ::  
+$  deps  band
::  $band: Dependencies
::
+$  band  $+(band (map term fief))
:: 
::  $sack: Failure to inject
::
+$  sack  
  $%  [%missing ~]  :: not provided in crew
      [%unfit ~] :: API mismatch
      [%dead ~] :: does not exist
  ==
+$  lads  $+(lads (map pish lash))
+$  dare  ?(%y %z)
+$  port  (pair dare lads)
+$  kids  (unit port)
+$  tear
  $%  [%only wan=curb hav=stud:t]
      [%not not=curb hav=stud:t]
  ==

::  $dude: virtual namespace binding
::
+$  dude
  $_  ^&
  |%
  ::  $state: the state of this value in the urbit namespace
  ::
  ::    For instance, a message would be
  ::      [author=ship time-sent=time message=txt]
  ::
  ++  state  *stud:t
  ++  work
    |~  =bowl
    *vase
  ::
  ::  +kids: Some nodes in the namespace define what children are
  ::  allowed to be under them. For instance, it should not  be allowed
  ::  to create /~hastuc-dibtux/chats/unit-731/blog-post-1. This is
  ::  nonsensical because blog posts don't go in chats.
  ++  kids   *^kids
  ::
  ::  +deps: Some nodes in the namespace might like to hear about other
  ::  things that happen in the namespace. For instance, a substack-type
  ::  software would like to know where the wallet software is located
  ::  in the name
  ++  deps   *(map term fief)
  --
::  $kook: type of the value in the urbit namespace
::
+$  kook
  $_  ^&
  |%
  ::  $state: the state of this value in the urbit namespace
  ::
  ::    For instance, a message would be
  ::    ```hoon
  ::    [author=ship time-sent=time message=txt]
  ::    ```
  ::
  ::    ```
  ++  state  *curb
  ::  $poke: a poke is a request to change a value in teh urbit
  ::  namespace.
  ::
  ::    For instance a blocked list that is a set of users would be
  ::      [%add who=user]
  ::      [%del who=user]
  ::
  ::
  ++  poke   *(set stud:t)
  ++  form   *^form
  ::
  ::  +kids: Some nodes in the namespace define what children are
  ::  allowed to be under them. For instance, it should not  be allowed
  ::  to create /~hastuc-dibtux/chats/unit-731/blog-post-1. This is
  ::  nonsensical because blog posts don't go in chats.
  ++  kids   *(unit port)
  ::
  ::  +deps: Some nodes in the namespace might like to hear about other
  ::  things that happen in the namespace. For instance, a substack-type
  ::  software would like to know where the wallet software is located
  ::  in the name
  ++  deps   *(map term fief)
  --
::  $foam: Listeners
::
+$  foam  (set pith)
+$  wave
  $:  code=stud:t
      =foam
      =dock
      =crew
      live=?
  ==
+$  tide  (axal wave)
::
+$  form
  $_  ^|
  |_  [=bowl =aeon:t pal=pail:t]
  ::  +reduce: apply %poke, producing state and IO
  ::
  ::    ('liam'' ~) [%add who='ruby'] -> ('liam' 'ruby')
  ::    ('liam' 'ruby' ~) [%del who='ruby'] -> ('liam')
  ++  poke
    |~  [=stud:t val=vase]
    *(quip card pail:t)
  ++  init
    |~  old=(unit pail:t)
    *(quip card pail:t)
  --
+$  gang  (axal cove)
+$  cove
  $:  =crew
      code=stud:t
      rime=case
  ==
::
++  peon
  |%
  ++  match
    |=  [nedl=pish hstk=pith]
    ^-  ?
    ?@  nedl
      |(nedl =(~ hstk))
    ?~  hstk
      |
    ?:  ?=(%& -.i.nedl)
      &(=(p.i.nedl i.hstk) $(nedl t.nedl, hstk t.hstk))
    ?@  i.hstk
      =(p.i.nedl %tas)
    &(=(-.i.hstk p.i.nedl) $(nedl t.nedl, hstk t.hstk))
      
  ++  find
    |=  [pax=pith pis=(set pish)]
    ^-  (unit pish)
    ?~  lis=(skim ~(tap in pis) |=(pish (match +< pax)))
      ~
    `i.lis
  --
++  serv   ^serv
++  u
  |%
  ++  crew
    |%
    ++  mk
      |=  ls=(list [=term =pith:t])
      (~(gas by *^crew) ls)
    ++  one
      |=  [=term =pith:t]
      ^-  ^crew
      %-  ~(gas by *^crew)
      ~[term^pith]
    --
  ++  make
    |%
    ++  static
      |=  [=stud:t =pail:t]
      ^-  note
      [%make stud `pail ~]
    --
  ++  deps
    |%
    ++  qua
      |_  [=term =bowl sud=(unit stud:t)]
      ++  get  `(pair ^pith ^lore)`(~(got by deps.bowl) term)
      ++  lore  q:get
      ++  root  ~(rot of lore)
      ++  pail
        :: =-  ?>(|(?=(~ sud) =(p.- u.sud)) -)
        ^-  pail:t
        pail:root
      ++  vase  `^vase`q:pail
      ++  pith  p:get
      --
    --
  ++  rily
    |*  [los=tape sab=rule]
    =+  vex=(sab [[1 1] los])
    ?~  q.vex
      [%| p=p.vex(q (dec q.p.vex))]
    [%& p=p.u.q.vex]
  --
++  pave  pave:t
--
