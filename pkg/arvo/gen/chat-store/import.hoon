/+  store=chat-json
:-  %say
|=  [[now=@da eny=@uvJ bec=beak] [file=path chat=path ~] ~]
:-  %chat-action
=/  =json
  .^(json %cx /(scot %p p.bec)/home/(scot %da now)/ file)
?>  ?=(%a -.json)
=/  envelopes=(list envelope:store)
  (turn p.json envelope:enjs:store)
[%messages envelopes]
