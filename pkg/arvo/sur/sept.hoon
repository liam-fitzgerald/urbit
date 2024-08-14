::  %sept: Internet Protocol, version Seven
::
::    Urbit is a namespace, from a path -> data
::    /~hastuc-dibtux/chats/unit-731 :: this a chat 
::    /~hastuc-dibtux/chats/unit-731/msg/~2024.1.27..10.30 :: this is a
::    message inside the chat
::
::
::

~%  %neo  ..part  ~
|%
::  
::  $care: Perspective on a path
::    
+$  care
  $~  %x
  $?  %x  :: single node
      %y  :: single node and immediate children
      %z  :: single node and all descendants
      :: without pails or vials
      %a  :: single node (%x)
      %b  :: node and immediate children (%y)
      %c  :: node and all descendants (%z)
  ==
::  $hunt: Path with perspective
::
+$  hunt   [=care =pith] ::
::
::  $ever: Total shrub version
::
::    .exe is incremented only when the shrub itself changes i.e. it
::    versions the %x care
::    .why is incremented when the shrub or any of its children changes
::    i.e. it versions the %y care
::    .zed is incremened when the shrub of any of its descendants change
::
::  $lock: Data and shape numbers
::
::     .p is the data version
::     .q is the shape version
+$  lock  (pair @ud @ud)
::
+$  ever  
  $:  exe=lock
      why=lock
      zed=lock
    ::
      shrub-life=@ud :: 3
      ship-life=@ud :: 6
      ship-rift=@ud :: 9
    ::
      =time
  ==
::  $once: Partial version
::
::    Identify shrub by either %x, %y or %z, as per $ever
::
+$  once
  [?(%x %y %z) p=case]

+$  pulp  ?(%noun %json)
::  $hash: Hash
+$  hash   @uvH
::  $seal: Signature
::
+$  seal   @uvH
::  $myth: Binding, possibly tombstoned
::
+$  myth  (pair poem vial)
+$  book  (pair aeon myth)
::
+$  vial  (pair stud *)
+$  poem  
  $:  code=stud 
      poke=(set stud)
  ==
::
+$  aeon  (pair ever oath)
+$  tale  (pair poem pail)
+$  oath  (pair hash seal)
+$  yuga  (axal aeon)
:: 
+$  saga  (pair aeon tale)
+$  pail  (pair stud vase)
::
+$  epic  $+(epic (axal saga))
+$  feat  (pair aeon vial)
+$  gest  $+(gest (axal feat))
++  road   (pole iota)
::  $stud: name for build system outputs
::  
::    Build system outputs cannot live at arbitrary points in the
::    namespace, to allow for the build system to bootstrap itself.
::    
+$  stud
  $@  @tas                                 ::  auth=urbit
  $:  mark=@tas                            :: 
      [=ship =desk]
  ==
++  stud-to-pith
  |=  s=stud
  ^-  pith
  ?@  s  #/kelvin/[ud/zuse]/[s]
  #/[p/ship.s]/[desk.s]/[mark.s]
::
++  pave
  |=  p=path
  ^-  pith
  %+  turn  p
  |=  i=@ta
  ?^  res=(rush i spot:stip)
    u.res
  ?:  =('.y' i)
    f/&
  ?:  =('.n' i)
    f/|
  [%ta i]

::
++  pith-to-stud
  |=  p=road
  ^-  stud
  ?:  ?=([%kelvin ^ mark=@ ~] p)
    mark.p
  ?>  ?=([[%p ship=@] desk=@ mark=@ ~] p)
  [mark ship desk]:p
::  $case: Version number
::
+$  case  @ud
::
::  $mode: Kind of change
+$  mode  ?(%add %dif %del)
::
+$  loot  [case=@ud =mode]
+$  dust  [=pith loot]
+$  grit  (list dust)
::
++  stip                                                ::  typed path parser 
  =<  swot
  |%
  ++  swot  |=(n=nail `(like pith)`(;~(pfix fas (more fas spot)) n))
  ::
  ++  spot
    %+  sear
      |=  a=*
      ^-  (unit iota)
      ?+  a  ~
        @      ?:(((sane %tas) a) [~ `@tas`a] ~)
        [@ @]  ((soft iota) a)
      ==
    %-  stew
    ^.  stet  ^.  limo
    :~  :-  'a'^'z'  sym
        :-  '$'      (cold [%tas %$] buc)
        :-  '0'^'9'  bisk:so
        :-  '-'      tash:so
        :-  '.'      zust:so
        :-  '~'      ;~(pfix sig ;~(pose (stag %da (cook year when:so)) crub:so (easy [%n ~])))
        :-  '\''     (stag %t qut)
        :-  '$'      (cold %$ buc)
    ==
  --
