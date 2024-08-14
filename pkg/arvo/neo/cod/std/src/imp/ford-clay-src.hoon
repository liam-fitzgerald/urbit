=>
  |%
  ++  parse-file
    |=  [=pith:t txt=@t]
    ^-  file:ford:neo
    :: ~>  %memo./ford/desk
    :: %-  road  |.
    =>  [pith=pith txt=txt neo=neo ..zuse]
    ~>  %memo./ford/desk/parse
    =/  parser  imports:(rein:ford:neo pith)
    =/  res  (rily:u:neo (trip txt) parser)
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
    %-  ~(gas in *(set prop:neo))
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
++  state  pro/%sig
++  poke   (sy %clay-res ~)
++  kids   
  :+  ~  %z
  %-  ~(gas by *lads:neo)
  :~  [& pro/%hoon ~]
  ==
++  deps  
  %-  ~(gas by *deps:neo)
  :~  :-  %clay
      ^-  fief:neo
      :-   &
      :_   ~
      [any/~ (sy %clay-req ~)]
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:t =pail:t]
  +*  run  ~(. +> [bowl ~ !<(disk:neo q.pail)])
      reef  ~(. qua:deps:u:neo [%reef bowl `%vase])
  ++  poke
    |=  [=stud:t vax=vase]
    ^-  (quip card:neo pail:t)
    =+  !<(=desk q.pail)
    :_  pail
    ?>  ?=(%clay-res stud)
    =+  !<(=res:clay:neo vax)
    %+  turn  ~(tap axol-of:neo files.res)
    |=  [=path =cage]
    ^-  card:neo
    [(welp here.bowl (pave:t path)) %make p.cage `cage ~]
  ::
  ++  init
    |=  old=(unit pail:t)
    ^-  (quip card:neo pail:t)
    =+  !<(=desk q:(need old))
    :_  desk/!>(desk)
    :~  [p:(~(got by deps.bowl) %clay) %poke %clay-req !>(`req:clay:neo`[%peer ~ desk /neo ~])]
    ==
  --
--

