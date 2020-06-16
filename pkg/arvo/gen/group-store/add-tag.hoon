::  group-store|add-tag: add tag to ships
::
/-  *group, *group-store
:-  %say
|=  $:  [now=@da eny=@uvJ =beak]
        [[=ship =term =tag ships=(list ship)] ~]
    ==
:-  %group-update
^-  action
[%add-tag [ship term] tag (sy ships)]
