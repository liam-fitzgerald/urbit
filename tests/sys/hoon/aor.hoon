/+  *test
|%
++  demo
  ^-  (list @t)
  :~  %a
      %aa
      %aaa
      %aaaa
      %b
      %bb
      %bbb
      %bbbb
      %c
      %cc
      %ccc
      %cccc
  ==
++  shuffle
  |*  [ls=(list) eny=@]
  ^+  ls
  =/  input  ls
  =|  res=(list *)
  =/  og  ~(. og eny)
  |-  ^+  res
  =/  len  (lent input)
  ?:  =(1 len)
    (snoc res (snag 0 input))
  =^  r=@  og
    (rads:og (dec (lent input)))
  =.  res  (snoc res (snag r input))
  $(input (oust [r 1] input))
++  run-w-eny
  |=  [ls=(list @t) eny=@]
  =/  shf  (shuffle ls eny)
  =/  expected=(list @t)  (sort shf aor)
  (expect-eq !>(expected) !>(ls))
  
  
++  test-one
  (expect !>((aor 'a' 'b')))
++  test-two
  (expect !>((aor 'aa' 'aaa')))
++  test-three
  (expect !>((aor 'aaa' 'aaaa')))
++  demo-two
  ^-  (list @t)
  :~  %foof
      %fzof
  ==

++  test-aor
  (zing (turn ~[1 2 3 4 5 6] (cury run-w-eny demo)))

++  test-aor-two
  (zing (turn ~[1 2 3 4 5 6] (cury run-w-eny demo-two)))
--
  
