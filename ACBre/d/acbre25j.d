BEGIN ACBRE25J
IF ~Global("ACBREINSARADUSH","GLOBAL",3)~ THEN BEGIN SDC.1
SAY @0
IF ~~ THEN DO ~SetGlobal("ACBREINSARADUSH","GLOBAL",4)~ EXIT
END

IF ~Global("AC25PLOT","GLOBAL",2)~ THEN BEGIN PLOT25.START
SAY @1
IF ~~ THEN DO ~SetGlobal("AC25PLOT","GLOBAL",3)ClearAllActions()StartCutSceneMode()Wait(1)CreateCreatureDoor("ACSILVER",[-1.-1],0)Wait(1)ActionOverride("ACSILVER",StartDialogNoSet(PLAYER1)~ EXIT
END

IF ~Global("ACARAC07BANTER","LOCALS",1)~ THEN BEGIN PLOT25.1
SAY @2
IF ~~ THEN DO ~SetGlobal("ACARAC07BANTER","LOCALS",2)~ EXIT
END

IF ~Global("ACADVICE","LOCALS",1)~ THEN BEGIN ADVICE
SAY @3
++ @4 DO ~SetGlobal("ACADVICE","LOCALS",2)~ + ADVICE.1
++ @5 DO ~SetGlobal("ACADVICE","LOCALS",2)SetGlobal("ACADV2","LOCALS",1)~ + ADVICE.2
++ @6 DO ~SetGlobal("ACADVICE","LOCALS",2)SetGlobal("ACADV3","LOCALS",1)~ + ADVICE.3
++ @7 DO ~SetGlobal("ACADVICE","LOCALS",2)SetGlobal("ACADV4","LOCALS",1)~ + ADVICE.4
++ @8 DO ~SetGlobal("ACADVICE","LOCALS",2)SetGlobal("ACADV5","LOCALS",1)~ + ADVICE.5
END

IF ~~ THEN BEGIN ADVICE.1
SAY @9
IF ~Global("ACADV2","LOCALS",0)~ THEN REPLY @5 DO ~SetGlobal("ACADV2","LOCALS",1)~ + ADVICE.2
IF ~Global("ACADV3","LOCALS",0)~ THEN REPLY @6 DO ~SetGlobal("ACADV3","LOCALS",1)~ + ADVICE.3
IF ~Global("ACADV4","LOCALS",0)~ THEN REPLY @7 DO ~SetGlobal("ACADV4","LOCALS",1)~ + ADVICE.4
IF ~Global("ACADV5","LOCALS",0)~ THEN REPLY @8 DO ~SetGlobal("ACADV5","LOCALS",1)~ + ADVICE.5
IF ~Global("ACADV6","LOCALS",0)~ THEN REPLY @10 DO ~SetGlobal("ACADV6","LOCALS",1)~ + ADVICE.6
END

IF ~~ THEN BEGIN ADVICE.2
SAY @11
++ @12 + ADVICE.7
++ @13 + ADVICE.8
IF ~Global("ACADV3","LOCALS",0)~ THEN REPLY @14 DO ~SetGlobal("ACADV3","LOCALS",1)~ + ADVICE.3
IF ~Global("ACADV4","LOCALS",0)~ THEN REPLY @15 DO ~SetGlobal("ACADV4","LOCALS",1)~ + ADVICE.4
IF ~Global("ACADV5","LOCALS",0)~ THEN REPLY @16 DO ~SetGlobal("ACADV5","LOCALS",1)~ + ADVICE.5
IF ~Global("ACADV6","LOCALS",0)~ THEN REPLY @10 DO ~SetGlobal("ACADV6","LOCALS",1)~ + ADVICE.6
END

IF ~~ THEN BEGIN ADVICE.3
SAY @17
++ @18 + ADVICE.7
++ @19 + ADVICE.8
IF ~Global("ACADV2","LOCALS",0)~ THEN REPLY @20 DO ~SetGlobal("ACADV2","LOCALS",1)~ + ADVICE.2
IF ~Global("ACADV4","LOCALS",0)~ THEN REPLY @7 DO ~SetGlobal("ACADV4","LOCALS",1)~  + ADVICE.4
IF ~Global("ACADV5","LOCALS",0)~ THEN REPLY @21 DO ~SetGlobal("ACADV5","LOCALS",1)~ + ADVICE.5
IF ~Global("ACADV6","LOCALS",0)~ THEN REPLY @10 DO ~SetGlobal("ACADV6","LOCALS",1)~ + ADVICE.6
END

IF ~~ THEN BEGIN ADVICE.4
SAY @22 = @23
++ @24 + ADVICE.7
++ @25 + ADVICE.8
IF ~Global("ACADV2","LOCALS",0)~ THEN REPLY @26 DO ~SetGlobal("ACADV2","LOCALS",1)~ + ADVICE.2
IF ~Global("ACADV3","LOCALS",0)~ THEN REPLY @27 DO ~SetGlobal("ACADV3","LOCALS",1)~ + ADVICE.3
IF ~Global("ACADV5","LOCALS",0)~ THEN REPLY @21 DO ~SetGlobal("ACADV5","LOCALS",1)~ + ADVICE.5
IF ~Global("ACADV6","LOCALS",0)~ THEN REPLY @10 DO ~SetGlobal("ACADV6","LOCALS",1)~ + ADVICE.6
END

IF ~~ THEN BEGIN ADVICE.5
SAY @28
++ @29 + ADVICE.7
++ @30 + ADVICE.8
IF ~Global("ACADV2","LOCALS",0)~ THEN REPLY @26 DO ~SetGlobal("ACADV2","LOCALS",1)~ + ADVICE.2
IF ~Global("ACADV3","LOCALS",0)~ THEN REPLY @27 DO ~SetGlobal("ACADV3","LOCALS",1)~ + ADVICE.3
IF ~Global("ACADV5","LOCALS",0)~ THEN REPLY @21 DO ~SetGlobal("ACADV5","LOCALS",1)~ + ADVICE.5
IF ~Global("ACADV6","LOCALS",0)~ THEN REPLY @10 DO ~SetGlobal("ACADV6","LOCALS",1)~ + ADVICE.6
END

IF ~~ THEN BEGIN ADVICE.6
SAY @31
IF ~ReputationLT(PLAYER1,12)~ THEN GOTO ADVICE.9
IF ~ReputationGT(PLAYER1,11)~ THEN GOTO ADVICE.10
END

IF ~~ THEN BEGIN ADVICE.7
SAY @32
++ @33 + ADVICE.9
++ @34 + ADVICE.10
IF ~Global("ACADV2","LOCALS",0)~ THEN REPLY @35 DO ~SetGlobal("ACADV2","LOCALS",1)~ + ADVICE.2
IF ~Global("ACADV3","LOCALS",0)~ THEN REPLY @6 DO ~SetGlobal("ACADV3","LOCALS",1)~ + ADVICE.3
IF ~Global("ACADV5","LOCALS",0)~ THEN REPLY @8 DO ~SetGlobal("ACADV5","LOCALS",1)~ + ADVICE.5
IF ~Global("ACADV6","LOCALS",0)~ THEN REPLY @10 DO ~SetGlobal("ACADV6","LOCALS",1)~ + ADVICE.6
END

IF ~~ THEN BEGIN ADVICE.8
SAY @36
++ @37 + ADVICE.9
++ @34 + ADVICE.10
IF ~Global("ACADV2","LOCALS",0)~ THEN REPLY @35 DO ~SetGlobal("ACADV2","LOCALS",1)~ + ADVICE.2
IF ~Global("ACADV3","LOCALS",0)~ THEN REPLY @6 DO ~SetGlobal("ACADV3","LOCALS",1)~ + ADVICE.3
IF ~Global("ACADV5","LOCALS",0)~ THEN REPLY @8 DO ~SetGlobal("ACADV5","LOCALS",1)~ + ADVICE.5
IF ~Global("ACADV6","LOCALS",0)~ THEN REPLY @10 DO ~SetGlobal("ACADV6","LOCALS",1)~ + ADVICE.6
END

IF ~~ THEN BEGIN ADVICE.9
SAY @38
IF ~~ THEN DO ~SetGlobal("AC25PLOT","GLOBAL",8)~ EXIT
END

IF ~~ THEN BEGIN ADVICE.10
SAY @38
IF ~~ THEN DO ~SetGlobal("AC25PLOT","GLOBAL",9)~ EXIT
END

IF ~OR(2)Global("ACTOWERCLEANER","LOCALS",1)Global("ACTOWERCLEANER","LOCALS",3)~ THEN BEGIN TOWERCLEANER.1
SAY @39
IF ~Global("ACCELLARCLEAN","GLOBAL",1)Global("ACTOWERCLEAN","GLOBAL",0)~ THEN DO ~SetGlobal("ACCELLARCLEAN","GLOBAL",2)IncrementGlobal("ACTOWERCLEANER","LOCALS",1)~ GOTO TOWERCLEANER.2
IF ~Global("ACCELLARCLEAN","GLOBAL",0)Global("ACTOWERCLEAN","GLOBAL",1)~ THEN DO ~SetGlobal("ACTOWERCLEAN","GLOBAL",2)IncrementGlobal("ACTOWERCLEANER","LOCALS",1)~ GOTO TOWERCLEANER.3
END

IF ~~ THEN BEGIN TOWERCLEANER.2
SAY @40
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN TOWERCLEANER.3
SAY @41
IF ~~ THEN EXIT
END

IF ~Global("ACTOWERCLEAN","GLOBAL",2)Global("ACCELLARCLEAN","GLOBAL",2)Global("ARAC06PREP","GLOBAL",3)~ THEN BEGIN AC25END.1
SAY @42 = @43
++ @44 DO ~SetGlobal("ARAC06PREP","GLOBAL",4)~ + AC25END.2
++ @45 DO ~SetGlobal("ARAC06PREP","GLOBAL",4)~ + AC25END.3
++ @46 DO ~SetGlobal("ARAC06PREP","GLOBAL",4)~ + AC25END.4
END

IF ~~ THEN BEGIN AC25END.2
SAY @47
IF ~~ THEN GOTO AC25END.5
END

IF ~~ THEN BEGIN AC25END.3
SAY @48
IF ~~ THEN GOTO AC25END.5
END

IF ~~ THEN BEGIN AC25END.4
SAY @49
IF ~~ THEN GOTO AC25END.5
END

IF ~Global("ACBREFORGESARM","GLOBAL",2)~ THEN BEGIN ACBREFORGESNEWARM2
SAY @50 
IF ~~ THEN DO ~SetGlobal("ACBREFORGESARM","GLOBAL",3)FillSlot(SLOT_RING_RIGHT)~ EXIT
END

CHAIN
IF ~Global("ACBREFORGESARM","GLOBAL",1)~ THEN ACBRE25J ACBREFORGESNEWARM
@51 DO ~SetGlobal("ACBREFORGESARM","GLOBAL",2)~
==AMSMITH IF ~See("AMSMITH")!StateCheck("AMSMITH",CD_STATE_NOTVALID)~ THEN @52
==ACBRE25J IF ~See("AMSMITH")!StateCheck("AMSMITH",CD_STATE_NOTVALID)~ THEN @53
==ACBRE25J @54
END
IF ~~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ACCUT_18")~ EXIT

CHAIN
IF ~Global("ACTOWERCLEANER","LOCALS",5)~ THEN ACBRE25J TOWERCLEANER.4
@55 DO ~IncrementGlobal("ACTOWERCLEANER","LOCALS",1)SetGlobal("ACTOWERCLEAN","GLOBAL",2)SetGlobal("ACCELLARCLEAN","GLOBAL",2)~
==ACBRE25J IF ~AreaCheck("ARAC06")~ THEN @56
==ACBRE25J IF ~!AreaCheck("ARAC06")~ THEN @57
EXIT

CHAIN
IF ~~ THEN ACBRE25J AC25END.5
@58
==ACBRE25J IF ~Global("AC25PLOT","GLOBAL",9)~ THEN @59
==ACBRE25J IF ~Global("AC25PLOT","GLOBAL",8)~ THEN @60 DO ~SetGlobal("AC25PLOT","GLOBAL",10)~
EXIT