/@  eyre-reqs
/-  serv=sky-server
/-  srv=server
^-  kook:neo
|%
++  state  pro/%sig
++  poke   (sy %eyre-task ~)
++  kids
  :+  ~  %y
  ^-  (map pish:neo lash:neo)
  %-  malt
  :~  :-  [|/%uv |]
      [pro/%eyre-task ~]
  ==
++  deps
  %-  ~(gas by *band:neo)
  ~
::
++  form
  |_  [=bowl:neo =aeon:t =pail:t]
  ++  poke
    |=  [=stud:t vax=vase]
    ^-  (quip card:neo pail:t)
    ?+    stud  ~|(bad-stud/stud !!)
        %eyre-task
      =+  !<(=task:eyre:neo vax)
      =/  [eyre-id=@ta req=inbound-request:eyre]  task
      ?.  authenticated.req
        =/  eyre=pith:t  #/[p/our.bowl]/vane/eyre
        :_  pail
        %+  ~(respond neo:srv eyre)   eyre-id
        (login-redirect:gen:srv request.req)
      =/  purl  (parse-url:serv request.req)
      =/  inner=pith:t  (pave:neo pax.purl)
      =/  =crew:neo  (~(gas by *crew:neo) src/inner ~)
      =/  =made:neo  [%hawk-eyre-handler `[stud vax] crew]
      :_  sig/!>(~)
      :~  [(welp here.bowl #/[uv/(end 3^4 eny.bowl)]) %make made]
      ==
    ==
  ++  init
    |=  pal=(unit pail:t)
    :_  sig/!>(~)
    =/  =pith:t  #/[p/our.bowl]/vane/eyre
    =/  =binding:eyre  [~ ~[%neo %hawk]]
    =/  =req:eyre:neo  [%connect binding here.bowl]
    :~  [pith %poke eyre-req/!>(req)]
    ==
  --
--
