BEGIN ACREG
IF ~Global("AC25PLOT","GLOBAL",6)Global("ACARAC07BANTER","LOCALS",0)~ THEN BEGIN LATER
SAY @0
IF ~~ THEN EXIT
END

IF ~Global("AC25PLOT","GLOBAL",6)!See("ACBRE")!See(PLAYER1)Global("ACARAC07BANTER","LOCALS",2)~ THEN BEGIN AR07.1
SAY @1
IF ~~ THEN EXIT
END

IF ~Global("AC25PLOT","GLOBAL",6)!See("ACBRE")See(PLAYER1)Global("ACARAC07BANTER","LOCALS",2)~ THEN BEGIN AR07.2
SAY @2
IF ~~ THEN EXIT
END

IF ~GlobalGT("AC25PLOT","GLOBAL",6)!See("ACBRE")Global("ACARAC07BANTER","LOCALS",3)~ THEN BEGIN AR07.2a
SAY @3
IF ~~ THEN EXIT
END

IF ~GlobalGT("AC25PLOT","GLOBAL",6)!See("ACBRE")Global("ACARAC07BANTER","LOCALS",4)~ THEN BEGIN AR07.2b
SAY @4
IF ~~ THEN EXIT
END

IF ~GlobalGT("AC25PLOT","GLOBAL",6)See("ACBRE")Global("ACARAC07BANTER","LOCALS",4)GlobalLT("ARAC06PREP","GLOBAL",4)~ THEN BEGIN AR07.2c
SAY @4
IF ~~ THEN EXIT
END

CHAIN
IF ~Global("AC25PLOT","GLOBAL",0)Global("ACBREBIO","GLOBAL",3)~ THEN ACREG 1
@5 DO ~DestroyItem("MINHP1")~
==ACREG IF ~Global("ACAUDQUEST","GLOBAL",12)~ THEN @6
==ACREG IF ~Global("ACAUDQUEST","GLOBAL",11)~ THEN @7
==ACREG @8 DO ~SetGlobal("ACAUDQUEST","GLOBAL",13)SetGlobal("ACGALFINALSPEECH","GLOBAL",1)AddexperienceParty(3000)Kill(MYSELF)~
EXIT

CHAIN
IF ~Global("AC25PLOT","GLOBAL",5)OR(3)Global("ACBREBIO","GLOBAL",1)Global("ACBREBIO","GLOBAL",2)Global("ACBREBIO","GLOBAL",3)~ THEN ACREG 2
@9 DO ~SetGlobal("AC25PLOT","GLOBAL",6)~
==ACFORRES @10
==ACREG @11
==ACFORRES IF ~!Global("ACFORRESDEAD","GLOBAL",1)~ THEN @12
==ACREG IF ~!Global("ACFORRESDEAD","GLOBAL",1)~ THEN @13
==ACFORRES IF ~Global("ACFORRESDEAD","GLOBAL",1)~ THEN @14
==ACREG IF ~Global("ACFORRESDEAD","GLOBAL",1)~ THEN @15
END
IF ~~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ACCUT15B")~ EXIT

CHAIN
IF ~Global("AC25PLOT","GLOBAL",6)Global("ACARAC07BANTER","LOCALS",1)~ THEN ACREG AR07
@16 DO ~SetGlobal("ACARAC07BANTER","LOCALS",2)~ 
==ACFORRES IF ~See("ACFORRES")!StateCheck("ACFORRES",CD_STATE_NOTVALID)~ THEN @17
==ACREG @18
END
IF ~!See("ACBRE")!See(PLAYER1)~ THEN GOTO AR07.1
IF ~!See("ACBRE")See(PLAYER1)~ THEN GOTO AR07.2
IF ~See("ACBRE")!See(PLAYER1)~ THEN GOTO AR07.3
IF ~See("ACBRE")See(PLAYER1)~ THEN GOTO AR07.3

CHAIN
IF ~Global("AC25PLOT","GLOBAL",6)See("ACBRE")See(PLAYER1)Global("ACARAC07BANTER","LOCALS",2)~ THEN ACREG AR07.3
@19 DO ~SetGlobal("AC25PLOT","GLOBAL",7)SetGlobal("ACARAC07BANTER","LOCALS",3)~
==ACBRE25J IF ~Global("ACBREBIO","GLOBAL",2)~ THEN @20
==ACREG IF ~Global("ACBREBIO","GLOBAL",2)!Global("ACFORRESDEAD","GLOBAL",1)~ THEN @21
==ACREG IF ~Global("ACBREBIO","GLOBAL",2)Global("ACFORRESDEAD","GLOBAL",1)~ THEN @22
==ACBRE25J IF ~Global("ACBREBIO","GLOBAL",2)~ THEN @23
==ACREG IF ~Global("ACBREBIO","GLOBAL",2)~ THEN @24 = @25
==ACBRE25J IF ~Global("ACBREBIO","GLOBAL",2)~ THEN @26
==ACREG IF ~Global("ACBREBIO","GLOBAL",2)~ THEN @27
==ACBRE25J IF ~Global("ACBREBIO","GLOBAL",3)~ THEN @28
==ACREG IF ~Global("ACBREBIO","GLOBAL",3)!Global("ACFORRESDEAD","GLOBAL",1)~ THEN @29
==ACREG IF ~Global("ACBREBIO","GLOBAL",3)Global("ACFORRESDEAD","GLOBAL",1)~ THEN @30 = @31 = @32
==ACBRE25J IF ~Global("ACBREBIO","GLOBAL",3)~ THEN @23
==ACREG IF ~Global("ACBREBIO","GLOBAL",3)~ THEN @33
==ACBRE25J IF ~Global("ACBREBIO","GLOBAL",3)~ THEN @26
==ACREG IF ~Global("ACBREBIO","GLOBAL",3)~ THEN @34
==ACBRE25J @35
==ACREG @36
==ACBRE25J @37
==ACREG IF ~Global("ACBREBIO","GLOBAL",2)~ THEN @38
==ACREG IF ~Global("ACBREBIO","GLOBAL",3)~ THEN @39
==ACBRE25J @40
EXIT

