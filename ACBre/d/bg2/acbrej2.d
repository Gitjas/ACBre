APPEND ACBREJ
IF ~Global("ACAXETIMERREMINDER","LOCALS",1)~ THEN BEGIN ACAXETIMER1
SAY @0
IF ~~ THEN DO ~SetGlobal("ACAXETIMERREMINDER","LOCALS",2)SetGlobalTimer("ACAXETIMER","LOCALS",TWO_DAYS)~ EXIT
END

IF ~Global("ACAXETIMERREMINDER","LOCALS",3)~ THEN BEGIN ACAXETIMER2
SAY @1
IF ~~ THEN DO ~SetGlobal("ACAXETIMERREMINDER","LOCALS",4)~ EXIT
END

IF ~Global("ACAUDQUEST","GLOBAL",2)InMyArea("ACAUD001")Global("ACAUDQUESTSTARTER","LOCALS",1)~ THEN BEGIN AUDQUEST.STARTS
SAY @2 = @3
IF ~~ THEN DO ~SetGlobal("ACAUDQUESTSTARTER","LOCALS",2)~ EXIT
END

IF ~Global("ACAUDQUEST","GLOBAL",7)InMyArea("ACTHIEF1")Global("ACAUDQUESTGOESON","LOCALS",1)~ THEN BEGIN AUDQUEST.STARTS
SAY @4
IF ~~ THEN DO ~SetGlobal("ACAUDQUESTGOESON","LOCALS",2)~ EXIT
END

IF ~Global("ACARNIBANTER","GLOBAL",1)~ THEN BEGIN ARNI.START
SAY @5
++ @6 DO ~EraseJournalEntry(@10031)SetGlobal("ACARNIBANTER","GLOBAL",2)~ + ARNI.1
++ @7 DO ~EraseJournalEntry(@10031)SetGlobal("ACARNIBANTER","GLOBAL",2)~ + ARNI.2
++ @8 DO ~EraseJournalEntry(@10031)SetGlobal("ACARNIBANTER","GLOBAL",2)~ + ARNI.3
++ @9 DO ~EraseJournalEntry(@10031)SetGlobal("ACARNIBANTER","GLOBAL",2)~ + ARNI.4
END

IF ~~ THEN BEGIN ARNI.1
SAY @10 = @11
IF ~InParty("JAN")InMyArea("JAN")!StateCheck("JAN",CD_STATE_NOTVALID)~ THEN EXTERN ACARNI WAR
IF ~OR(3)!InParty("JAN")!InMyArea("JAN")StateCheck("JAN",CD_STATE_NOTVALID)Global("ACARNIBANTER","GLOBAL",2)~ THEN EXTERN ACARNI JAN
END

IF ~~ THEN BEGIN ARNI.2
SAY @12 = @11
IF ~InParty("JAN")InMyArea("JAN")!StateCheck("JAN",CD_STATE_NOTVALID)~ THEN EXTERN ACARNI JAN
IF ~OR(3)!InParty("JAN")!InMyArea("JAN")StateCheck("JAN",CD_STATE_NOTVALID)Global("ACARNIBANTER","GLOBAL",2)~ THEN EXTERN ACARNI WAR
END

IF ~~ THEN BEGIN ARNI.3
SAY @13 = @14
++ @15 EXTERN ACARNI 1
END

IF ~~ THEN BEGIN ARNI.4
SAY @16 = @17
++ @15 EXTERN ACARNI 1
END

IF ~~ THEN BEGIN PLOT1A.1
SAY @18
IF ~~ THEN GOTO PLOT1A.2
END

IF ~~ THEN BEGIN PLOT1A.3
SAY @19
IF ~~ THEN GOTO PLOT1A.2
END

IF ~~ THEN BEGIN PLOT1A.4
SAY @20
IF ~~ THEN GOTO PLOT1A.2
END

IF ~~ THEN BEGIN PLOT1A.5
SAY @21
IF ~~ THEN GOTO PLOT1A.2
END

IF ~~ THEN BEGIN PLOT1A.2
SAY @22
IF ~~ THEN DO ~RevealAreaOnMap("AR2000")~ EXIT
END

IF ~Global("ACAUDINTM","GLOBAL",2)GlobalGT("ACAUDQUEST","GLOBAL",10)~ THEN BEGIN AUDINTM
SAY @23
IF ~~ THEN DO ~SetGlobal("ACAUDINTM","GLOBAL",3)
CreateCreatureObject("ACAUD001",Myself,0,0,0)~ EXIT
END

IF ~Global("ACBOOKWORK","GLOBAL",3)~ THEN BEGIN BOOKREMINDER1
SAY @24
IF ~~ THEN DO ~SetGlobal("ACBOOKWORK","GLOBAL",4)~ EXIT
END

IF ~Global("ACBOUTSLAYER","LOCALS",1)~ THEN BEGIN BoutSlay.Start
SAY @25 = @26
++ @27 DO ~SetGlobal("ACBOUTSLAYER","LOCALS",2)~ + BOUTSLAY.1
++ @28 DO ~SetGlobal("ACBOUTSLAYER","LOCALS",2)~ + BOUTSLAY.2
++ @29 DO ~SetGlobal("ACBOUTSLAYER","LOCALS",2)~ + BOUTSLAY.3
++ @30 DO ~SetGlobal("ACBOUTSLAYER","LOCALS",2)~ + BOUTSLAY.4
++ @31 DO ~SetGlobal("ACBOUTSLAYER","LOCALS",2)~ + BOUTSLAY.5
END

