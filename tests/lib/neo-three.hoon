/-  neo
/+  *neo-three
/+  *test
=|  =farm:t
=.  our.farm  ~met
=.  plot.farm  (~(put of:neo plot.farm) ~ *land:t)
|%
++  of  of:neo
++  or  or:neo
++  pokes  `poem:neo`[%code *(set stud:neo)]
++  atom
  |=  a=@
  ^-  pail:neo
  atom/!>(a)
++  gas-seed
  =|  =seed:t
  |=  lst=(list [=pith =note:t])
  =*  loop  $
  ^+  seed
  ?~  lst
    seed
  =.  seed   (~(put of seed) i.lst)
  =|  count=@ud
  !.
  |-
  ?:  =(count 1.000)
    loop(lst t.lst)
  :: =.  pith.i.lst  (welp [. .]:pith.i.lst)
  =.  seed   (~(put of seed) i.lst(pith [ud/count pith.i.lst]))
  $(count +(count))
++  test-one
  =/  one=seed:t
    %-  gas-seed
    :~  [#/~met/foo %grow ~ (atom 3) pokes]
        [#/~met/foo/bar %grow ~ (atom 5) pokes]
    ==
  =.  farm  (~(plant plow farm) one)
  =/  two=seed:t
    %-  gas-seed
    :~  [#/~met/foo %grow ~ (atom 4) pokes]
        [#/~met/foo/bar %grow ~ (atom 6) pokes]
        [#/~met/foo/baz %grow ~ (atom 3) pokes]
    ==
  ::
  =.  farm  (~(plant plow farm) two)
  :: %-  print:(farm:etch farm)
  =/  tri=seed:t
    %-  ~(gas of *seed:t)
    ^-  (list [pith:neo note:t])
    :~  [#/~met/foo %grow ~ (atom 5) pokes]
        [#/~met/foo/bar %grow ~ (atom 7) pokes]
        [#/~met/foo/bar/qux %grow ~ (atom 10) pokes]
        [#/~met/foo/baz %grow ~ (atom 1) pokes]
    ==
  =.  farm  (~(plant plow farm) tri)
  =/  qua=seed:t
    %-  gas-seed
    ^-  (list [pith:neo note:t])
    :~  [#/~met/foo %grow ~ (atom 3) pokes]
        [#/~met/foo/bar %grow ~ (atom 1) pokes]
        [#/~met/foo/bar/qux %grow ~ (atom 12) pokes]
        [#/~met/foo/baz %grow ~ (atom 10) pokes]
    ==
  =.  farm  (~(plant plow farm) qua)
  =/  fur=seed:t
    %-  ~(gas of *seed:t)
    ^-  (list [pith:neo note:t])
    :~  [#/~met/foo/bar %grow ~ (atom 10) pokes]
    ==
  =.  farm  (~(plant plow farm) fur)
  :: %-  print:(farm:etch farm)
  =/  res   (need (~(look plow farm) %x #/~met/foo))
  =/  res-y   (need (~(look plow farm) %y #/~met/foo))
  =/  res-z   (need (~(look plow farm) %z #/~met/foo))
  =/  res-z   (need (~(look plow farm) %z ~))
::  %-  print:(epic:etch res)
::  %-  print:(epic:etch res-y)
::  %-  print:(epic:etch res-z)
  ~&  ~(wyt of res-z)
  :: %-  print:(farm:etch farm)
  (expect-eq *vase *vase)
--