::
++  pith
  |^  $+(pith ^pith)
  ++  is-our
    |=  [our=@p pit=$]
    ?.  ?=([[%p @] *] pit)
      |
    =(+.i.pit our)
  ++  ship
    |=  pit=$
    ~|  no-ship-for-pith/pit
    ?>  ?=([[%p @] *] pit)
    `@p`+.i.pit

  ::
  ++  en-tape
    |=  pit=$
    (spud (pout pit))
  ++  dif
    |=  [a=$ b=$]
    |-  ^+  a
    ?~  a  b
    ?~  b  a
    ?.  =(i.a i.b)
      a
    $(a t.a, b t.b)
  ++  sub
    |=  [from=$ del=$]
    ~|  pith-sub/[from del]
    !.
    |-  ^+  from
    ?~  del  from
    ?>  ?=(^ from)
    ?>  =(i.del i.from)
    $(del t.del, from t.from)
  ::
  ++  en-cord
    |=  pit=$
    (spat (pout pit))
  ::
  ++  prefix
    =|  res=$
    |=  [long=$ curt=$]
    ^-  (unit _res)
    ?~  curt  `(flop res)
    ?~  long  ~
    ?.  =(i.long i.curt)
      ~
    $(long t.long, curt t.curt, res [i.long res])
  ++  is-prefix
    |=  [long=$ curt=$]
    !=(~ (prefix long curt))
  ::
  ++  suffix
    |=  [long=$ curt=$]
    ^-  _curt
    ?~  curt
      long
    ?~  long
      ~
    $(curt t.curt, long t.long)
  ++  sort
    |=  [a=$ b=$]
    (lte (lent a) (lent b))
  --
++  name
  =<  name
  |%
  +$  name  [=ship =pith]  
  ++  rule
    :: ^-  _|~(nail *(like name))
    ;~(plug ;~(pfix fas sig fed:ag) stip)
  ++  en-spar
    |=  nam=name
    ^-  spar:ames
    [ship.nam (pout pith.nam)]
  ::
  ++  en-pith
    |=  nam=name
    ^-  pith
    [p/ship.nam pith.nam]
  ++  en-tape
    |=  nam=name
    (spud (pout (en-pith nam)))
  ++  en-path
    |=  nam=name
    (pout (en-pith nam)) 
  ++  de-pith  |=(pith ~|(de-pith/+< (need (de-pith-soft +<))))
  ++  de-pith-soft
    |=  =pith
    ^-  (unit name)
    ?.  ?=([[%p @] *] pith)
      ~
    `[+.i.pith t.pith]
  --
++  lte-pith
  |=  [a=pith b=pith]
  ^-  ?
  ?~  a  &
  ?~  b  |
  ?.  =(i.a i.b)
    %+  lte-dime
      ?^(i.a i.a [%tas i.a])
    ?^(i.b i.b [%tas i.b])
  $(a t.a, b t.b)
++  lte-iota
  |=  [a=iota b=iota]
  ?:  =(a b)  &
  %+  lte-dime
    ?^(a a [%tas a])
  ?^(b b [%tas b])
::
++  lte-dime
  |=  [a=dime b=dime]
  ^-  ?
  ?.  =(p.a p.b)  
    (aor -.a -.b)
  ?+  p.a  (lte q.a q.b)
    %rd             (lte:rd q.a q.b)
    %rh             (lte:rh q.a q.b)
    %rq             (lte:rq q.a q.b)
    %rs             (lte:rs q.a q.b)
    %s              !=(--1 (cmp:si q.a q.b))
    ?(%t %ta %tas)  (aor q.a q.b)
  ==

++  axol  axal:..zuse
++  axol-of  of:..zuse
++  uon
  |$  [val]
  ((mop iota val) lte-iota)
