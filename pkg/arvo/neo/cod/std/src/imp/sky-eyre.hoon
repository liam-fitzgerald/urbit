/@  eyre-reqs
/-  serv=server
^-  kook:neo
|%
++  state  pro/%sig
++  poke   (sy %eyre-task ~)
++  kids
  :+  ~  %y
  %-  ~(gas by *lads:neo)
  ~
++  deps
  %-  ~(gas by *band:neo)
  ~
::
++  form
  |_  [=bowl:neo =aeon:t =pail:t]
  ++  poke
    |=  [=stud:t vax=vase]
    ^-  (quip card:neo pail:t)
    ~&  %poke-sky
    ?+    stud  ~|(bad-stud/stud !!)
         %eyre-task
      =+  !<(=task:eyre:neo vax)
      =/  [eyre-id=@ta req=inbound-request:eyre]  task
      ?.  authenticated.req
        =/  eyre=pith:t  #/[p/our.bowl]/vane/eyre
        :_  pail
        %+  ~(respond neo:serv eyre)   eyre-id
        (login-redirect:gen:serv request.req)

      =/  inner=pith:t  #/[p/our.bowl]/sky
      =/  =crew:neo  (~(gas by *crew:neo) src/inner ~)
      =/  =made:neo  [%sky-eyre-handler `[stud vax] crew]
      :_  sig/!>(~)
      :~  [(welp here.bowl #/[uv/eny.bowl]) %make made]
      ==
    ==
  ++  init
    |=  pal=(unit pail:t)
    :_  sig/!>(~)
    =/  =pith:t  #/[p/our.bowl]/vane/eyre
    =/  =binding:eyre  [~ ~[%neo %sky]]
    =/  =req:eyre:neo  [%connect binding here.bowl]
    :~  [pith %poke eyre-req/!>(req)]
    ==
  --
--
