BEGIN ACRALPH

CHAIN
IF ~Global("ACREVIQUEST","GLOBAL",3)See("ACBRE")~ THEN ACRALPH REVIQUEST.1
@0
==ACBREJ @1
==ACRALPH @2
==ACBREJ @3
==ACRALPH @4
==ACBREJ @5
==ACRALPH @6
==ACBREJ @7 = @8
==ACRALPH @9
END
IF ~~ THEN DO ~AddJournalEntry(@10018,QUEST)SetGlobal("ACREVIQUEST","GLOBAL",4)SetGlobal("AC6701TELEPORT","GLOBAL",1)EscapeAreaMove("AC6701",683,392,1)~ EXIT

CHAIN
IF ~Global("ACREVIQUEST","GLOBAL",4)~ THEN ACRALPH REVIQUEST.2
@10 DO ~SetGlobal("ACREVIQUEST","GLOBAL",5)EraseJournalEntry(@10018)~
==ACTAEROM @11
==ACBREJ IF ~InParty("ACBRE")See("ACBRE")!StateCheck("ACBRE",CD_STATE_NOTVALID)~ THEN @12
==ACTAEROM IF ~InParty("ACBRE")See("ACBRE")!StateCheck("ACBRE",CD_STATE_NOTVALID)~ THEN @13
==ACBREJ IF ~InParty("ACBRE")See("ACBRE")!StateCheck("ACBRE",CD_STATE_NOTVALID)~ THEN @14
==ACTAEROM IF ~InParty("ACBRE")See("ACBRE")!StateCheck("ACBRE",CD_STATE_NOTVALID)~ THEN @15
==ACTAEROM @16
==BVICONI IF ~InParty("VICONIA")See("VICONIA")!StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @17
==BAJANT IF ~InParty("AJANTIS")See("AJANTIS")!StateCheck("AJANTIS",CD_STATE_NOTVALID)~ THEN @18
==BMINSC IF ~InParty("MINSC")See("MINSC")!StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @19
==BJAHEIR IF ~InParty("JAHEIRA")See("JAHEIRA")!StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @20
==BBRANW IF ~InParty("BRANWEN")See("BRANWEN")!StateCheck("BRANWEN",CD_STATE_NOTVALID)~ THEN @21
==ACBREJ IF ~InParty("ACBRE")See("ACBRE")!StateCheck("ACBRE",CD_STATE_NOTVALID)~ THEN @22
==ACTAEROM @23
END
++ @24 EXTERN ACTAEROM REVIQUEST.3
++ @25 EXTERN ACTAEROM REVIQUEST.4
++ @26 EXTERN ACTAEROM REVIQUEST.5
++ @27 EXTERN ACTAEROM REVIQUEST.8

CHAIN
IF ~~ THEN ACTAEROM REVIQUEST.9
@28
==ACBREJ @29
==ACRALPH @30
==ACTAEROM @31
END
IF ~~ THEN DO ~AddJournalEntry(@10020,QUEST_DONE)SetGlobal("AC6701TELEPORT","GLOBAL",2)SetGlobal("ACREVIQUEST","GLOBAL",10)ReputationInc(-1)~ EXIT