++  aon
  ~/  %aon
  =|  a=((mop iota *) lte-iota)
  |@
  ++  raw  ((on iota *) lte-iota)
  +$  item  [key=iota val]
  +$  val  ,_?>(?=(^ a) +.n.a)
  +$  tre   (tree item)
  ++  run
    ~/  %run
    |*  fun=gate
    |-
    ?~  a  a
    [n=[key.n.a (fun val.n.a)] l=$(a l.a) r=$(a r.a)]
  ++  gas
    ~/  %gas
    |*  b=(list [p=* q=*])
    =>  .(b `(list _?>(?=(^ a) n.a))`b)
    |-  ^+  a
    ?~  b
      a
    $(b t.b, a (put i.b))
  ::
  ++  rut
    ~/  %rut
    |*  fun=gate
    |-  ^+  a
    ?~  a  a
    [n=[key.n.a (fun key.n.a val.n.a)] l=$(a l.a) r=$(a r.a)]
  ::
  ++  uno
    :: ~/  %uno
    |*  b=_a
    |*  meg=$-([* * *] *)
    |-  ^+  a
    ?~  b  a
    ?~  a  b
    ?:  =(key.n.a key.n.b)
      [n=[key=key.n.a val=(meg key.n.a val.n.a val.n.b)] l=$(a l.a, b l.b) r=$(a r.a, b r.b)]
    ?:  (mor key.n.a key.n.b)
      ?:  (lte-iota key.n.b key.n.a)
        $(l.a $(a l.a, r.b ~), b r.b)
      $(r.a $(a r.a, l.b ~), b l.b)
    ?:  (lte-iota key.n.a key.n.b)
      $(l.b $(b l.b, r.a ~), a r.a)
    $(r.b $(b r.b, l.a ~), a l.a)
  ::
  ++  uni
    :: ~/  %uni
    |*  b=_a
    |-  ^+  b
    ?~  b  a
    ?~  a  b
    ?:  =(key.n.a key.n.b)
      [n=n.b l=$(a l.a, b l.b) r=$(a r.a, b r.b)]
    ?:  (mor key.n.a key.n.b)
      ?:  (lte-iota key.n.b key.n.a)
        $(l.a $(a l.a, r.b ~), b r.b)
      $(r.a $(a r.a, l.b ~), b l.b)
    ?:  (lte-iota key.n.a key.n.b)
      $(l.b $(b l.b, r.a ~), a r.a)
    $(r.b $(b r.b, l.a ~), a l.a)
  ::  +put: ordered item insert
  ::
  ++  put
    |*  [b=iota c=*]
    |-  ^+  a
    ::  base case: replace null with single-item tree
    ::
    ?~  a  [n=[b c] l=~ r=~]
    ::  base case: overwrite existing .key with new .val
    ::
    ?:  =(key.n.a b)  a(val.n c)
    ::  if item goes on left, recurse left then rebalance vertical order
    ::
    ?:  (lte-iota b key.n.a)
      =/  l  $(a l.a)
      ?>  ?=(^ l)
      ?:  (mor key.n.a key.n.l)
        a(l l)
      l(r a(l r.l))
    ::  item goes on right; recurse right then rebalance vertical order
    ::
    =/  r  $(a r.a)
    ?>  ?=(^ r)
    ?:  (mor key.n.a key.n.r)
      a(r r)
    r(l a(r l.r))
  ::  +ram: produce tail (rightmost item) or null
  ::
  ++  ram
    ^-  (unit item)
    ?~  a    ~
    |-
    ?~  r.a  `n.a
    $(a r.a)
  ::  +pry: produce head (leftmost item) or null
  ::
  ++  pry
    ^-  (unit item)
    ?~  a    ~
    |-
    ?~  l.a  `n.a
    $(a l.a)

  ++  tap
    =<  $
    ~/  %tap
    =|  b=(list item)
    |.  ^+  b
    ?~  a  b
    $(a l.a, b [n.a $(a r.a)])
  ::  +get: get val at key or return ~
  ::
  ++  get
    ~/  %get
    |=  b=iota
    ^-  (unit val)
    ?~  a  ~
    ?:  =(b key.n.a)
      `val.n.a
    ?:  (lte-iota b key.n.a)
      $(a l.a)
    $(a r.a)
  ++  got
    |=  b=iota
    (need (get b))
  ++  gut
    |*  [b=iota c=*]
    (fall (get b) c)


  ::  +del: delete .key from .a if it exists, producing value iff deleted
  ::
  ++  del
    ~/  %del
    |*  b=iota
    |-  ^+  a
    ?~  a  [~ ~]
    ::  we found .key at the root; delete and rebalance
    ::
    ?:  =(b key.n.a)
      [`val.n.a nip]
    ::  recurse left or right to find .key
    ::
    ?:  (lte-iota b key.n.a)
      =+  [found lef]=$(a l.a)
      [found a(l lef)]
    =+  [found rig]=$(a r.a)
    [found a(r rig)]
  ++  nip
    ~/  %nip
    |-  ^+  a
    ?>  ?=(^ a)
    ::  delete .n.a; merge and balance .l.a and .r.a
    ::
    |-  ^-  (tree item)
    ?~  l.a  r.a
    ?~  r.a  l.a
    ?:  (mor key.n.l.a key.n.r.a)
      l.a(r $(l.a r.l.a))
    r.a(l $(r.a l.r.a))
  --
  
++  axal
  |$  [item]  
  [fil=(unit item) kid=(uon $)]
+$  zion  (axal fern)
++  axil
  |$  [item]
  [fil=(unit item) kid=(map pith item)]
++  sax
  $~  [~ 0 ~]
  [fil=(unit @ud) sum=@ud kid=(uon sax)]
++  sum
  ~%  %sum  ..sum  ~
  |_  =sax
  ++  dip
    ~/  %dip
    |=  pax=pith
    ^+  sax
    ?~  pax  sax
    =/  kid  (~(get aon kid.sax) i.pax)
    ?~  kid  [~ 0 ~]
    $(sax u.kid, pax t.pax)
  ::
  ++  get
    ~/  %get
    |=  pax=pith
    fil:(dip pax)
  ++  at
    |=  pax=pith
    sum:(dip pax)
  ++  put
    |=  [pax=pith num=@ud]
    ^+  sax
    |-  ^+  sax
    ?~  pax  sax(fil `num, sum num)
    =/  kid=^sax  
      (~(gut aon kid.sax) i.pax ^+(sax [~ 0 ~]))
    =/  new  $(sax kid, pax t.pax)
    =.  sum.sax
      ?:  (lte sum.kid sum.new)
        (add sum.sax (sub sum.new sum.kid))
      (sub sum.sax (sub sum.kid sum.new))
    sax(kid (~(put aon kid.sax) i.pax new))
  ++  bump
    |=  pax=pith
    ^+  sax
    |-  ^+  sax
    ?~  pax
      =/  num  +((fall fil.sax 0))
      sax(fil `num, sum num)
    =/  kid  (~(gut aon kid.sax) i.pax ^+(sax [~ 0 ~]))
    =/  new  $(sax kid, pax t.pax)
    =.  sum.sax  +(sum.sax)
    sax(kid (~(put aon kid.sax) i.pax new))
  --
