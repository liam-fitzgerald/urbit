/+  par=parser-std
=<  main
=>
|%
::  +$  edge  [p=hair q=(unit [p=* q=nail])]                ::  parsing output
::  +$  hair  [p=@ud q=@ud]                                 ::  parsing trace
::  ++  like  |*  a/$-(* *)                                 ::  generic edge
::            |:  b=`*`[(hair) ~]                           ::
::            :-  p=(hair -.b)                              ::
::            ^=  q                                         ::
::            ?@  +.b  ~                                    ::
::            :-  ~                                         ::
::            u=[p=(a +>-.b) q=[p=(hair -.b) q=(tape +<.b) r=((list @ux) +>.b)]] ::
::  +$  nail  [p=hair q=tape]                               ::  parsing input

::  +|  molds
+$  operand
  $^  output
  @ud
+$  output
  [operator=@ta operands=(list operand)]
--
|%
::
::
::
++  muck  gap
++  dun  (cold:par ~ ;~(plug:par (just:par '-') (just:par '-')))                      ::  -- (stop) to ~
++  main
  |=  input=@t
  ^-  (like:par hoon)
  (tall-rune [1 1] (trip input))
::
++  gunk  ~+((glue:par muck))
::
++  gap
  %+  dfail:par  'Bad spacing'
  (cold:par ~ ;~(plug:par ace:par ace:par))
++  rune
    =+  [dif=*rule:par tuq=** har=expa]
    |@  ++  $
        ;~(pfix:par dif (stag:par tuq har))
    --
++  runo                                            ::  rune plus
    |*  [dif=rule hil=* tuq=* har=_expa]
    ;~(pfix:par dif (stag:par hil (stag:par tuq har)))
::
++  tall-rune
  ::  ^-  (parses-to hoon)
  ;~(pose:par tall-collus tall-colhep tall-barcen)
++  tall-collus
  (rune (jest:par ':+  ') %clls expc)
::
++  tall-colhep
  (rune (jest:par ':-  ') %clhp expb)
++  tall-barcen
  (runo (jest:par '|%  ') %brcn ~ wisp)
::
++  wisp
  %+  cook:par
    |=  a=(list (pair term (map term hoon)))
    ^-  (map term tome)
    =<  p
    |-  ^-  (pair (map term tome) (map term hoon))
    ?~  a  [~ ~]
    =/  mor  $(a t.a)
    =.  q.i.a
      %-  ~(urn by q.i.a)
      |=  b=(pair term hoon)  ^+  +.b
      ?.  (~(has by q.mor) p.b)  +.b
      [%eror (weld "duplicate arm: +" (trip p.b))]
    :_  (~(uni by q.mor) q.i.a)
    %+  ~(put by p.mor)
      p.i.a
    :-  *what
    ?.  (~(has by p.mor) p.i.a)
      q.i.a
    [[%$ [%eror (weld "duplicate chapter: |" (trip p.i.a))]] ~ ~]
  ;~  pose:par
    dun
    ;~  sfix:par
      ;~  pose:par
        (most:par gap ;~(pfix:par (jest:par '+|') ;~(pfix:par gap whip)))
        ;~(plug:par (stag:par %$ whap) (easy:par ~))
      ==
      gap
      dun
    ==
  ==
++   whip                                            ::  chapter declare
    ;~  plug:par
    (ifix:par [cen:par gap] sym:par)
    whap
 ==

++  whap  !:
  %+  cook:par
    |=  a=(list (pair term hoon))
    |-  ^-  (map term hoon)
    ?~  a  ~
    =+  $(a t.a)
    %+  ~(put by -)
      p.i.a
    ?:  (~(has by -) p.i.a)
      [%eror (weld "duplicate arm: +" (trip p.i.a))]
    q.i.a
  (most:par muck boog)
::
++  boog  !:                                        ::  core arms
  %+  knee:par  [p=*term q=*hoon]  |.  ~+
  ;~  pose:par
    ;~  pfix:par  ;~  pose:par
                (jest:par '++')
                (jest:par '+-')   ::  XX deprecated
              ==
        ;~  plug:par
          ;~(pfix:par gap ;~(pose:par (cold:par %$ bus:par) sym:par))
          ;~(pfix:par gap loaf)
        ==
    ==
    ::
    :: TODO: revive
    ::  %+  cook:par
    ::      |=  {b/term d/spec}
    ::      [b [%ktcl [%name b d]]]
    ::  ;~  pfix:par  ;~(pose:par (jest:par '+=') (jest:par '+$'))
    ::      ;~  plug:par
    ::      ;~(pfix:par gap sym:par)
    ::      ;~(pfix gap loan)
    ::      ==
    ::  ==
    ::
    ::  %+  cook
    ::      |=  [b=term c=(list term) e=spec]
    ::      ^-  [term hoon]
    ::      :-  b
    ::      :+  %brtr
    ::      :-  %bscl
    ::      =-  ?>(?=(^ -) -)
    ::      ::  for each .term in .c, produce $=(term $~(* $-(* *)))
    ::      ::  ie {term}=mold
    ::      ::
    ::      %+  turn  c
    ::      |=  =term
    ::      ^-  spec
    ::      =/  tar  [%base %noun]
    ::      [%bsts term [%bssg tar [%bshp tar tar]]]
    ::      [%ktcl [%made [b c] e]]
    ::  ;~  pfix  (jest '+*')
    ::      ;~  plug
    ::      ;~(pfix gap sym)
    ::      ;~(pfix gap (ifix [lac rac] (most ace sym)))
    ::      ;~(pfix gap loan)
    ::      ==
    ::  ==
    ==
++  limb
  ::  ^-  (parses-to hoon)
  %+  cook:par
    |=  =tape
    [%wing ~[(crip tape)]]
  (star:par low:par)
++  tall-hoon
  %+  knee:par  *hoon
  |.  ;~(pose:par tall-rune limb)
::
::
++  loaf  tall-hoon
++  expa  (dfail:par 'Rune has incorrect number of children' loaf)                                  ::  one hoon
++  expb  (dfail:par 'Rune has incorrect number of children' ;~(gunk loaf loaf))                    ::  two hoons
++  expc  ;~(gunk loaf loaf loaf)               ::  three hoons
++  expd  ;~(gunk loaf loaf loaf loaf)          ::  four hoons

++  operator
  %+  dfail:par  'Invalid operator'
  (mask:par '+' '-' '/' '*' ~)
++  operand
  ::  ^-  $-(nail:par (like:par ^operand))
  ;~(pose:par dem:par node)
::
++  node
  |-  ::  ^-  $-(nail:par (like:par output))
  %+  ifix:par
    :-  (dfail:par 'Missing start parenthesis' lit:par)
    (dfail:par 'Missing end parenthesis' rit:par)
  ;~
    (glue:par ace:par)
    operator
    (more:par ace:par ;~(pose:par dem:par (knee:par *output |.(^$))))
  ==
--
