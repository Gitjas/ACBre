BEGIN ACBOR001

IF ~NumTimesTalkedTo(0)!Dead("ACELASIA")~ THEN BEGIN 0
SAY @0
++ @1 + 1
++ @2 + 2
++ @3 + 3
++ @4 + 4
++ @5 + 5
++ @6 + 6
END

IF ~NumTimesTalkedToGT(0)!Dead("ACELASIA")~ THEN BEGIN 0a
SAY @7
IF ~GlobalLT("ACBORKPLOT","GLOBAL",2)~ THEN REPLY @8 + 1
IF ~GlobalLT("ACBORKPLOT","GLOBAL",2)~ THEN REPLY @2 + 2
IF ~GlobalLT("ACBORKPLOT","GLOBAL",2)~ THEN REPLY @3 + 3
IF ~GlobalLT("ACBORKPLOT","GLOBAL",2)~ THEN REPLY @4 + 4
IF ~Global("ACBORKPLOT","GLOBAL",2)~ THEN REPLY @9 + 13
++ @5 + 5
++ @6 + 6
END

IF ~Dead("ACELASIA")~ THEN BEGIN 0b
SAY @10
IF ~~ THEN DO ~EraseJournalEntry(10038)EraseJournalEntry(10039)EraseJournalEntry(10040)EraseJournalEntry(10041)EraseJournalEntry(10045)AddJournalEntry(@10042,QUEST_DONE)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
SAY @11
++ @12 + 7
++ @13 + 8
++ @5 + 5
++ @6 + 6
END

IF ~~ THEN BEGIN 2
SAY @14
++ @15 + 7
++ @13 + 8
++ @5 + 5
++ @6 + 6
END

IF ~~ THEN BEGIN 3
SAY @16
IF ~~ THEN DO ~AddJournalEntry(@10038,QUEST)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
SAY @17
++ @1 + 1
++ @2 + 2
++ @3 + 3
++ @5 + 5
++ @6 + 6
END

IF ~~ THEN BEGIN 5
SAY @18
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
SAY @19
IF ~~ THEN DO ~AddJournalEntry(@10038,QUEST)Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
SAY @20
IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 8
SAY @21
IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
SAY @22
++ @23 + 10
++ @24 + 11
++ @25 + 12
++ @5 + 5
++ @6 + 6
END

IF ~~ THEN BEGIN 10
SAY @26
++ @24 + 11
++ @25 + 12
++ @5 + 5
++ @6 + 6
END

IF ~~ THEN BEGIN 11
SAY @27
IF ~~ THEN DO ~SetGlobal("ACBORKPLOT","GLOBAL",1)AddJournalEntry(@10039,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 12
SAY @28
++ @24 + 11
++ @5 + 5
++ @6 + 6
END

IF ~~ THEN BEGIN 13
SAY @29
IF ~~ THEN DO ~Enemy()~ EXIT
END