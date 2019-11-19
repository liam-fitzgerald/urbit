/+  *server,
    auto=language-server-complete,
    lsp-parser=language-server-parser,
    easy-print=language-server-easy-print,
    rune-snippet=language-server-rune-snippet
|%
:: +move: output effect
::
+$  move  [bone card]
:: +card: output effect payload
::
+$  card
  $%  [%connect wire binding:eyre term]
      [%disconnect wire binding:eyre]
      [%http-response =http-event:http]
      [%poke wire dock out-pokes]
      [%build wire ? schematic:ford]
  ==
::
+$  out-pokes  [%kiln-commit term _|]
::
+$  lsp-req 
  $:  uri=@t
      $%  [%sync changes=(list change)]
          [%completion position]
          [%commit @ud]
          [%hover position]
      ==
  ==
::
+$  change
  $:  range=(unit range)
      range-length=(unit @ud)
      text=@t
  ==
::
+$  range
  $:  start=position
      end=position
  ==
::
+$  position
  [row=@ud col=@ud]
::
+$  state  bufs=(map uri=path buf=wall)
--
::
|_  [bow=bowl:gall state]
::
++  this  .
::
++  prep
  |=  old=(unit state)
  ^-  (quip move _this)
  ~&  >  %lsp-prep
  ?~  old
    :_  this
    [ost.bow %connect / [~ /'~language-server-protocol'] %language-server]~
  [~ this(bufs *state)]
::
::  alerts us that we were bound.
::
++  bound
  |=  [wir=wire success=? binding=binding:eyre]
  ^-  (quip move _this)
  [~ this]
::
::  +poke-handle-http-request: received on a new connection established
::
++  parser
  =,  dejs:format
  |^
  %:  ot
    uri+so
    :-  %data
    %-  of
    :~  sync+sync
        completion+position
        commit+ni
        hover+position
    ==
    ~
  ==
  ::
  ++  sync
    %-  ar
    %:  ou
      range+(uf ~ (pe ~ range))
      'rangeLength'^(uf ~ (pe ~ ni))
      text+(un so)
      ~
    ==
  ::
  ++  range
    %:  ot
      start+position
      end+position
      ~
    ==
  ::
  ++  position
    %:  ot
      line+ni
      character+ni
      ~
    ==
  --
::
++  json-response
  |=  jon=json
  ^-  (list move)
  :_  ~
  :*
    ost.bow
    %http-response
    (json-response:app (json-to-octs jon))
  ==
::
++  coup
  |=  [=wire saw=(unit tang)]
  ^-  (quip move _this)
  ?~  wire
    [~ this]
  ?.  =('commit' i.wire)
    [~ this]
  ?~  t.wire
    [~ this]
  :_  this
  =/  buf=wall  (~(got by bufs) t.wire)
  (run-ford-build buf t.wire)
::
++  poke-handle-http-request
  %-  (require-authorization:app ost.bow move this)
  |=  =inbound-request:eyre
  ^-  (quip move _this)
  ?>  ?=(^ body.request.inbound-request)
  =/  =lsp-req
    %-  parser
    (need (de-json:html q.u.body.request.inbound-request))
  =/  file-path
    (need (parse-uri uri.lsp-req))
  =/  buf  (~(gut by bufs) file-path *wall)
  =^  moves  buf
    ?-  +<.lsp-req
      %sync        (handle-sync buf +>.lsp-req)
      %completion  (handle-completion buf +>.lsp-req)
      %commit      (handle-commit buf file-path)
      %hover       (handle-hover buf +>.lsp-req)
    ==
  =.  bufs
    (~(put by bufs) file-path buf)
  [moves this]
::
++  regen-diagnostics
  |=  buf=wall
  ^-  json
  =/  t=tape
    (zing (join "\0a" buf))
  =/  parse
    (lily:auto t (lsp-parser *beam))
  ?:  ?=(%| -.parse)
    (format-diagnostic p.parse)
  =,  enjs:format
  %-  pairs
  :~  good+b+&
  ==
::
++  format-diagnostic
  |=  [row=@ col=@]
  ^-  json
  =,  enjs:format
  %-  pairs
  :~  good+b+|
      :+  %diagnostics  %a  :_  ~
      =/  loc  (pairs line+(numb (dec row)) character+(numb col) ~)
      %-  pairs
      :~  range+(pairs start+loc end+loc ~)
          severity+n+'1'
          message+s+'syntax error'
      ==
  ==
++  run-ford-build
  |=  [buf=wall =path]
  ^-  (list move)
  =/  t=tape
    (zing (join "\0a" buf))
  =/  parse
    (lily:auto t (lsp-parser `beam`[byk.bow path]))
  ?:  ?=(%| -.parse)
    ~
  ~&  path
  :_  ~
  :*
    ost.bow
    %build
    [%build (scot %da now.bow) path]
    live=%.n
    %plan
    source-rail.p.parse
    `coin`blob+**
    `scaffold:ford`p.parse
  ==