++  of
  ~%  %of  +>   ~
  =|  fat=(axal)
  |@ 
  :: ++  on  ((^on iota ) lte-iota)
  ::  XX: strange moist
  ++  set
    ~/  %set
    |*  [pax=pith ls=_kid.fat]
    ^+  fat
    :: =/  l  ~(tap aon ls)
    %+  rep  pax
    =.  fat  (dip pax)
    :: |-
    =.  kid.fat  (~(uni aon ls) kid.fat)
    fat

  ::  XX: TODO: clarify whether ram/pry get lowest existing, or lowest
  ::  subtree
  ++  pry
    ~/  %pry
    |*  pax=pith
    ^-  (unit [key=iota val=_?>(?=(^ fil.fat) u.fil.fat)])
    =/  res=(unit [key=iota val=_fat])
      ~(pry aon kid:(dip pax))
    ?~  res
      ~
    ?~  fil.val.u.res
      ~
    [~ u=[key=key.u.res val=u.fil.val.u.res]] ::

  ++  ram
    ~/  %ram
    |*  pax=pith
    ^-  (unit [key=iota val=_?>(?=(^ fil.fat) u.fil.fat)])
    =/  res=(unit [key=iota val=_fat])
      ~(ram aon kid:(dip pax))
    ?~  res
      ~
    ?~  fil.val.u.res
      ~
    [~ u=[key=key.u.res val=u.fil.val.u.res]] ::
  ::
  ++  rot
    (need fil.fat)
  ++  run
    ~/  %run
    |*  b=gate
    |-  
    =+  c=`(axal _?>(?=(^ fil.fat) (b u.fil.fat)))`[~ ~]
    ^+  c
    =*  loop  $
    =?  fil.c  ?=(^ fil.fat)
      `(b u.fil.fat)
    %=    c
        kid
      %-  ~(run aon kid.fat)
      |=  ax=_fat
      ^+  c
      loop(fat ax)
    ==
  ::
  ++  wyt
    |-  ^-  @ud
    =*  loop  $
    %+  add
      ?~(fil.fat 0 1)
    %+  roll  ~(val by kid.fat)
    |*  [ax=_fat out=@ud]
    (add out loop(fat ax))
  ::
  ++  uni
    ~/  %uni
    |*  taf=_fat
    |-  ^+  fat
    =*  loop  $
    =?  fil.fat  =(~ fil.fat)
      fil.taf
    :-  ?~(fil.fat fil.taf fil.fat)
    %-  (~(uno aon kid.fat) kid.taf)
    |=  [k=iota l=_fat r=_taf]
    ^+  fat
    loop(fat l, taf r)
  ::
  ++  view
    =|  res=(map pith _?>(?=(^ fil.fat) u.fil.fat))
    |=  [=care pax=pith]
    =.  fat  (dip pax)
    =?  res  ?=(^ fil.fat)
     (~(put by res) ~ u.fil.fat)
    ?-  care
      %x  res
      %y  =.(fat snip (~(uni by res) tar))
      %z  (~(uni by res) tar)
    ==
  ++  jab-til
    |*  [pax=pith fun=$-(* *) gat=$-(* *)]
    ^+  fat
    ?~  pax
      ?~  fil.fat
        fat
      fat(fil `(gat u.fil.fat))
    =?  fil.fat  ?=(^ fil.fat)
      `(fun u.fil.fat)
    fat(kid (~(put aon kid.fat) i.pax $(fat (~(got aon kid.fat) i.pax), pax t.pax)))

  ::
  ++  anc-jab
    |*  [pax=pith fun=$-(* *)]
    ^+  fat
    ?~  pax
      fat
    =?  fil.fat  ?=(^ fil.fat)
      `(fun u.fil.fat)
    fat(kid (~(put aon kid.fat) i.pax $(fat (~(got aon kid.fat) i.pax), pax t.pax)))
    
  ::
  ++  anc
    =|  res=(list pith)
    =|  cur=pith
    |=  pax=pith
    ^-  (^set pith)
    ?~  pax
      (~(gas in *(^set pith)) res)
    =?  res  ?=(^ fil.fat)
      [cur res]
    $(fat (~(got aon kid.fat) i.pax), pax t.pax, cur (snoc cur i.pax))
  ++  parent
    =|  res=(unit pith)
    =|  cur=pith
    ~/  %parent
    |*  taf=_fat
    |=  pax=pith
    |-  ^+  res
    ?~  pax
      res
    =?  res  ?=(^ fil.fat)
      `cur
    =/  nex  (~(get aon kid.fat) i.pax)
    ?~  nex
      res
    $(fat u.nex, pax t.pax, cur (snoc cur i.pax))
  ++  snip
    |-  ^+  fat
    =*  loop  $
    %_    fat
        kid
      %-  ~(run aon kid.fat)
      |=  f=_fat
      ?^  fil.f
        [`u.fil.f ~]
      loop(fat f)
    ==
  ::
  ++  kid
    ~/  %kid
    |=  pax=pith
    ^-  (map pith _?>(?=(^ fil.fat) u.fil.fat))
    =.  fat  (dip pax)
    =.  fat  snip
    =.  fil.fat  ~
    tar
  ::
  ++  kids
    ~/  %kids
    |=  pax=pith
    ^-  (axil _?>(?=(^ fil.fat) u.fil.fat))
    :-  (get pax)
    (kid pax)
  ::
  ++  del
    ~/  %del
    |=  pax=pith
    ^+  fat
    ?~  pax  [~ kid.fat]
    =/  kid  (~(get aon kid.fat) i.pax)
    ?~  kid  fat
    fat(kid (~(put aon kid.fat) i.pax $(fat u.kid, pax t.pax)))
  ::
  ::  Descend to the axal at this path
  ::
  ++  dip
    ~/  %dip
    |=  pax=pith
    ^+  fat
    ?~  pax  fat
    =/  kid  (~(get aon kid.fat) i.pax)
    ?~  kid  [~ ~]
    $(fat u.kid, pax t.pax)
  ::
  ++  gas
    ~/  %gas
    |*  lit=(list (pair pith _?>(?=(^ fil.fat) u.fil.fat)))
    |-  ^+  fat
    ?~  lit  fat
    $(fat (put p.i.lit q.i.lit), lit t.lit)
  ++  got
    ~/  %got
    |=  pax=pith
    ~|  missing-room/pax
    (need (get pax))
  ++  gut
    ~/  %gut
    |*  [pax=pith dat=*]
    =>  .(dat `_?>(?=(^ fil.fat) u.fil.fat)`dat, pax `pith`pax)
    ^+  dat
    (fall (get pax) dat)
  ::
  ++  get
    ~/  %get
    |=  pax=pith
    fil:(dip pax)
  ::  Fetch file at longest existing prefix of the path
  ::
  ++  fit
    ~/  %fit
    |=  pax=pith
    ^+  [pax fil.fat]
    ?~  pax  [~ fil.fat]
    =/  kid  (~(get aon kid.fat) i.pax)
    ?~  kid  [pax fil.fat]
    =/  low  $(fat u.kid, pax t.pax)
    ?~  +.low
      [pax fil.fat]
    low
  ::
  ++  has
    ~/  %has
    |=  pax=pith
    !=(~ (get pax))
  ::  Delete subtree
  ::
  ++  lop
    ~/  %lop
    |=  pax=pith
    ^+  fat
    ?~  pax  fat
    |-
    ?~  t.pax  fat(kid (~(del aon kid.fat) i.pax))
    =/  kid  (~(get aon kid.fat) i.pax)
    ?~  kid  fat
    fat(kid (~(put aon kid.fat) i.pax $(fat u.kid, pax t.pax)))
  ++  rep
    ~/  %rep
    |*  [pax=pith fit=_fat]
    |-  ^+  fat
    ?~  pax  fit
    =/  kid  (~(gut aon kid.fat) i.pax ^+(fat [~ ~]))
    fat(kid (~(put aon kid.fat) i.pax $(fat kid, pax t.pax)))
  ::
  ++  jab
    ~/  %jab
    |*  [pax=pith fun=$-(_?>(?=(^ fil.fat) u.fil.fat) _?>(?=(^ fil.fat) u.fil.fat))]
    ^+  fat
    =/  kid  (got pax)
    (put pax (fun kid))
  ::
  ++  put
    ~/  %put
    |*  [pax=pith dat=*]
    ^+  fat
    =>  .(dat `_?>(?=(^ fil.fat) u.fil.fat)`dat, pax `pith`pax)
    |-  ^+  fat
    ?~  pax  fat(fil `dat)
    =/  kid  (~(gut aon kid.fat) i.pax ^+(fat [~ ~]))
    fat(kid (~(put aon kid.fat) i.pax $(fat kid, pax t.pax)))
  ::
  ++  rut
    =|  here=pith
    ~/  %rut
    |*  fun=$-([pith _?>(?=(^ fil.fat) u.fil.fat)] _?>(?=(^ fil.fat) u.fil.fat))
    ^+  fat
    %=  fat
      fil  ?~(fil.fat ~ `(fun here u.fil.fat))
      kid  (~(rut aon kid.fat) |=([iot=iota f=_fat] ^$(here (snoc here iot), fat f)))
    ==
  ++  rum
    ~/  %rum
    |*  fun=$-(_?>(?=(^ fil.fat) u.fil.fat) _fil.fat)
    ^+  fat
    %=  fat
      fil  ?~(fil.fat ~ (fun u.fil.fat))
      kid  (~(rut aon kid.fat) |=([iot=iota f=_fat] ^$(fat f)))
    ==
  ::

  ::
  ++  tap
    =|  pax=pith
    =|  out=(list (pair pith _?>(?=(^ fil.fat) u.fil.fat)))
    |-  ^+   out
    =?  out  ?=(^ fil.fat)  :_(out [pax u.fil.fat])
    =/  kid=(list (pair iota (axal _?>(?=(^ fil.fat) u.fil.fat))))
      ~(tap aon kid.fat)
    |-  ^+   out
    ~!  out
    ?~  kid  out
    %=  $
      kid  t.kid
      out  ^$(pax (weld pax /[p.i.kid]), fat q.i.kid)
    ==

  ++  sap
    %+  sort  tap
    |*  [[a=pith *] [b=pith *]]
    (sort:pith a b)
  ++  aap
    %+  sort  tap
    |*  [[a=pith *] [b=pith *]]
    (lte-pith a b)
  ::  Serialize to map
  ::
  ++  tar
    (~(gas by *(map pith _?>(?=(^ fil.fat) u.fil.fat))) tap)
  --
