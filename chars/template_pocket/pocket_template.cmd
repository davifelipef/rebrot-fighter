;; The CMD file.
;-|Hyper Motions |--------------------------------------------------------
;-----------------


;-| AI activativators |--------------------------------------------------------

[Command]
name = "ai"
command = x,x,x,x,x,x,x,x,x,x
time = 1

[Command]
name = "ai1"
command = y,y,y,y,y,y,y,y,y,y
time = 1

[Command]
name = "ai2"
command = U,U,U,U,U,U,U,U,U,U,U
time = 1

[Command]
name = "ai3"
command = z,z,z,z,z,z,z,z,z,z,z,z
time = 1

[Command]
name = "ai4"
command = a,b,x,y
time = 1

[Command]
name = "ai5"
command = U,D,F,B
time = 1

[Command]
name = "ai6"
command = D,F,U,B
time = 1

[Command]
name = "ai7"
command = x,D,x,D,x,D,x,D
time = 1

[Command]
name = "ai8"
command = F,F,F,F,F,F,B,U,U
time = 1

[Command]
name = "ai9"
command = F,F,F
time = 1

[Command]
name = "ai10"
command = B,U,U
time = 1

[Command]
name = "ai11"
command = F,F,F,B,U
time = 1

[Command]
name = "ai12"
command = F,B,F,B,F
time = 1

[Command]
name = "ai13"
command = x,y,a,b
time = 1

;Vixen Fury
[Command]
name = "vixfury"
command = ~F, D , DF, x+y
time = 20


[Command]
name = "hyper_art"
command = D, DF, F, x+y
time = 15

[Command]
name = "hyper_art"
command = D, DF, F, x+z
time = 15

[Command]
name = "hyper_art"
command = D, DF, F, y+z
time = 15

;heal
[Command]
name = "Heal"
command = D, DB, B, a+b
time = 15

;speed
[Command]
name = "speed"
command = D, DF, F, a+b
time = 15



;-| Special Motions |------------------------------------------------------
Rolling Attack
[Command]
name = "rollingA"
command = ~20$B, F, x
time = 15

[Command]
name = "rollingB"
command = ~20$B, F, y
time = 15


;----------------------
;Rolling Claw
[Command]
name = "claw"
command = ~D, DF, F, x
time = 15

[Command]
name = "kick"
command = ~D, DF, F, y
time = 15

;----------------------
[Command]
name = "eagleA"
command = ~D, DF, F, x
time = 15

[Command]
name = "eagleB"
command = ~D, DF, F, y
time = 15

;ShoBatKen
[Command]
name = "tornado"
command = ~D, DF, F, a
time = 15

;ShoBatKen
[Command]
name = "tornadoS"
command = ~D, DF, F, b
time = 15


[Command]
name = "holdpunch"
command = /x
time = 5

[Command]
name = "holdpunch"
command = /y
time = 5

[Command]
name = "holdpunch"
command = /z
time = 5

[Command]
name = "holdkick"
command = /a
time = 5

[Command]
name = "holdkick"
command = /b
time = 5

[Command]
name = "holdkick"
command = /c
time = 5



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| Super Jump Commands |---------------------------------------------------
[Command]
name = "DU"
command = D, U
time = 10

[Command]
name = "DU"
command = D, UB
time = 10

[Command]
name = "DU"
command = D, UF
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+z
time = 1

[Command]
name = "guardpush"
command = z+y
time = 1

[Command]
name = "DU"
command = a+b+c
time = 1

[Command]
name = "run"
command = x+y+z
time = 1

[Command]
name = "throw"
command = y+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
[Statedef -1]

;===========================================================================
;HYPERS
;---------------------------------------------------------------------------
;vixen fury
[State -1, Heavy Y]
type = ChangeState
value = 3000
triggerall = command = "vixfury"
triggerall = power > 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && (MoveContact)
trigger3 = (stateno = 210) && (MoveContact)
trigger4 = (stateno = 230) && (MoveContact)
trigger5 = (stateno = 240) && (MoveContact)
trigger6 = (stateno = 440) && (MoveContact)