CHAIN
IF ~GlobalGT("AC25PLOT","GLOBAL",6)See("ACBRE")See(PLAYER1)Global("ACARAC07BANTER","LOCALS",3)~ THEN ACREG AR07.4
@41 DO ~SetGlobal("ACARAC07BANTER","LOCALS",4)~
==ACBRE25J IF ~Global("AC25PLOT","GLOBAL",8)Global("ACBREBIO","GLOBAL",2)~ THEN @42
==ACBRE25J IF ~Global("AC25PLOT","GLOBAL",8)Global("ACBREBIO","GLOBAL",3)~ THEN @43
==ACREG IF ~Global("AC25PLOT","GLOBAL",8)Global("ACBRBIO","GLOBAL",3)~ THEN @44
==ACREG IF ~Global("AC25PLOT","GLOBAL",8)Global("ACBREBIO","GLOBAL",2)~ THEN @45
==ACBRE25J IF ~Global("AC25PLOT","GLOBAL",8)~ THEN @46
==ACREG IF ~Global("AC25PLOT","GLOBAL",8)Global("ACBRBIO","GLOBAL",3)~ THEN @47
==ACREG IF ~Global("AC25PLOT","GLOBAL",8)Global("ACBREBIO","GLOBAL",2)~ THEN @48
==ACREG IF ~Global("AC25PLOT","GLOBAL",8)!Global("ACFORRESDEAD","GLOBAL",1)~ THEN @49 DO ~EscapeAreaDestroy(90)~
==ACREG IF ~Global("AC25PLOT","GLOBAL",8)Global("ACFORRESDEAD","GLOBAL",1)~ THEN @50 DO ~EscapeAreaDestroy(90)~
==ACFORRES IF ~Global("AC25PLOT","GLOBAL",8)~ THEN @51 DO ~EscapeAreaDestroy(90)~
==ACBRE25J IF ~Global("AC25PLOT","GLOBAL",9)Global("ACBREBIO","GLOBAL",2)~ THEN @52
==ACBRE25J IF ~Global("AC25PLOT","GLOBAL",9)Global("ACBREBIO","GLOBAL",3)~ THEN @53
==ACREG IF ~Global("AC25PLOT","GLOBAL",9)Global("ACBRBIO","GLOBAL",3)~ THEN @54
==ACREG IF ~Global("AC25PLOT","GLOBAL",9)Global("ACBREBIO","GLOBAL",2)~ THEN @55
==ACBRE25J IF ~Global("AC25PLOT","GLOBAL",9)Global("ACBREBIO","GLOBAL",2)~ THEN @56
==ACBRE25J IF ~Global("AC25PLOT","GLOBAL",9)Global("ACBREBIO","GLOBAL",3)~ THEN @57
==ACREG IF ~Global("AC25PLOT","GLOBAL",9)Global("ACBRBIO","GLOBAL",3)~ THEN @58
==ACREG IF ~Global("AC25PLOT","GLOBAL",9)Global("ACBREBIO","GLOBAL",2)~ THEN @59
==ACBRE25J IF ~Global("AC25PLOT","GLOBAL",9)Global("ACBREBIO","GLOBAL",2)~ THEN @60
==ACBRE25J IF ~Global("AC25PLOT","GLOBAL",9)~ THEN @61
==ACREG IF ~Global("AC25PLOT","GLOBAL",9)~ THEN @62 DO ~EscapeAreaMove("ARAC07",3906,3664,7)~
==ACFORRES IF ~Global("AC25PLOT","GLOBAL",9)~ THEN @63 DO ~EscapeAreaMove("ARAC07",3849,3711,7)~
EXIT

CHAIN
IF ~Global("ARAC06PREP","GLOBAL",4)See("ACBRE")~ THEN ACREG 25FINAL
@64 DO ~SetGlobal("AC25PLOT","GLOBAL",10)SetGlobal("ARAC06PREP","GLOBAL",5)~
==ACBRE25J IF ~Global("ACBREBIO","GLOBAL",2)~ THEN @65
==ACBRE25J IF ~Global("ACBREBIO","GLOBAL",3)~ THEN @66
==ACREG IF ~Global("ACBREBIO","GLOBAL",2)~ THEN @67
==ACREG IF ~Global("ACBREBIO","GLOBAL",3)~ THEN @68
==ACBRE25J IF ~Global("ACBREBIO","GLOBAL",2)~ THEN @69
==ACBRE25J IF ~Global("ACBREBIO","GLOBAL",3)~ THEN @70
==ACREG IF ~Global("ACBREBIO","GLOBAL",2)~ THEN @71
==ACREG IF ~Global("ACBREBIO","GLOBAL",3)~ THEN @72
==ACREG IF ~!Global("ACFORRESDEAD","GLOBAL",1)~ THEN @73
==ACREG IF ~Global("ACFORRESDEAD","GLOBAL",1)~ THEN @74
==ACREG IF ~Global("ACBREBIO","GLOBAL",2)~ THEN @75 DO ~EscapeAreaDestroy(90)~
==ACREG IF ~Global("ACBREBIO","GLOBAL",3)~ THEN @76 DO ~EscapeAreaDestroy(90)~
==ACFORRES @77 DO ~EscapeAreaDestroy(90)~
EXIT