+$  gang
  $@  open=?  :: if 
  $%  [%chum =pith]
      [%shut =pith]
  ==
+$  over  [rift=@ case=@]
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
        [%eyre eyre-id=@t gift=eyre-gift]
    ==
  ++  eyre-gift
    $%  [%head =response-header:http]
        [%data dat=(unit octs)]
        [%done ~]
    ==
  ::
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
::  $data: resolved data in space
+$  data  [=oath =gang =pail =poem]
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
      parent=pith
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
++  loam  (mip (unit dirt))
::  $soil: pith to dirt
+$  soil  (axal loam)
::  $soul: shape of children
::
+$  soul  (map pith @ud)
::  +body: Mapping from a dare case to shape of children
++  moss 
  =<  moss
  |%
  ++  on   ((^on @ soul) lte)
  +$  moss  ((mop @ soul) lte)    
  --
::  $moss: mapping from path to children history
::  $mire: mapping from x case to dare cases
++  mire
  =<  mire
  |%
  ++  on    ((^on @ (set @)) lte)
  ++  mire  ((mop @ (set @)) lte)
  --
+$  plot  (axal land)
+$  issue  (axal pith)
+$  farm
  $:  our=ship
      =soil
      =plot
      bump=[why=(axal ~) zed=(axal ~)]
  ==
