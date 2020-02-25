|%
++  dime  {p/@ta q/@}                                   ::
++  edge  {p/hair q/(unit {p/* q/nail}) r/(list @t)}                ::  parsing output
++  hair  {p/@ud q/@ud}                                 ::  parsing trace
++  like  |*  a/$-(* *)                                 ::  generic edge
          |:  b=`*`[(hair) ~ ~]                           ::
          :-  p=(hair -.b)                              ::
          :_  r=((list @t) +>.b)
          ^=  q                                         ::
          ?@  +<.b  ~                                    ::
          :-  ~                                         ::
          u=[p=(a +<+<.b) q=[p=(hair -.b) q=(tape +<.b)]] ::
++  nail  {p/hair q/tape}                               ::  parsing input
++  pint  {p/{p/@ q/@} q/{p/@ q/@}}                     ::  line+column range
++  rule  _|:($:nail $:edge)                            ::  parsing rule
++  spot  {p/path q/pint}                               ::  range in file
::
::
++  last  |=  {zyc/hair naz/hair}                       ::  farther trace
          ^-  hair
          ?:  =(p.zyc p.naz)
            ?:((gth q.zyc q.naz) zyc naz)
          ?:((gth p.zyc p.naz) zyc naz)
::
++  lust  |=  {weq/char naz/hair}                       ::  detect newline
          ^-  hair
          ?:(=(`@`10 weq) [+(p.naz) 1] [p.naz +(q.naz)])

::
++  ifix
  |*  [fel=[rule rule] hof=rule]
  ~!  +<
  ~!  +<:-.fel
  ~!  +<:+.fel
  ;~(pfix -.fel ;~(sfix hof +.fel))
::
++  sfix                                                ::  discard second rule
  |*  sam={vex/edge sab/rule}
  %.  sam
  (comp |*({a/* b/*} a))
::
++  pfix                                                ::  discard first rule
  |*  sam={vex/edge sab/rule}
  %.  sam
  (comp |*({a/* b/*} b))
::
++  comp
  =+  raq=|*({a/* b/*} [a b])                           ::  arbitrary compose
  |@
  ++  $
    |*  {vex/edge sab/rule}
    ?~  q.vex
      vex
    =+  yit=(sab q.u.q.vex)
    =+  yur=(last p.vex p.yit)
    =+  errs=(weld r.vex r.yit)
    ?~  q.yit
      [p=yur q=q.yit r=errs]
    [p=yur q=[~ u=[p=(raq p.u.q.vex p.u.q.yit) q=q.u.q.yit]] r=errs]
  --
++  stir
  |*  {rud/* raq/_=>(~ |*({a/* b/*} [a b])) fel/rule}
  |=  tub/nail
  ^-  (like _rud)
  ~!  tub
  =+  vex=(fel tub)
  ~!  vex
  ?~  q.vex
    [p.vex [~ rud tub] r=r.vex]
  =+  wag=$(tub q.u.q.vex)
  ?>  ?=(^ q.wag)
  [(last p.vex p.wag) [~ (raq p.u.q.vex p.u.q.wag) q.u.q.wag] r=(weld r.vex r.wag)]
 ::
++  wonk  =+  veq=$:edge                                ::  product from edge
          |@  ++  $  ?~(q.veq !! p.u.q.veq)             ::
          --                                            ::
++  plug                                                ::  first then second
  |*  {vex/edge sab/rule}
  ?~  q.vex
    vex
  =+  yit=(sab q.u.q.vex)
  =+  yur=(last p.vex p.yit)
  =+  errs=(weld r.yit r.vex)
  ~?  !?=(~ errs)  errs
  ?~  q.yit
    [p=yur q=q.yit r=errs]
  ~!  r.yit
  ~!  r.vex
  [p=yur q=[~ u=[p=[p.u.q.vex p.u.q.yit] q=q.u.q.yit]] r=errs]

++  star                                                ::  0 or more times
  |*  fel/rule
  (stir `(list _(wonk *fel))`~ |*({a/* b/*} [a b]) fel)
::
++  most                                                ::  separated, +
  |*  {bus/rule fel/rule}
  ;~(plug fel (star ;~(pfix bus fel)))
::
++  mask                                                ::  match char in set
  |=  bud/(list char)
  |=  tub/nail
  ^-  (like char)
  ?~  q.tub
    (fail tub)
  ?.  (lien bud |=(a/char =(i.q.tub a)))
    (fail tub)
  (next tub)
::
++  glue                                                ::  add rule
  |*  bus/rule
  |*  {vex/edge sab/rule}
  (plug vex ;~(pfix bus sab))
::
++  cook                                                ::  apply gate
  |*  {poq/gate sef/rule}
  |=  tub/nail
  =+  vex=(sef tub)
  ?~  q.vex
    vex
  [p=p.vex q=[~ u=[p=(poq p.u.q.vex) q=q.u.q.vex]] r=r.vex]
::
++  bass                                                ::  leftmost base
  |*  {wuc/@ tyd/rule}
  %+  cook
    |=  waq/(list @)
    %+  roll
      waq
    =|({p/@ q/@} |.((add p (mul wuc q))))
  tyd
::
++  knee                                                ::  callbacks
  =|  {gar/* sef/_|.(*rule)}
  |@  ++  $
        |=  tub/nail
        ^-  (like _gar)
        ((sef) tub)
  --
::
++  more                                                ::  separated, *
  |*  {bus/rule fel/rule}
  ;~(pose (most bus fel) (easy ~))
::
++  easy                                                ::  always parse
  |*  huf/*
  |=  tub/nail
  ^-  (like _huf)
  [p=p.tub q=[~ u=[p=huf q=tub]] r=~]
::
++  shim                                                ::  match char in range
  |=  {les/@ mos/@}
  |=  tub/nail
  ^-  (like char)
  ?~  q.tub
    (fail tub)
  ?.  ?&((gte i.q.tub les) (lte i.q.tub mos))
    (fail tub)
  (next tub)
::
++  ace  (just ' ')
++  lit  (just '(')
++  rit  (just ')')
++  hep  (just '-')
++  nud  (shim '0' '9')                                 ::  numeric
++  sym                                                 ::  symbol
  %+  cook
    |=(a/tape (rap 3 ^-((list @) a)))
  ;~(plug low (star ;~(pose nud low hep)))
::

++  dem  (bass 10 (most (easy ~) dit))                       ::  decimal to atom
++  dit
  (cook |=(a/@ (sub a '0')) (shim '0' '9'))      ::  decimal digit
++  pose                                                ::  first or second
  |*  {vex/edge sab/rule}
  ?~  q.vex
    =+  roq=(sab)
    [p=(last p.vex p.roq) q=q.roq r=(weld r.roq r.vex)]
  vex
++  dfail
  |*  [message=@t sab=rule]
  |=  tub=nail
  =+  roq=(sab tub)
  ?~  q.roq
    [p=p.roq q=~ r=[message r.roq]]
  roq
++  just                                                ::  XX redundant, jest
  |=  daf/char
  |=  tub/nail
  ^-  (like char)
  ?~  q.tub
    (fail tub)
  ?.  =(daf i.q.tub)
    (fail tub)
  (next tub)
++  fail  |=(tub/nail [p=p.tub q=~ r=~])                    ::  never parse
::
++  next                                                ::  consume a char
  |=  tub/nail
  ^-  (like char)
  ?~  q.tub
    (fail tub)
  =+  zac=(lust i.q.tub p.tub)
  [zac [~ i.q.tub [zac t.q.tub]] r=~]
::
++  low  (shim 'a' 'z')                                 ::  lowercase
++  jest                                                ::  match a cord
  |=  daf/@t
  |=  tub/nail
  =+  fad=daf
  |-  ^-  (like @t)
  ?:  =(`@`0 daf)
    [p=p.tub q=[~ u=[p=fad q=tub]] r=*(list @t)]
  ?:  |(?=(~ q.tub) !=((end 3 1 daf) i.q.tub))
    (fail tub)
  $(p.tub (lust i.q.tub p.tub), q.tub t.q.tub, daf (rsh 3 1 daf))
++  cold                                                ::  replace w+ constant
  ~/  %cold
  |*  {cus/* sef/rule}
  ~/  %fun
  |=  tub/nail
  =+  vex=(sef tub)
  ?~  q.vex
    vex
  [p=p.vex q=[~ u=[p=cus q=q.u.q.vex]] r=r.vex]
::
++  stag                                                ::  add a label
  ~/  %stag
  |*  {gob/* sef/rule}
  ~/  %fun
  |=  tub/nail
  ~!  tub
  ~!  sef
  =+  vex=(sef tub)
  ?~  q.vex
    vex
  [p=p.vex q=[~ u=[p=[gob p.u.q.vex] q=q.u.q.vex]] r=r.vex]
::
++  cen   (just '%')
++  bus   (just '$')
++  inspect
  |*  sab=rule
  |=  tub=nail
  =+  roq=(sab tub)
  ~&  roq
  roq
--