[State -1, Healing Factor]
type = ChangeState
value = 3300
triggerall = life < 1000
triggerall = command = "Heal"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Speed up]
type = ChangeState
value = 3400
triggerall = command = "speed"
triggerall = power >= 1000
triggerall = var(11) != 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = MoveContact

;===========================================================================
;---------------------------------------------------------------------------
;SUPERS
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;Eagle Dive
[State -1, Air_Beam X]
type = ChangeState
value = 1020
triggerall = command = "eagleA"
trigger1 = StateType = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 630 && MoveContact
trigger5 = stateno = 640 && MoveContact
trigger6 = stateno = 660

[State -1, Air_Beam X]
type = ChangeState
value = 1025
triggerall = command = "eagleB"
trigger1 = StateType = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 630 && MoveContact
trigger5 = stateno = 640 && MoveContact
trigger6 = stateno = 660
;----------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 1045
trigger1 = command = "DU"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "holdup" && Var(3) != 1
trigger2 = stateno = 410 && MoveContact

;---------------------------------------------------------------------------
;Run Forward
[State -1, Dash Fwd]
type = ChangeState
value = 100
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 105
triggerall = stateno != 100
trigger1 = command = "FF"
trigger2 = command = "run"


;---------------------------------------------------------------------------
;Dash Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = stateno != 105
trigger1 = command = "BB"

; Bounce With Wall
[State -1]
type = ChangeState
value = 48
triggerall = statetype = A
trigger1 = command = "holdfwd"
trigger1 = backedgebodydist <= 2
trigger1 = ctrl = 1
trigger1 = anim = 41 || anim = 43
trigger2 = command = "holdback"
trigger2 = frontedgebodydist <= 2
trigger2 = ctrl = 1
trigger2 = anim = 42 || anim = 44

;===========================================================================
; Throw
[State -1, Throw 1]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Throw 2]
type = ChangeState
value = 810
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Stand Strong  Punch
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact

;Stand Strong  Kick
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact


;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouch Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact

;Crouch Strong Punch
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact


;---------------------------------------------------------------------------
;Crouch Light Kick
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact

;Crouch Medium Kick
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 210 && MoveContact
trigger4 = stateno = 220 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 400 && MoveContact
trigger7 = stateno = 410 && MoveContact
trigger8 = stateno = 420 && MoveContact
trigger9 = stateno = 430 && MoveContact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;Jump Strong Punch
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 630 && MoveContact



;---------------------------------------------------------------------------
;Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact

;Jump Strong Kick
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && MoveContact
trigger3 = stateno = 610 && MoveContact
trigger4 = stateno = 630 && MoveContact


;----------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
; AI <Stuff>
;---------------------------------------------------------------------------
;------------------------------------
;AI Guardia (stand)
;------------------------------------
[State -1]
type = null;ChangeState
triggerall = Statetype != A
triggerall = Statetype = S
triggerall = (Var(1)) && (Ctrl)
triggerall = p2bodydist X <= 100
trigger1 = (P2statetype != C) && (P2Movetype = A)
value = 130

;------------------------------------
;AI Guardia (par-aga)
;------------------------------------
[State -1]
type = ChangeState
triggerall = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = StateNo = 150
value = 152

;------------------------------------
;AI Guardia (Agachado)
;------------------------------------
[State -1]
type = null;ChangeState
triggerall = StateType != A
triggerall = (Var(1)) && (Ctrl)
triggerall = p2bodydist X <= 100
trigger1 = (P2statetype = C) && (P2Movetype = A)
trigger2 = (P2statetype != C) && (P2Movetype = A)
value = 131

;------------------------------------
;AI Guardia (aga-par)
;------------------------------------
[State -1]
type = ChangeState
triggerall = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = StateNo = 152
value = 150

