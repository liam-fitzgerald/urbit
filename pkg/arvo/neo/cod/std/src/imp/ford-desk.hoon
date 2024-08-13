=>
  |%
  ++  parse-file
    |=  [=pith:n txt=@t]
    ^-  file:ford:neo
    :: ~>  %memo./ford/desk
    :: %-  road  |.
    =>  [pith=pith txt=txt neo=neo n=n ..zuse]
    ~>  %memo./ford/desk/parse
    =/  parser  imports:(rein:ford:neo pith)
    =/  res  (rily:n (trip txt) parser)
    ?:  ?=(%& -.res)
      p.res
    (mean leaf/"Failed parsing {(spud (pout pith))} [{(scow %ud p.p.res)} {(scow %ud q.p.res)}]" ~)
  ::
  ++  auto
    %-  ~(gas in *(set mark))
    :~  %txt
        %hoon
        %tape
        %cord
    ==
  ++  broken
    %-  ~(gas in *(set prop:n))
    :~  imp/%verb
        imp/%task
        imp/%ford-same
        imp/%ford-slap
        imp/%ford-slop
        imp/%ford-face
        imp/%ford-text
        imp/%ford-desk
    ==
    
  --
^-  kook:neo
|%
++  state  pro/%disk
++  poke   (sy %gift ~)
++  kids   
  :+  ~  %z
  %-  ~(gas by *lads:neo)
  =/  mk  |=(=term `pish:neo`[&/term &])
  :~  [(mk %src) pro/%hoon ~]
      [(mk %out) pro/%vase ~]
      [(mk %pre) pro/%vase ~]
      [(mk %index) or/~[pro/%studs pro/%stud] ~]
      [[&/%all-grow |/%tas |] pro/%stud ~]
      [[&/%all-grow |/%tas &/%out |] pro/%vase ~]
      [[&/%all-grab |/%tas |] pro/%stud ~]
      [[&/%all-grab |/%tas &/%out |] pro/%vase ~]
  ==
++  deps  
  %-  ~(gas by *deps:neo)
  :~  :-  %reef
      ^-  fief:neo
       :-   &
       :_   ~
       [pro/%vase ~]
  ==