+$  seed  (axal note)
+$  muck  (axal tale)
+$  note 
  $%  [%grow cas=(unit (pair rift case)) =pail =poem]
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
  $:  last=(unit ever)
      pend=_|
      =yuga
      =epic
  ==
::  $ward: Subscriber metadata for a path
+$  ward
  $:  mode=care
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
  +$  yurt  ((mop @ epic) lte)
  ++  on    ((^on @ epic) lte)
  --
++  tipi
  =<  tipi
  |%
  +$  tipi  ((mop @ saga) lte)
  ++  on    ((^on @ saga) lte)
  --
+$  tent  (each yurt tipi)
::
+$  wild  (axal tent)
+$  span  [k=@ l=@ r=@]
::  +mip: interval map
++  mip  
  |$  [val]
  $|  (tree (pair span val))
  |=(a=(tree (pair)) &) :: ?:(=(~ a) & ~(apt by a)))
++  or
  =|  a=(mip)
  |@
  ::  +apt: verify horizontal and vertical orderings
  ::
  ++  apt
    ~/  %apt
    =|  [l=(unit @) r=(unit @)]
    |-  ^-  ?
    ::  empty tree is valid
    ::
    ?~  a  %.y
    ::  nonempty trees must maintain several criteria
    ::
    ?&  ::  if .n.a is left of .u.l, assert horizontal comparator
        ::
        ?~(l %.y (lte k.p.n.a u.l))
        ::  if .n.a is right of .u.r, assert horizontal comparator
        ::
        ?~(r %.y (lte u.r k.p.n.a))
        ::  if .a is not leftmost element, assert vertical order between
        ::  .l.a and .n.a and recurse to the left with .n.a as right
        ::  neighbor
        ::
        ?~(l.a %.y &((mor k.p.n.a k.p.n.l.a) $(a l.a, l `k.p.n.a)))
        ::  if .a is not rightmost element, assert vertical order
        ::  between .r.a and .n.a and recurse to the right with .n.a as
        ::  left neighbor
        ::
        ?~(r.a %.y &((mor k.p.n.a k.p.n.r.a) $(a r.a, r `k.p.n.a)))
    ==
  ++  wyt
    =<  $
    |.  ^-  @
    ?~(a 0 +((add $(a l.a) $(a r.a))))
  ::
  ++  put
    |*  [b=span c=*]
    ^+  a
    ::  base case: replace null with single-item tree
    ::
    ?~  a  [n=[b c] l=~ r=~]
    ::  base case: overwrite existing .key with new .val
    ::
    ?:  =(k.p.n.a k.b)  a(q.n c, p.n b)
    ::  if item goes on left, recurse left then rebalance vertical order
    ::
    ?:  (lte k.b k.p.n.a)
      =/  l  $(a l.a)
      ?>  ?=(^ l)
      ?:  (mor k.p.n.a k.p.n.l)
        a(l l)
      l(r a(l r.l))
    ::  item goes on right; recurse right then rebalance vertical order
    ::
    =/  r  $(a r.a)
    ?>  ?=(^ r)
    ?:  (mor k.p.n.a k.p.n.r)
      a(r r)
    r(l a(r l.r))
  ::  +pit: update interval
  ++  pit
    |*  b=span
    =/  v  (got k.b)  
    (put b v)
  ::
  ++  last
    ^-  (unit span)
    ?~  a   ~
    |-
    ?~  r.a  `p.n.a
    $(a r.a)
  ++  last-raw
    ^-  (unit _?>(?=(^ a) n.a))
    ?~  a   ~
    |-
    ?~  r.a  `n.a
    $(a r.a)

  ++  got
    |*  k=@
    (need (get k))
  ++  get
    |*  k=@
    ^-  (unit _?>(?=(^ a) q.n.a))
    ?~  res=(gat k)
      ~
    `q.u.res
  ::  +git: get interval at key or return ~
  ::
  ++  git
    :: ~/  %git
    |=  b=@
    ^-  (unit span)
    ?~  res=(gat b)
      ~
    `p.u.res
  ::
  ++  wit
    |*  in=@
    ^-  (unit _?>(?=(^ a) q.n.a))
    |-
    ?~  a   ~
    ?:  (lth in l.p.n.a)
      $(a l.a)
    ?:  =(0 r.p.n.a)
      `q.n.a
    ?:  (gth in r.p.n.a)
      $(a r.a)
    `q.n.a
  ::
  ::  +gat: get everything at key
  ::
  ++  gat
    |*  b=@
    ^-  (unit _?>(?=(^ a) n.a))
    ?~  a  ~
    ?:  =(b k.p.n.a)
      `n.a
    ?:  (lte b k.p.n.a)
      $(a l.a)
    $(a r.a)
  ::
  ++  cap
    |*  [k=@ r=@]
    ^-  [? _a]
    ?~  san=(git k)
      |/a
    =.  r.u.san  r
    &/(pit u.san)
  ::
  ++  snoc
    |*  [b=@ l=@ c=*]
    ^+  a
    =>  .(c ^+(?>(?=(^ a) q.n.a) c))
    =/  =span  [b l 0]
    =/  las  last
    ?~  las
      ?>  =(1 l)
      (put span c)
    =.  a  +:(cap k.u.las (dec l))
    (put span c)
  --
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
  +$  post  (pair tack stud)
  ::  $prop: Code unit inside desk
  +$  prop  (pair tack mark)
--
^?
~%  %sept-main  +  ~
|%
++  t  +
++  of  of:t
++  aon  aon:t
++  or  or:t
++  axal  axal:t
++  axol  axal:..zuse
++  axol-of  of:..zuse
+$  case  @ud
++  u
  ~%  %u  ..u  ~
  |%
  ::
  ::  +get-stud-name: Get name for $stud
  ::
  ++  get-stud-name
    |=  =stud
    ?@  stud  stud
    mark.stud


  ++  press
    |_  =post
    ++  disk  ^-  ^disk  ?@(q.post ~ +.q.post)
    +$  kind  ?(%pre %src %out)
    ++  stud   q.post
    ++  eject
      |=  =^pith
      ^-  [kind _post _pith]
      ~|  ejecting/pith
      =^  dis=^disk  pith  
        ?>  ?=([%cod *] pith)
        (eject:floppy t.pith)
      ?>  ?=([kind tack @ *] pith)
      =/  kin=kind  i.pith
      =/  =tack  i.t.pith
      :+  kin  [tack ?@(dis i.t.t.pith [i.t.t.pith ship.dis desk.dis])]
      t.t.t.pith
      
    ++  slip
      |=  [kin=kind pax=^pith]
      =/  [@ p=^post =^pith]
        (eject pax)
      (~(pith press p) kin)
    ++  path
      |=  kin=kind
      (pout (pith kin))
    ::
    ++  pith
      |=  kin=kind
      :-  %cod
      %+  welp  ~(pith floppy disk)
      :-  kin
      :-  p.post
      =-  ~[-]
      ?@  q.post  q.post
      mark.q.post
    --
  ++  floppy
    |_  =disk
    ++  eject
      |=  =^pith
      ^+  [disk pith]
      ?:  ?=([%std *] pith)
        [~ t.pith]
      ?>  ?=([[%p @] @ *] pith)
      [[+.i.pith i.t.pith] t.t.pith]
    ++  has-stud
      |=  =stud
      ?@  stud  =(disk ~)
      ?@  disk  |
      =([ship desk]:disk [ship desk]:stud)
    ++  pith
      ^-  ^pith
      ?@  disk
        #/std
      [p/ship.disk desk.disk ~]
    --

  ++  scod
    |=  i=iota
    ?@(i (scot %tas i) (scot i))
  ++  inc-mod
    |=  [x=@ud len=@ud]
    ?:  =(+(x) len)
      0
    +(x)
  ++  dec-mod
    |=  [x=@ud len=@ud]
    ?.  =(0 x)
      (dec x)
    (dec len)
  ++  land-to-ever
    |=  land:t
    ^-  ever:t
    [[case.now 0] [why.latest 0] [zed.latest 0] 0 0 rift.now *time]
  ::
  ++  is-parent
    ~/  %is-parent
    |=  [parent=pith:t kid=pith:t]
    ^-  ?
    ?~  parent  &
    ?~  kid     |
    ?.  =(i.parent i.kid)
      |
    $(parent t.parent, kid t.kid)
  --
::
++  xeno
  |_  =wild:t
  ++  steppe
    |=  [=pith:t =epic:t]
    =/  =tent:t  (~(gut of wild) pith [%& *yurt:t])
    ?>  ?=(%& -.tent)
    =/  cas=@ud   p.zed.p.p:(~(got of epic) /)
    =.  p.tent  (put:on:yurt:t p.tent cas epic)
    (~(put of wild) pith tent)
  ::
  ++  prarie
    |=  [=pith:t =saga:t]
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
    |=  caz=(list card:bush:t)
    ^+  etch
    ?~  caz
      etch
    $(etch (card i.caz), caz t.caz)
  ++  card
    |=  =card:bush:t
    ^+  etch
      %+  print-ln-raw  1
      "{<-.q.card>} {(en-tape:pith:t p.card)}"
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
    |=  [[=pith:t =note:t] e=_etch]
    ^+  e
    =.  e  
      %+  print-ln-raw:e  1
      %-  en-tape:pith:t 
      pith 
    ?-  -.note
      %grow  untab:(print-vase:tab:e q.pail.note)
      %cull  e
   ==
  ++  muck
    |=  m=muck:t
    =.  etch  (print-ln-raw 2 "muck")
    %+  roll  ~(aap of m)
    |=  [[=pith:t =tale:t] e=_etch]
    ^+  e
    =.  e  
      %+  print-ln-raw:e  1
      %-  en-tape:pith:t 
      pith 
    untab:(print-vase:tab:e q.q.tale)
  ++  epic
    |=  p=epic:t
    ~>  %slog.[2 leaf/"Epic"]
    =<  (print-ln-raw 2 "Done")
    %+  roll  ~(aap of p)
    |=  [[=pith:t =saga:t] e=_etch]
    ^+  e
    =.  e  
      %+  print-ln-raw:e  1
      %-  en-tape:pith:t 
      pith 
    untab:(print-vase:tab:e q.q.q.saga)
  ::
  ++  farm
    |=  f=farm:t
    ^+  etch
    %+  roll  ~(aap of soil.f)
    |=  [[=pith:t l=loam:t] e=_etch]
    ^+  e
    =.  e  
      %+  print-ln-raw:e  1
      %-  en-tape:pith:t 
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
      |=  [[=span:t dir=(unit dirt:t)] e=_etch]
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
  |=  [=loam:t =tale:t]
  ^-  [=over:t loam:t]
  =/  las=(unit [=span:t dir=(unit dirt:t)])  
    ~(last-raw or loam)
  =/  =data:t  [*oath:t *gang:t q.tale p.tale]
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
  =/  las=(unit [=span:t dir=(unit dirt:t)])  
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
    |=  =pith:t
    ^+  farm
    ?>  =(~ pith)
    farm
  ::  XX: flesh out
  ++  apt  `?`&
  ::
  ++  rep
    ~/  %rep
    |=  [=pith:t f=_farm]
    ^+  farm
    ?>  =(~ pith)
    f
  ::
  ++  scry
    ~/  %scry
    |=  [=case:t =hunt:t]
    |^  ^-  (unit epic:t)
    ?-    care.hunt
        ?(%x %a)
      =/  res  (read-x-raw pith.hunt case)
      ?-  res
        ~   ~
        [~ ~]  `*epic:t
        [~ ~ *]  `(~(put of *epic:t) / u.u.res)
      ==
    ::
        ?(%y %b)
      =/  [rest=pith:t lan=(unit land:t)]
        (~(fit of plot.farm) pith.hunt)
      =/  pfix  (scag (sub (lent pith.hunt) (lent rest)) pith.hunt)
      =/  =land:t  (need lan)
      ?~  sol=(get:on:moss:t why.land case)
        ~  :: XX: wrong for intermediate cases (FIXME!)
      :-  ~
      =-  (~(dip of -) pith.hunt)
      %-  ~(gas of *epic:t)
      %+  murn  ~(tap by u.sol)
      |=  [kid=pith:t cas=@ud]
      =.  kid  (welp pfix kid)
      ?~  res=(read-x-raw kid cas)
        ~&  weird-x/[kid cas]
        ~
      ?~  u.res
        ~
      `[kid u.u.res]
        ?(%z %c)
      ~&  %reading-z
      =/  [rest=pith:t lan=(unit land:t)]
        (~(fit of plot.farm) pith.hunt)
      =/  pfix  (scag (sub (lent pith.hunt) (lent rest)) pith.hunt)