;------------------------------------
;AI Guardia (aereo)
;------------------------------------
[State -1]
type = null;ChangeState
triggerall = Statetype = A
triggerall = (Var(1)) && (Ctrl)
triggerall = p2bodydist X <= 100
trigger1 = P2Movetype = A
value = 132

;------------------------------------
;AI Guardia (aer-aga)
;------------------------------------
[State -1]
type = ChangeState
triggerall = Statetype != A
triggerall = Pos Y > -1
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = stateno = 154
trigger2 = stateno = 155
value = 152

;------------------------------------
;AI Guardia (aer-par)
;------------------------------------
[State -1]
type = ChangeState
triggerall = Statetype != A
triggerall = Pos Y > -1
triggerall = P2statetype != C
trigger1 = stateno = 154
trigger2 = stateno = 155
value = 150


;------------------------------------
;AI Air Recovery
;------------------------------------
[State -1]
type = ChangeState
value = 5210
triggerall = Var(7) = 1
triggerall = StateType = A
triggerall = StateType != L
triggerall = Pos Y < -20
triggerall = Alive
trigger1 = CanRecover = 1
trigger1 = StateNo = 5050

;------------------------------------
;AI Air Recovery (suelo)
;------------------------------------
[State -1]
type = ChangeState
value = 5200
triggerall = Var(7) = 1
triggerall = StateType = A
triggerall = StateType != L
triggerall = Pos Y >= -20
triggerall = Alive
trigger1 = CanRecover = 1
trigger1 = StateNo = 5050

;- | AI Dashes | ----------------------------------------------------------

[State -1]
type = ChangeState
value = 102
triggerall = var(7)
triggerall = var(8) = [0,1]
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
triggerall = (stateno != 102) && (prevstateno != 102)
trigger1 = P2BodyDist X >= 20
trigger1 = ctrl

[State -1]
type = ChangeState
value = 20
triggerall = var(7)
triggerall = P2stateno = [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl

[State -1]
type = ChangeState
value = 200
triggerall = var(7)
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl

[State -1]
type = ChangeState
value = 430
triggerall = var(7)
triggerall = P2stateno != [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl

[State -1]
type = ChangeState
value = 600
triggerall = var(7)
triggerall = (StateType = A) && (MoveType != H)
triggerall = (P2StateType = A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl

[State -1]
type = ChangeState
value = 610
triggerall = var(7)
triggerall = (StateType = A) && (MoveType != H)
triggerall = (P2StateType = A) && (P2life != 0)
trigger1 = P2BodyDist X <= 9
trigger1 = ctrl

[State -1]
type = ChangeState
value = 195
triggerall = var(7)
triggerall = var(8) = 1
triggerall = P2stateno = [5100,5119]
triggerall = (StateType != A) && (MoveType != H)
triggerall = (P2StateType != A)
trigger1 = P2BodyDist X = [100,115]
trigger1 = ctrl

;[State -1]
;type = ChangeState
;value = 1010
;triggerall = var(7)
;triggerall = var(8) = [2,3]
;triggerall = (StateType != A) && (MoveType != H)
;triggerall = (P2StateType != A) && (P2life != 0)
;triggerall = (stateno != 102) && (prevstateno != 102)
;trigger1 = P2BodyDist X <= 30
;trigger1 = ctrl

;[State -1]
;type = ChangeState
;value = 1000
;triggerall = var(7)
;triggerall = var(8) = [2,3]
;triggerall = (StateType != A) && (MoveType != H)
;triggerall = (P2StateType != A) && (P2life != 0)
;trigger1 = P2BodyDist X = [20,220]
;trigger1 = ctrl


;[State -1]
;type = ChangeState
;value = 1100
;triggerall = var(7)
;triggerall = var(8) = [2,3]
;triggerall = prevstateno = 1010
;triggerall = (StateType != A) && (MoveType != H)
;triggerall = (P2StateType != A) && (P2life != 0)
;trigger1 = P2BodyDist X = [60,100]
;trigger1 = ctrl