++  form
  ^-  form:neo
  =<
  |_  [=bowl:neo =aeon:neo =pail:neo]
  +*  run  ~(. +> [bowl ~ !<(disk:neo q.pail)])
      reef  ~(. qua:deps:u [%reef bowl `%vase])
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    abet:(take-gift:run !<(=gift:neo vax))
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    ~|  deps=~(key by deps.bowl)
    :: ~|  reef=(~(got by deps.bowl) %reef)
    ?.  =(%vase p:pail:reef)
      ~&  %weird-reef
      %-  (slog (sell vase:reef) ~)
      `(need pal)
    =/  src  (~(dip of kids.bowl) /src)
    =.  pail  (need pal)
    =+  !<(=disk:neo q.pail)
    =/  ls  ~(tap of src)
    =/  cards=(list card:neo)
      %+  turn  ~(tap in auto) 
      |=  =mark
      ^-  card:neo
      :-  (welp here.bowl #/out/pro/[mark])
      =?  mark  =(mark %txt)
        %cord
      [%make %riff `vase/(slap vase:reef limb/mark) ~]
    =/  [caz=(list card:neo) new=pail:neo]
      =<  abet
      %-  build-files:run 
      %+  murn  ls
      |=  [=pith:n *]
      (pith-to-prop-soft pith)
    [(welp cards caz) new]
  --
  |_  [=bowl:neo cards=(list card:neo) sta=disk:neo]
  +*  reef  ~(. qua:deps:u [%reef bowl `%vase])
  ++  abet  [(flop cards) disk/!>(sta)]
  ++  emit  |=(=card:neo run(cards [card cards]))
  ++  emil  |=(caz=(list card:neo) run(cards (welp (flop caz) cards)))
  ++  run  .
  ++  report-err
    |=  [=pith:neo num=@ud]
    ^+  run
    %+  emit  (welp here.bowl #/err/[ud/num])
    [%make %pith `pith/!>((welp here.bowl pith)) *crew:n]
  ++  index-cons
    ^+  run
    ~>  %slog.[3 leaf/"indexing cons"]
    =/  made=(axal:neo ~)  (~(run of (~(dip of kids.bowl) #/index)) |=(* ~))
    =/  were  (welp here.bowl /index)
    =<  abet:work
    |%
    ++  this  .
    ++  abet  run
    ++  work
      =/  cons=(list [=pith:neo =tale:neo])
        ~(tap of (~(dip of kids.bowl) /out/con))
      ^+  this
      |-  ^+  this
      =*  loop  $
      ?~  cons
        this
      =/  [=pith:neo =tale:neo]  i.cons
      ~&  trying-index/pith
      ~|  pith/pith
      ?.  =(%vase p.q.tale)
        ~&  skipping/p.q.tale
        loop(cons t.cons)
      ?.  ?=([@ ~] pith) 
        loop(cons t.cons)
      =/  =stud:neo  i.pith
      ?.  =(%vase p.q.tale)
        loop(cons t.cons)
      ~|  p.q.tale
      =/  vax=vase   q.q.tale
      ~>  %mean.|.((sell vax))
      =+  !<(grab=stud:neo (slot 4 vax))
      =+  !<(grow=stud:neo (slot 11 vax))
      =/  grab-pith=pith:neo  [%grab (stud-to-pith:n grab)]
      =/  grow-pith=pith:neo  [%grow (stud-to-pith:n grow)]
      =/  thru-pith=pith:neo  (welp [%thru (stud-to-pith:n grab)] (stud-to-pith:n grow))
      =.  this  (add-index grab-pith grow)
      =.  this  (add-index grow-pith grab)
      =.  run  (emit (welp here.bowl %index thru-pith) %make %stud `stud/!>(stud) *crew:neo)
      loop(cons t.cons)
    ::
    ++  add-index
      |=  [pat=pith:n =stud:neo]
      =/  pit  (welp here.bowl %index pat)
      ?:  (~(has of made) pat)
        ~&  adding-to/[pit stud=stud]
        =.  run  (emit pit %poke stud/!>(stud))
        this
      =.  made  (~(put of made) pat ~)
      ~&  make-fresh/pit
      =.  run  
        (emit pit %make %studs `studs/!>((sy stud ~)) *crew:neo)
      this
    --
  ++  build-aggregate
    |=  dirty=gift:neo
    %-  emil
    %-  zing
    %+  turn  ~(tap of dirty)
    |=  [=pith:neo =mode:neo]
    ^-  (list card:neo)
    ?:  ?=(%dif mode)
      ~&  diff-skipping/pith
      ~
    ?.  ?=([@ ~] pith)
      ~
    =/  =stud:neo  i.pith
    =/  =crew:neo
      %-  ~(gas by *crew:neo)
      :~  pro/(welp here.bowl /out/pro/[i.pith])
          con/(welp here.bowl /out/con)
      ==
    :~  [(welp here.bowl #/all-grab/[i.pith]) %make %ford-all-grab `stud/!>(stud) crew]
        [(welp here.bowl #/all-grow/[i.pith]) %make %ford-all-grow `stud/!>(stud) crew]
    ==

  ::
  ++  take-gift
    |=  =gift:neo
    =|  cards=(list card:neo)
    =/  gis  ~(tap of:neo gift)
    =?  run  !=(0 ~(wyt of (~(dip of gift) /out/con)))
      index-cons
    =.  run  (build-aggregate (~(dip of gift) /out/pro))
    =|  err-count=@ud
    |-  ^+  run
    ?~  gis
      run
    =/  [=pith:neo =mode:neo]  i.gis
    ?.  ?=([%src *] pith)
      ?.  ?=([%out *] pith)
        $(gis t.gis)
      ?~  val=(~(get of kids.bowl) pith)
        $(gis t.gis)
      ?.  =(%tang p.q.u.val)
        $(gis t.gis)
      $(gis t.gis, run (report-err pith err-count), err-count +(err-count))
    =/  =prop:neo  (pith-to-prop t.pith)
    ?-    mode
        %dif  $(gis t.gis)
        %del  $(run (handle-del:run pith), gis t.gis)
        %add  $(gis t.gis, run (build-file prop))
    ==
  ::
  ++  handle-del
    |=  =road:neo
    ^+  run
    %-  emil
    ?.  ?=([%src =tack:neo =mark ~] road)
      ?<  ?=([?(%out %pre) *] road)
      ~
    =/  =pith:n  (prop-pith tack.road mark.road)
    :~  [(welp here.bowl out/pith) %cull ~]
        [(welp here.bowl pre/pith) %cull ~]
    ==
  ++  file
    |_  =prop:neo
    ++  here  (welp here.bowl src/pith)
    ++  pith  (prop-pith prop)
    ++  is-auto  &(=(p.prop %pro) (~(has in auto) q.prop))
    ++  parsed  `file:ford:n`(parse-file here src)
    ++  src
      !<(@t q.q:(~(got of:neo kids.bowl) src/pith))
    --
  ++  build-files
    |=  pos=(list prop:neo)
    ?~  pos
      run
    $(pos t.pos, run (build-file i.pos))
  ++  build-file
    |=  =prop:neo
    ^+  run
    =*  fil  ~(. file prop)
    ?:  (~(has in broken) prop)
      run :: (emit (welp here.bowl out/pith:fil) %make %riff `vase/!>(~) ~)
    ?:  &(=(p.prop %pro) is-auto:fil)
      run
::  ?:  =(p.prop %con)
::    run
    =.  run  (build-prelude prop)
    (do-slap prop)
  ++  import-to-props
    |=  [=tack:n imports=(list [face=term =stud:n])]
    %+  murn  imports
    |=  [fac=term =stud:neo]
    ?.  (~(has-stud floppy:n sta) stud)
      ~
    `[tack ?@(stud stud mark.stud)]
  ::
  ++  build-prelude
    |=  =prop:neo
    ^+  run
    =/  fil=file:ford:n  ~(parsed file prop)
    =.  run  (build-files (import-to-props %pro pro.fil))
    =.  run  (build-files (import-to-props %lib lib.fil))
    :: =.  run  (build-files (import-to-props %fil fil.fil))
    (make-prelude prop fil)
  ++  do-slap
    |=  =prop:neo
    =*  fil  ~(. file prop)
    %^  do-make  (welp here.bowl out/pith:fil)  %ford-slap
    `(~(gas by *conf:neo) sut/(welp here.bowl pre/pith:fil) hoon/(ours (welp here.bowl src/pith:fil)) ~)
  ++  make-deps
    =|  idx=@ud
    |=  [=prop:n deps=(list [face=term =pith:n])]
    =/  pat=pith:n  (welp here.bowl pre/(prop-pith prop))
    ^+  run
    ?~  deps
      %+  same  pat
      ?:  =(0 idx)  pith:reef
      `pith:n`(snoc pat ud/(dec idx))
    =/  wer=pith:n  (snoc pat ud/idx)
    =/  fac=pith:n  (snoc wer %face)
    =/  fav=pith:n  (snoc fac %term)
    =.  run  (do-make fav %term `term/!>(face.i.deps) ~)
    =.  run  (face fac fav pith.i.deps)
    =/  prev=pith:n
      ?:  =(idx 0)  pith:reef
      (snoc pat ud/(dec idx))
    =.  run  (slop wer fac prev)
    $(deps t.deps, idx +(idx))
  ++  make-prelude
    |=  [=prop:n =file:ford:neo]
    (make-deps prop (file-to-deps file))
  ::
  ++  build-pros
    |=  pos=(list stud:neo)
    ^+  run
    ?~  pos  run
    ?.  (~(has-stud floppy:n sta) i.pos)
      $(pos t.pos)
    =.  run  (build-file %pro ?@(i.pos i.pos mark.i.pos))
    $(pos t.pos)
  ::
  ++  do-make
    |=  [=pith:neo lib=term sta=(unit pail:neo) =conf:neo]
    (emit pith %make lib sta conf)
  ::
  ++  ford-slap
    |=  [wer=pith sut=pith src=pith]
    %^  do-make  wer  %ford-slap
    `(~(gas by *conf:neo) sut/(ours sut) hoon/(ours src) ~)
  ::
  ++  slop
    |=  [wer=pith a=pith b=pith]
    %^  do-make  wer  %ford-slop
    `(~(gas by *conf:neo) a/a b/b ~)
  ++  face
    |=  [wer=pith face=pith sut=pith]
    %^  do-make  wer  %ford-face
    `(~(gas by *conf:neo) face/face sut/sut ~)
  ++  same
    |=  [wer=pith from=pith]
    %^  do-make  wer  %ford-same
    `(~(gas by *conf:neo) src/from ~)
  ++  ours
    |=  p=pith:neo  p  :: `pith:neo`[p/our.bowl p]
  ++  file-to-deps
    |=  =file:ford:neo
    ^-  (list [term pith])
    %-  zing
    :~  
      (turn pro.file |=(p=pro:ford:neo [face.p [p/our.bowl (~(pith press:neo pro/stud.p) %out)]]))
      (turn lib.file |=(l=lib:ford:neo [face.l [p/our.bowl (~(pith press:n lib/stud.l) %out)]]))
      (turn fil.file |=(l=lib:ford:neo [face.l [p/our.bowl (~(pith press:n fil/stud.l) %src)]]))
      (turn far.file |=(f=far:ford:neo ?>(?=(@ stud.f) [face.f [p/our.bowl /cod/std/all-grow/[stud.f]/out]])))
      (turn fal.file |=(f=far:ford:neo ?>(?=(@ stud.f) [face.f [p/our.bowl /cod/std/all-grab/[stud.f]/out]])))
    ==
  ::
  ++  prop-pith
    |=  =prop:neo
    ^-  pith:neo
    /[p.prop]/[q.prop]
  ::
  ++  pith-to-prop
    |=  =road:neo
    (need (pith-to-prop-soft road))
  ::
  ++  pith-to-prop-soft
    |=  =road:neo
    ^-  (unit prop:neo)
    ?.  ?=([=tack:neo =mark ~] road)
      ~
    `[tack mark]:road
  --
--