::
::
++  made
  |=  $:  way=wire
          date=@da
          $=  result
          $%  [%complete build-result=build-result:ford]
              [%incomplete =tang]
      ==  ==
  ~&  result
  [~ this]
::
++  parse-uri
  |=  uri=@t
  ^-  (unit path)
  =/  delim  ;~(pose fas dot)
  =/  res
    `path`(rash uri (more delim (cook crip (star ;~(less delim prn)))))
  |-  ^-  (unit path)
  ?~  res
    ~
  ?~  t.res
    ~
  ?~  t.t.res
    ~
  ?:  &(=('zod' i.res) =('home' i.t.res))
    [~ t.t.res]
  $(res t.res)

  
++  handle-commit
  |=  [buf=wall =path]
  ^-  [(list move) wall]
  :_  buf
  =/  jon
    (regen-diagnostics buf)
  :_  (json-response jon)
  :*
    ost.bow
    %poke
    [%commit path]
    [our.bow %hood]
    %kiln-commit
    q.byk.bow
    |
  ==
::
++  handle-hover
  |=  [buf=wall row=@ud col=@ud]
  ^-  [(list move) wall]
  =/  txt
    (zing (join "\0a" buf))
  =+  (get-id:auto (get-pos buf row col) txt)
  ?~  id
    [(json-response *json) buf]
  =/  match=(unit [=term =type])
    (search-exact:auto u.id (get-identifiers:auto -:!>(..zuse)))
  ?~  match
    [(json-response *json) buf]
  =/  contents
    %-  crip
    ;:  weld
      "`"
      ~(ram re ~(duck easy-print type.u.match))
      "`"
    ==
  :_  buf
  %-  json-response
  %-  pairs:enjs:format
  [contents+s+contents ~]
::
++  handle-sync
  |=  [buf=wall changes=(list change)]
  :-  (json-response *json)
  |-  ^-  wall
  ?~  changes
    buf
  ?:  ?|(?=(~ range.i.changes) ?=(~ range-length.i.changes))
    =/  =wain  (to-wain:format text.i.changes)
    =.  buf  (turn wain trip)
    $(changes t.changes)
  =/  =tape      (zing (join "\0a" buf))
  =/  start-pos  (get-pos buf start.u.range.i.changes)
  =/  end-pos    (get-pos buf end.u.range.i.changes)
  =.  tape
    ;:  weld
      (scag start-pos tape)
      (trip text.i.changes)
      (slag end-pos tape)
    ==
  =.  buf  (to-wall tape)
  $(changes t.changes)
::
++  to-wall
  |=  =tape
  ^-  wall
  %+  roll  (flop tape)
  |=  [char=@tD =wall]
  ?~  wall
    [[char ~] ~]
  ?:  =('\0a' char)
    [~ wall]
  [[char i.wall] t.wall]
::
++  get-pos
  |=  [buf=wall position]
  ^-  @ud
  ?~  buf
    0
  ?:  =(0 row)
    col
  %+  add  +((lent i.buf))  ::  +1 because newline
  $(row (dec row), buf t.buf)
::
++  safe-sub
  |=  [a=@ b=@]
  ?:  (gth b a)
    0
  (sub a b)
::
++  handle-completion
  |=  [buf=wall row=@ud col=@ud]
  ^-  [(list move) wall]
  =/  =tape  (zing (join "\0a" buf))
  =/  pos  (get-pos buf row col)
  :_  buf
  ::  Check if we're on a rune
  ::
  =/  rune  (swag [(safe-sub pos 2) 2] tape)
  ?:  (~(has by runes:rune-snippet) rune)
    (json-response (rune-snippet rune))
  ::  Don't run on large files because it's slow
  ::
  ?:  (gth (lent buf) 1.000)
    =,  enjs:format
    (json-response (pairs good+b+& result+~ ~))
  ::
  =/  tl
    (tab-list-tape:auto -:!>(..zuse) pos tape)
  =,  enjs:format
  %-  json-response
  ?:  ?=(%| -.tl)
    (format-diagnostic p.tl)
  ?~  p.tl
    *json
  %-  pairs
  :~  good+b+&
  ::
      :-  %result
      %-  pairs
      :~  'isIncomplete'^b+&
      ::
          :-  %items
          :-  %a
          =/  lots  (gth (lent u.p.tl) 10)
          %-  flop
          %+  turn  (scag 50 u.p.tl)
          |=  [=term =type]
          ?:  lots
            (frond label+s+term)
          =/  detail  (crip ~(ram re ~(duck easy-print type)))
          (pairs label+s+term detail+s+detail ~)
      ==
  ==
--