IF ~~ THEN BEGIN BOUTSLAY.1
SAY @32
IF ~~ THEN GOTO BOUTSLAY.6
END

IF ~~ THEN BEGIN BOUTSLAY.2
SAY @33
IF ~~ THEN GOTO BOUTSLAY.6
END

IF ~~ THEN BEGIN BOUTSLAY.3
SAY @34
IF ~~ THEN GOTO BOUTSLAY.6
END

IF ~~ THEN BEGIN BOUTSLAY.4
SAY @35
IF ~~ THEN GOTO BOUTSLAY.6
END

IF ~~ THEN BEGIN BOUTSLAY.5
SAY @36
IF ~~ THEN GOTO BOUTSLAY.6
END

IF ~~ THEN BEGIN BOUTSLAY.6
SAY @37
IF ~~ THEN EXIT
END

IF ~Global("ACBOUTSLAYER","LOCALS",3)~ THEN BEGIN BoutSlay.7
SAY @38
IF ~~ THEN DO ~SetGlobal("ACBOUTSLAYER","LOCALS",4)~ EXIT
END

IF ~Global("ACBOUTSLAYER","LOCALS",5)~ THEN BEGIN BoutSlay.8
SAY @39
IF ~~ THEN DO ~SetGlobal("ACBOUTSLAYER","LOCALS",6)SetGlobal("ACBreBroke","GLOBAL",1)SetGlobal("ACBREEXISTS","GLOBAL",2)SetGlobal("ACBREINPARTY","GLOBAL",3)LeaveParty()Enemy()~ EXIT
END

IF ~Global("ACSTONES","LOCALS",1)~ THEN BEGIN ACSTONES.START
SAY @40
IF ~~ THEN DO ~SetGlobal("ACSTONES","LOCALS",2)~ EXIT
END

IF ~Global("ACFORGE1","GLOBAL",1)~ THEN BEGIN FORGE1.START
SAY @41
++ @42 DO ~SetGlobal("ACFORGE1","GLOBAL",2)~ + FORGE1.1
++ @43 DO ~SetGlobal("ACFORGE1","GLOBAL",3)~ + FORGE1.2
++ @44 DO ~SetGlobal("ACFORGE1","GLOBAL",2)~ + FORGE1.3
END

IF ~~ THEN BEGIN FORGE1.1
SAY @45
++ @43 DO ~SetGlobal("ACFORGE1","GLOBAL",3)~ + FORGE1.2
IF ~Global("ACBOOKWORK","GLOBAL",6)~ THEN REPLY @46 + FORGE1.4a
IF ~!Global("ACBOOKWORK","GLOBAL",6)~ THEN REPLY @46 + FORGE1.4b
++ @44 DO ~SetGlobal("ACFORGE1","GLOBAL",2)~ + FORGE1.3
END

IF ~~ THEN BEGIN FORGE1.2
SAY @47
IF ~~ THEN DO ~ClearAllActions()StartCutScenemode()StartCutScene("ACCUT_13")~ EXIT
END

IF ~~ THEN BEGIN FORGE1.3
SAY @48
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FORGE1.4a
SAY @49
++ @50 DO ~SetGlobal("ACFORGE1","GLOBAL",3)~ + FORGE1.2
++ @51 DO ~SetGlobal("ACFORGE1","GLOBAL",2)~ + FORGE1.3
END

IF ~~ THEN BEGIN FORGE1.4b
SAY @52
++ @53 DO ~SetGlobal("ACFORGE1","GLOBAL",3)~ + FORGE1.2
++ @54 DO ~SetGlobal("ACFORGE1","GLOBAL",2)~ + FORGE1.3
END
END

CHAIN
IF ~Global("ACPLOT1ABANTER","LOCALS",1)~ THEN ACBREJ PLOT1A.START
@55 DO ~SetGlobal("ACPLOT1ABANTER","LOCALS",2)SetGlobal("ACBREMYAXE","GLOBAL",1)~
==ACBREJ IF ~Global("ACAUDQUEST","GLOBAL",11)~ THEN @56
==ACBREJ IF ~Global("ACAUDQUEST","GLOBAL",12)~ THEN @57
==ACBREJ @58
END
++ @59 + PLOT1A.1
++ @60 + PLOT1A.2
++ @61 + PLOT1A.3
++ @62 + PLOT1A.4
++ @63 + PLOT1A.5

INTERJECT PLAYER1 33 ACBreTreeOfLife
== PLAYER1 IF ~InMyArea("ACBRE")!StateCheck("ACBRE",CD_STATE_NOTVALID)~ THEN @64
END
++ @65 EXTERN ACBREJ Option1
++ @66 EXTERN ACBREJ Option2
IF ~Global("ACBREBIO","GLOBAL",1)~ THEN REPLY @67 EXTERN ACBREJ Option3a
IF ~Global("ACBREBIO","GLOBAL",2)~ THEN REPLY @67 EXTERN ACBREJ Option3b
IF ~Global("ACBREBIO","GLOBAL",3)~ THEN REPLY @67 EXTERN ACBREJ Option3c

APPEND ACBREJ
IF ~~ THEN BEGIN Option1
SAY @68
COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN Option2
SAY @69
COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN Option3a
SAY @70
COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN Option3b
SAY @71 
COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN Option3c
SAY @72 
COPY_TRANS PLAYER1 33
END
END

INTERJECT PLAYER1 25 ACBreIsInHell
== ACBREJ IF ~InMyArea("ACBRE")!StateCheck("ACBRE",CD_STATE_NOTVALID)~ THEN @73 = @74
COPY_TRANS PLAYER1 25