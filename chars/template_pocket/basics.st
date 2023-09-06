;-----------------------------------------------------------------------
;BASIC Attacks
;-----------------------------------------------------------------------
;---------------------------------------------------------------------------
; Stand Light Punch
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 200
poweradd = 20
sprpriority = 2

[State 200,Anim]
type = ChangeAnim
trigger1 = time = 0
value = 200 + var(11)

[State 200, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 25, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = 0
sparkxy = -10, -16
hitsound = S2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 1
ground.hittime  = 12
ground.velocity = -1
air.velocity = -3
airguard.velocity = -6
ground.cornerpush.veloff = -3
air.fall = 1
fall.recovertime = 16
air.type = High
air.hittime = 12

[State 200, 1]
type = PlaySnd
trigger1 = Time = 0
value = 21, 0

[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 8, 0]
type = ChangeState
triggerall = var(7)
triggerall = var(8) = [0,1]
trigger1 = movecontact
value = 210

[State 8, 0]
type = ChangeState
triggerall = var(7)
triggerall = var(8) = [2,3]
trigger1 = movecontact
value = 230

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing strong punch
;---------------------------------------------------------------------------
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 210
sprpriority = -1

[State 200,Anim]
type = ChangeAnim
trigger1 = time = 0
value = 210 + var(11)

[State 210, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = F918
id= 918
supermove = 1
ontop = 1
removeongethit = 1


[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 210, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,1

[State 210, vel]
type=velset
trigger1=animelem=1
x=3

[State 210, sts]
type=statetypeset
trigger1=animelemtime(3)>=0
statetype=S
physics=S

[State 210, push]
type=playerpush
trigger1=animelemtime(3)>=0&&animelemtime(8)<0&&movehit
value=0
ignorehitpause=1


[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 80, 0
animtype = Back
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 2, 15
sparkno = 3
sparkxy = -10, -16
hitsound = S50,5
guardsound = S3, 0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -9
guard.velocity = -8
air.velocity = -5
airguard.velocity = -6
ground.cornerpush.veloff = -5
air.fall = 1
fall.recovertime = 26

;[State 8, 0]
;type = ChangeState
;triggerall = var(7)
;triggerall = var(8) = [0,3]
;trigger1 = movecontact
;value = 1000

[State 210, 4]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing light kick
;---------------------------------------------------------------------------
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 22
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 2

[State 200,Anim]
type = ChangeAnim
trigger1 = time = 0
value = 230 + var(11)

[State 230, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 230, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0

[State 230, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = -10,-25
hitsound = S2,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 3
ground.hittime = 12
ground.velocity = -3
air.velocity = -3
airguard.velocity = -6
ground.cornerpush.veloff = -5
air.fall = 1
fall.recovertime = 16

[State 8, 0]
type = ChangeState
triggerall = var(7)
triggerall = var(8) = [0,1]
trigger1 = movecontact
value = 210

;[State 8, 0]
;type = ChangeState
;triggerall = var(7)
;triggerall = var(8) = [2,3]
;trigger1 = movecontact
;value = 1100

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong kick
;---------------------------------------------------------------------------
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 22
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 2

[State 200,Anim]
type = ChangeAnim
trigger1 = time = 0
value = 240 + var(11)

[State 240, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 240, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,1

[State 240, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 48
guardflag = MA
pausetime = 12,12
sparkno = 3
sparkxy = -10,-25
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -3 ,-2
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -3,-1
air.hittime = 20
fall = 1

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------
;Crouching light punch
;---------------------------------------------------------------------------
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 15
ctrl = 0
anim = 400
sprpriority = 2

[State 200,Anim]
type = ChangeAnim
trigger1 = time = 0
value = 400 + var(11)

[State 400, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 400, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 25
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 10,11
sparkno = 0
sparkxy = -10,-22
hitsound = S2,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 2
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1.5,-3

[State 400, 3]
type = null;CtrlSet
trigger1 = Time = 3
value = 1

[State 8, 0]
type = ChangeState
triggerall = var(7)
triggerall = var(8) = [0,1]
trigger1 = movecontact
value = 410

[State 8, 0]
type = ChangeState
triggerall = var(7)
triggerall = var(8) = [2,3]
trigger1 = movecontact
value = 430

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching strong punch
;---------------------------------------------------------------------------
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 410
sprpriority = 2

[State 200,Anim]
type = ChangeAnim
trigger1 = time = 0
value = 410 + var(11)

[State 410, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 410, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,1

[State 210, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,1

[State 210, vel]
type=velset
trigger1=animelem=1
x=5

[State 210, sts]
type=statetypeset
trigger1=animelemtime(3)>=0
statetype=S
physics=S

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State 410, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 68
animtype  = Medium
hitflag = MAF
guardflag = M
pausetime = 8,12
sparkno = 2
sparkxy = -10,-25
hitsound = S50,5
guardsound = S3,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 25
ground.velocity = 0 ,-12.2
guard.velocity = -18
air.type = low
air.velocity = 0,-16
yaccel = 0.66
p2stateno = 226
p2facing = 1

[State 410, 3]
type = ChangeState
triggerall = (Movehit) && (time = [9,11])
trigger1 = command = "holdup"
trigger2 = var(7)
value = 1045
ctrl = 1

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching light kick
;---------------------------------------------------------------------------
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 22
ctrl = 0
anim = 430
sprpriority = 2

[State 200,Anim]
type = ChangeAnim
trigger1 = time = 0
value = 430 + var(11)

[State 430, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 430, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0


[State 430, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 30
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = 1
sparkxy = -10,-8
hitsound = S2,0
guardsound = S3,0
ground.type = Low
ground.slidetime = 2
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20

[State 8, 0]
type = ChangeState
triggerall = var(7)
triggerall = var(8) = [0,3]
trigger1 = movecontact
value = 410


[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch Medium Kick
;---------------------------------------------------------------------------
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 70
ctrl = 0
anim = 440
sprpriority = 2

[State 200,Anim]
type = ChangeAnim
trigger1 = time = 0
value = 440 + var(11)

[State 440, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 440, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,1

[State 3000, dust]
type = Explod
trigger1 = Time = 0
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State 440, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 50
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = 3
sparkxy = -5,-10
hitsound = S2,1
guardsound = S3,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-2
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1

[State 440, end]
type=changestate
trigger1=!animtime
value= 11
ctrl=1

;---------------------------------------------------------------------------
;Jump Light Punch
;---------------------------------------------------------------------------
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 11
ctrl = 0
anim = 600
sprpriority = 2

[State 200,Anim]
type = ChangeAnim
trigger1 = time = 0
value = 600 + var(11)

[State 600, StateTypeSet]
type = StateTypeSet
trigger1 = var(10) = 1
physics = N

[State 600, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 600, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0


[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 25
animtype = light
guardflag = HA
hitflag = MAFD
priority = 4, Hit
pausetime = 7,8
sparkno = 0
sparkxy = -10,-16
hitsound = S2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -4
guard.velocity = -10.6
airguard.velocity = -6
air.type = low
air.velocity = 0, ifelse((var(3) = 1) && (Vel Y < 0),-7.5,-6)
down.velocity = -4, -4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
p2facing = 1

[State 600, 3]
type = CtrlSet
trigger1 = Time = 17
value = 1

[State 8, 0]
type = ChangeState
triggerall = var(7)
triggerall = var(8) = [0,4]
trigger1 = movecontact
value = 630

[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

;---------------------------------------------------------------------------
;Jump Strong Punch
;---------------------------------------------------------------------------
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 5
ctrl = 0
anim = 610
poweradd = 60

[State 200,Anim]
type = ChangeAnim
trigger1 = time = 0
value = 610 + var(11)

[State 610, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 82, 0
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 6, Hit
pausetime = 12, 12
sparkno =3
sparkxy = -10,-20
hitsound = S50,10
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5 ,0
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -2, 3
down.velocity = -4,-4
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.37,0.41)
air.hittime = 20
p2facing = 1


[State 610, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 610, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,1

[State 610, 2x]
type = PlaySnd
trigger1 = time = 0
value = 30,3

[State 8, 0]
type = ChangeState
triggerall = var(7)
triggerall = var(8) = [0,4]
trigger1 = movecontact
value = 640

[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660


;---------------------------------------------------------------------------
;Jump Light Kick
;---------------------------------------------------------------------------
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 20
ctrl = 0
anim = 630
sprpriority = 2

[State 200,Anim]
type = ChangeAnim
trigger1 = time = 0
value = 630 + var(11)

[State 630, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 630, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,0


[State 630, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 28
animtype = Light
guardflag = HA
hitflag = MAFD
priority = 4, Hit
pausetime = 8,8
sparkno = 1
sparkxy = -5,-20
hitsound = S2,0
guardsound = S3,0
ground.type = High
ground.slidetime = 10
ground.hittime = 12
ground.velocity = -2
guard.velocity = -17
airguard.velocity = -6
air.type = Low
air.velocity = 0,-3
down.velocity = -4,-2
yaccel = ifelse((Var(3) = 1) && (Vel Y < 0), 0.27,0.31)
p2facing = 1

[State 8, 0]
type = ChangeState
triggerall = var(7)
triggerall = var(8) = [0,4]
trigger1 = movecontact
value = 610

[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

;--------------------------------------------------------------------------
;Jump Strong Kick
;---------------------------------------------------------------------------
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 640
sprpriority = 2

[State 200,Anim]
type = ChangeAnim
trigger1 = time = 0
value = 640 + var(11)

[State 640, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 2

[State 640, 1x]
type = PlaySnd
trigger1 = time = 0
value = 21,1

[State 640, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 80
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 3
sparkxy = -10,-30
hitsound = S2,2
guardsound = S3,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5 ,0
airguard.velocity = -1.8,-.8
air.type = High
air.velocity = -7,5
air.hittime = 20
p2facing = 1
fall = 1
air.fall = 1

[State 6X0, Change to Fall]
type = ChangeState
trigger1 = AnimTime = 0
value = 660
;---------------------------------------------------------------------------
;Throw
;-----------------------------------------------------------------------------
[Statedef 800]
type = S
movetype = A
physics = S
velset = 0,0
anim = 800
ctrl = 0

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 2, miss
sparkno = -1
hitsound = S1, 1
sprpriority = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 804
p2stateno = 805
guard.dist = 0
fall = 1

[State 830, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------------------------

[Statedef 804]
type = S
movetype = A
physics = S
anim = 801
velset = 0,0


[State 1000, 1]
type = PlaySnd
trigger1 = Time = 1
value =3,1

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value =20,9
channel= 4

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 12
value =50,4
channel= 6

[State 810, a]
type = Width
trigger1 = 1
value = 0, 0

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = F918
supermove = 1
ontop = 1
removeongethit = 1


[State 1000, dust]
type = Explod
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 12
anim = F11
pos= 7,-24
supermove = 1
ontop = 1
removeongethit = 1

[State 1000, dust]
type = Explod
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 12
anim = F0
pos= 7,-28
supermove = 1
ontop = 1
removeongethit = 1

[State 1022, a3]
type = TargetLifeadd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 12
value = -10
persistent =1
kill=1

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 1
pos = 10,0


[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
trigger5 = AnimElem = 10
trigger6 = AnimElem = 12
pos = 19,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
pos = 19,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 14
pos =20,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 15
pos = 20,0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 15
attr = S, NA
damage = 80, 0
animtype = Low
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 2, 15
sparkno = 3
sparkxy = -10, -16
hitsound = S50,10
guardsound = S3, 0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -14
guard.velocity = -8
air.velocity = -14
airguard.velocity = -6
ground.cornerpush.veloff = -5
air.fall = 1
fall.recovertime = 26
kill=1


[State 1410, Invincibility]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1410, State]
type = sprpriority
trigger1 = 1
value = 2

[State 1410, State]
type = ChangeState
trigger1 = animtime = 0
value = 12
ctrl = 1
;-----------------------------------------------------------------------------

[Statedef 805]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
poweradd = 80

[State 1410, 1]
type = SprPriority
trigger1 = time >= 0
value = -2

[State 850, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 802

[State 850, 1]
type = screenbound
trigger1 = 1
value = 1

[State 7696, 6]
type = selfstate
trigger1 = AnimTime =0
ctrl = 0
value = 5050

;---------------------------------------------------------------------------
;Throw
;-----------------------------------------------------------------------------
[Statedef 810]
type = S
movetype = A
physics = S
velset = 0,0
anim = 800
ctrl = 0

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 2, miss
sparkno = -1
hitsound = S1, 1
sprpriority = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 814
p2stateno = 815
guard.dist = 0
fall = 1

[State 830, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------------------------

[Statedef 814]
type = S
movetype = A
physics = S
anim = 814
velset = 0,0


[State 1000, 1]
type = PlaySnd
trigger1 = Time = 1
value =3,1

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value =20,9
channel= 4

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 12
trigger6 = AnimElem = 14
value =50,13
channel= 6

[State 810, a]
type = Width
trigger1 = 1
value = 0, 0

[State 1000, dust]
type = Explod
triggerall = !NumExplod(918)
trigger1 = Time = 0
anim = F918
supermove = 1
ontop = 1
removeongethit = 1

[State 1000, dust]
type = Explod
triggerall = !NumExplod(819)
trigger1 = AnimElem = 3
anim =819
supermove = 1
sprpriority = 4
removeongethit = 1

[State 1000, dust]
type = Explod
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 12
trigger6 = AnimElem = 14
anim = F1
pos= 0,-28
supermove = 1
ontop = 1
removeongethit = 1

[State 1022, a3]
type = TargetLifeadd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 12
trigger6 = AnimElem = 14
value = -10
persistent =1
kill=1

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 1
pos = 10,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
trigger5 = AnimElem = 10
trigger6 = AnimElem = 12
trigger6 = AnimElem = 14
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 15
pos = 0,0

[State 1410, 2]
type = TargetBind
trigger1 = AnimElem = 16
pos = 0,0


[State 210, 2]
type = HitDef
trigger1 = AnimElem = 16
attr = S, NA
damage = 80, 0
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 6, Hit
pausetime = 2, 15
sparkno = 3
sparkxy = -10, -16
hitsound = S2,2
guardsound = S3, 0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = 2,12
guard.velocity = -8
air.velocity = 2,12
airguard.velocity = -6
ground.cornerpush.veloff = -5
air.fall = 1
fall.recovertime = 26
kill=1


[State 1410, Invincibility]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1410, State]
type = sprpriority
trigger1 = 1
value = -2

[State 1410, State]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------------------------
[Statedef 815]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0, 0
poweradd = 80

[State 1410, 1]
type = SprPriority
trigger1 = time >= 0
value = 2

[State 850, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 815

[State 850, 1]
type = screenbound
trigger1 = 1
value = 1

[State 7696, 6]
type = selfstate
trigger1 = AnimTime =0
ctrl = 0
value = 5050


