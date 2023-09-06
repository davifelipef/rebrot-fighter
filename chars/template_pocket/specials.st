;---------------------------------------------------------------------------
;-------------SPECIALS------------------------------------------------------
;---------------------------------------------------------------------------
;Eagle Dive
;---------------------------------------------------------------------------
[Statedef 1020]
type    = A
movetype= A
physics = A
juggle  = 3
ctrl = 0
anim = 1020
velset = 9,1
poweradd = 35

;[State 1122,Gravity]
;type = Gravity
;Trigger1 = 1

[State 1122,Valadd]
type = Veladd
trigger1 = 1
x = -.3

[State 1045, 7]
type = Explod
triggerall = !NumExplod(591)
trigger1 = time = 0
anim = F591
id= 591
pos = 15, -55
postype = p1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 700, 1]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage = 70, 5
animtype = Medium
guardflag = HA
hitflag = MAF
priority = 6, Hit
pausetime = 6, 11
sparkno = 3
sparkxy = -10,-30
hitsound = S2, 2
guardsound = S3,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -6,-2
airguard.velocity = -1,0
air.type = High
air.velocity = -3.8,-3
air.hittime = 12

[State 700, snd]
type = PlaySnd
trigger1 = Time = 1
value = 21, 1

[State 230, 1]
type = PlaySnd
trigger1 = Time = 2
value = 8, 3

[State 700, Change to Fall]
type = ChangeState
trigger1 =time = 50
value = 660


;---------------------------------------------------------------------------
;Eagle Dive  Strong
;---------------------------------------------------------------------------
[Statedef 1025]
type    = A
movetype= A
physics = A
juggle  = 3
ctrl = 0
anim = 1020
velset = 10,4
poweradd = 35


[State 1122,Valadd]
type = Veladd
trigger1 = 1
x = -.3

[State 1045, 7]
type = Explod
triggerall = !NumExplod(591)
trigger1 = time = 0
anim = F591
id= 591
pos = 15, -55
postype = p1
bindtime = 1
removetime = -2
ontop = 1
ownpal = 1
removeongethit = 1

[State 700, 1]
type = HitDef
trigger1 = time = 0
attr = A, NA
damage = 100, 9
animtype = Medium
guardflag = HA
hitflag = MAF
priority = 6, Hit
pausetime = 4, 11
sparkno = 2
sparkxy = -10,-30
hitsound = S2, 2
guardsound = S3,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -7,-2
airguard.velocity = -2,0
air.type = High
air.velocity = -4.8,-4
air.hittime = 12

[State 700, snd]
type = PlaySnd
trigger1 = Time = 1
value = 21, 1

[State 230, 1]
type = PlaySnd
trigger1 = Time = 2
value = 8, 3


[State 700, Change to Fall]
type = ChangeState
trigger1 =time = 50
value = 660
;-----------------------------------------------