::    =/  pfix  (slag (lent parent.land) pith)
::      =/  pfix  (sub:pith:t pith.hunt rest)
      =/  =land:t  (need lan)
      ?~  sol=(get:on:moss:t zed.land case)
        ~
      =/  =soul:t  u.sol
      =-  `(~(dip of -) pith.hunt)
      =|  res=epic:t
      |-  =*  loop-soul  $
      =/  kids=(list [=pith:t cas=@ud])
        ~(tap by soul)
      |-  =*  loop-kids  $
      ?~  kids
        res
      =/  [kid=pith:t c=@ud]  i.kids
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
      |=  [pit=pith:t cas=@ud]
      ^-  (unit (unit saga:t))
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
      |=  [pit=pith:t =data:t]
      ^-  saga:t
      =/  =aeon:t
        [(land-to-ever:u (~(got of plot.farm) pit)) oath.data]
      [aeon poem.data pail.data]
    --
  ::
  ++  look
    ~/  %look
    |=  =hunt:t
    ~>  %bout.[1 %look]
    =/  cas=@ud  (pine hunt)
    ?:  =(cas 0)
      *epic:t
    (need (scry cas hunt))
  ++  pine
    ~/  %pine
    |=  [=care:t =pith:t]
    ~>  %bout.[1 %pine]
    :: =-  ~&(pine/- -)
    ^-  @ud
    =/  [rest=pith:t lan=(unit land:t)]
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
    |=  [=pith:t not=note:t]
    ^+  farm
    ?-  -.not
      %grow  (grow pith poem.not pail.not)
      %cull  (cull pith)
    ==
  ++  cull
    ~/  %cull
    |=  =pith:t
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
    |=  [parent=pith:t =pith:t]
    ^+  bump.farm
    =.  why.bump.farm   (~(put of why.bump.farm) pith ~)
    =.  why.bump.farm   (~(put of why.bump.farm) parent ~)
    =.  zed.bump.farm   (~(put of zed.bump.farm) pith ~)
    bump.farm
  ++  handle-why
    ~/  %handle-why
    |=  [change=(axal:t ~) =plot:t]
    :: ~>  %bout.[1 %handle-why]
    ^-  plot:t
    !.
    |-  =*  loop  $
    =?  fil.plot  &(?=(^ fil.plot) ?=(^ fil.change))
      =/  =land:t  u.fil.plot
      =/  =soul:t  (~(put by kids.land) / case.now.land)
      =/  race=@ud  (roll ~(val by soul) add)
      `land(why (put:on:moss:t why.land race soul), why.latest race)
    =/  kids=(list [=iota ax=(axal:t ~)])
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
    |=  [change=(axal:t ~) =plot:t]
    ^-  plot:t
    :: ~>  %bout.[1 %handle-zed]
    !.
    =|  here=pith:t
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
        |=  [p=pith:t cas=@]
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
    |=  [=pith:t =tale:t]
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
      =/  left=pith:t  pith
      =/  cur=pith:t  /
      =/  res=pith:t  /
      |-  
      ?~  left  res
      =.  res
        ?~  fil.lot  res
        ?.  exists.u.fil.lot  res
        cur
      =/  nex=(unit plot:t)  (~(get aon:t kid.lot) i.left)
      ?~  nex
         res
      $(cur (snoc cur i.left), lot u.nex, left t.left)
    =/  parent=land:t  (~(got of plot.farm) parent.land)
    =/  adoptees
        %+  skim  ~(tap in ~(key by kids.parent))
        =/  pfix  (slag (lent parent.land) pith)
        |=  p=pith:t  
::      ~?  =(p #/vane/eyre)
::        :-  [pfix=pfix parent=parent.land pith=pith]
::        parent=(is-parent:u pfix p)
        &(!=(p pith) (is-parent:u pfix p))

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
--

