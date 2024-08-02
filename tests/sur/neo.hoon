/-  n=neo
/+  *test
|%
++  example   (turn (gulf 0 1.000) |=(a=@ [ud/a a]))
++  shuffle
  |*  [ls=(list) eny=@]
  ^+  ls
  =/  input  ls
  =/  og  ~(. og eny)
  |-  ^+  ls
  =/  len  (lent input)
  ?:  =(1 len)
    input
  =^  r=@  og
    (rads:og (dec (lent input)))
  [(snag r input) $(input (oust [r 1] input))]

++  test-aon
  =|  =(uon:n @ud)
  =.  uon  (~(put aon:n uon) ud/1 1)
  =/  res  (~(get aon:n uon) ud/1)
  =.  uon  (~(put aon:n uon) ud/1 2)
  =/  new-res  (~(get aon:n uon) ud/1)
  %-  zing
  :~  (expect-eq !>(`(unit @ud)``1) !>(res))
      (expect-eq !>(`(unit @ud)``2) !>(new-res))
  ==
++  test-aon-two
  =|  =(uon:n @ud)
  =.  uon  (~(gas aon:n uon) (shuffle example ~hastuc-dibtux))
  ~&  uon/uon
  (expect-eq !>(example) !>(~(tap aon:n uon)))
--
