APPEND ACBREJ
IF ~Global("ACVA#BOOK","LOCALS",1)~ THEN BEGIN VABOOK
SAY ~Und f�r so ein verdammtes Buch lassen wir uns quer �ber den Ozean schicken. F�r ein verdammtes ZAUBERBUCH.~ = ~Naja, jetzt k�nnen wir doch wohl hoffentlich gehen, oder?~
IF ~~ THEN DO ~SetGlobal("ACVA#BOOK","LOCALS",2)~ EXIT
END
END

INTERJECT_COPY_TRANS VA#BALOR 2 ACVA#BALOR2
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)OR(2)PartyHasItem("ACAXE")PartyHasItem("ACAXE2")~ THEN
~Nicht unser Leben wird es sein, das hier beendet wird! Ihr werdet zur�ck in die Grube fahren!~
== VA#BALOR IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)OR(2)PartyHasItem("ACAXE")PartyHasItem("ACAXE2")~ THEN
~Auch eine heilige Axt wird Euch nicht retten!~
END

INTERJECT_COPY_TRANS2 VA#KERGO 0 ACVA#KERGO0
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Dieser Zwerg hier ist vor allen Dingen f�hig, Euch seine Axt in den Wanst zu jagen, wenn Ihr irgendwelchen krummen Dinger versucht!~
==BJAHEIR IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)InParty("JAHEIRA")InMyArea("JAHEIRA")!StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN 
~Beruhigt Euch, Breagar. Ich wette, der Kapit�t wird sich nach dieser Drohung sicherlich bem�hen, alles zum Besten zu gestalten.~
END

INTERJECT_COPY_TRANS2 VA#KERGO 5 ACVA#KERGO5
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Und ich warne Euch, Kapit�n...~
==VA#KERGO IF ~InParty("ACBRE")InMyArea("ACBRE")!StateCheck("ACBRE",CD_STATE_NOTVALID)~ THEN 
~Ja ja, keine krummen Dinger. Ich wei� schon. (seufzt)~
END

INTERJECT_COPY_TRANS VA#TIAN 3 ACVA#TIAN3
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Nat�rlich. Sobald es darum geht, sich die H�nde schmutzig zu machen, sucht der Herr Magier jemand anderen. Seid vorsichtig, <CHARNAME>, wir sollen �ber's Ohr gehauen werden!~
== VA#TIAN IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Ich versichere Euch, Meister Zwerg, dass Ihr einen gerechten Lohn f�r Eure M�he bekommen werdet.~
END

INTERJECT_COPY_TRANS VA#TIAN 9 ACVA#TIAN9
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Einen Augenblick!~
== VA#TIAN IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Ja bitte?~
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Was sagtet Ihr gerade, wer auf uns wartet?~
== VA#TIAN IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Ein Seemann. Der Turm liegt auf einer Insel, erw�hnte ich das nicht?~
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Nein, mein Freund, das scheint Euch entgangen zu sein! Habt Ihr vollends den Verstand verloren?~
== VA#TIAN IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Nun ich...~
== ACBreJ IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Ach was frage ich eigentlich. Ihr seid ein gottverdammter Magier, nat�rlich seid Ihr nicht ganz richtig im Kopf.~ = ~Dann bringt uns halt im Namen der H�llenf�rsten zu Euren verdammten Schiff. Und *Ihr* steht nat�rlich wieder daneben und grinst, <CHARNAME>. Manchmal wei� ich wirklich nicht, wie ich es mit einem n�rrischen <PRO_RACE> wie Euch aushalte.~
== VA#TIAN IF ~InParty("ACBre")See("ACBRE")!StateCheck("ACBre",CD_STATE_NOTVALID)~ THEN
~Dann lasst uns aufbrechen!~
END

