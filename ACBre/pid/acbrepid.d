APPEND ACBREJ

IF ~TRUE()~ THEN BEGIN PID
SAY ~Was gibt es?~ [ACBRE_22]
IF ~AreaCheck("AR0334")Global("ACFORGE1","GLOBAL",2)PartyHasItem("ACSTONE1")PartyHasItem("ACSTONE2")PartyHasItem("ACSTONE3")~ THEN REPLY ~Lasst uns mit dem Schmieden beginnen.~ DO ~SetGlobal("ACFORGE1","GLOBAL",3)~ + PID.FORGE
IF ~Global("ACBREPID1","GLOBAL",1)~ THEN REPLY ~Erz�hlt mir etwas �ber Euer zu Hause.~ + PID.1
IF ~Global("ACBREPID2","GLOBAL",1)~ THEN REPLY ~Ich m�chte etwas �ber Eure Religion erfahren.~ + PID.2
++ ~Erz�hlt mir etwas �ber Euch.~ + PID.10
IF ~Global("ACBRETOLDAJOKE","GLOBAL",0)~ THEN REPLY ~He Breagar, was ist der Unterschied zwischen einem Drachen und einem Zwerg?~ + PID.11
++ ~Schon gut.~ + PID.END
END

IF ~~ THEN BEGIN PID.B
SAY ~Wor�ber wollt Ihr reden?~
IF ~Global("ACBREPID1","GLOBAL",1)~ THEN REPLY ~Erz�hlt mir etwas �ber Euer zu Hause.~ + PID.1
++ ~Erz�hlt mir etwas �ber Euch.~ + PID.10
IF ~Global("ACBRETOLDAJOKE","GLOBAL",0)~ THEN REPLY ~He Breagar, was ist der Unterschied zwischen einem Drachen und einem Zwerg?~ + PID.11
++ ~Schon gut.~ + PID.END
END

IF ~~ THEN BEGIN PID.FORGE
SAY ~Gro�artig. Dann lasst uns keine Zeit verlieren. Beten wir, dass Moradin unsere Arbeit segnet.~
IF ~~ THEN DO ~ClearAllActions()StartCutScenemode()StartCutScene("ACCUT_13")~ EXIT
END

IF ~~ THEN BEGIN PID.END
SAY ~Hrmpf.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PID.1
SAY ~Was m�chtet Ihr gerne wissen?~
++ ~Ich w�rde gerne �ber Eure Heimat reden.~ + PID1.1
IF ~Global("ACPIDGOTRIK","GLOBAL",0)~ THEN REPLY ~Ich w�rde gerne etwas �ber Euren Clansgr�nder h�ren.~ + PID1.2
IF ~Global("ACPIDGOTRIK","GLOBAL",1)~ THEN REPLY ~Ich m�chte gerne die Geschichte von Gotrik weiterh�ren.~ + PID1.3
IF ~Global("ACPIDGOTRIK","GLOBAL",2)~ THEN REPLY ~Ich m�chte gerne die Geschichte von Gotrik weiterh�ren.~ + PID1.4
IF ~Global("ACPIDGOTRIK","GLOBAL",3)~ THEN REPLY ~Ich m�chte gerne die Geschichte von Gotrik weiterh�ren.~ + PID1.5
IF ~Global("ACPIDGOTRIK","GLOBAL",4)~ THEN REPLY ~Ich m�chte gerne noch einmal die Geschichte von Gotrik h�ren.~ + PID1.2
++ ~Erz�hlt mir von Eurer Familie.~ + PID1.12
++ ~Ich m�chte doch �ber etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.1
SAY ~Die Sturmhornberge? Nun, wenn Ihr wirklich etwas wissen wollt, dann fragt.~
++ ~Wo genau liegen die Berge eigentlich?~ + PID1.8
++ ~Wie ist es da so?~ + PID1.9
++ ~Wohnt Ihr gerne dort?~ + PID1.10
++ ~Ist es in den Bergen gef�hrlich?~ + PID1.11
++ ~Ich m�chte doch �ber etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.2
SAY ~Gotrik Bardormar, der Gr�nder des Bardormar-Clans, ist mein Ur-Ur-Ur-Urgro�vater. Er war ein Zwerg wie er im Buche steht. Gute vier Fu� gro�, Arme wie Baumst�mme, strahlend braune Augen und ein Bart, der sich majest�tisch �ber seinen kugelrunden Bauch w�lbte.~ = ~Er war wohl aufbrausend und sehr direkt, wenn ihn etwas �rgerte, aber viel �fter soll man sein dr�hnendes Lachen denn sein Wutgeschrei geh�rt haben.~ = ~Gotrik hatte das B�ckerhandwerk gelernt, wie sein Vater vor ihm und dessen Vater vor ihm. Meine Familie steht schon so lange am Backofen, dass man nicht genau sagen kann, wann der erste meiner Vorv�ter den ersten Laib Brot aus dem Feuer gezogen hat.~ = ~Sie alle waren begnadete B�cker, aber Gotrik soll sie alle �berfl�gelt haben. Clans schicken Boten �ber Meilen hinweg, um bei ihm einzukaufen. Und deswegen bekam er bald den Spitznamen "Bardormar" verpasst. Die "Rote Seele des Berges" nannte man ihn, weil sein Gesicht in der Glut des Ofens gl�hlte und sein Bart schimmerte wie dunkle Lava.~
++ ~Erz�hlt bitte weiter.~ DO ~SetGlobal("ACPIDGOTRIK","GLOBAL",1)~ + PID1.3
++ ~Ich glaube, das Reicht f�rs erste.~ DO ~SetGlobal("ACPIDGOTRIK","GLOBAL",1)~ + PID1.7
END

IF ~~ THEN BEGIN PID1.3
SAY ~Gotrik war also der beste und ber�hmteste B�cker, den man in ganz Faer�n kannte. Jedenfalls bei den Zwergen. Ich wei�, dass au�erhalb der Clanshallen die meisten Leute glauben, Zwerge w�rden nur etwas auf Kohle und Stahl geben, aber das ist so nicht richtig.~ = ~Kohle kann man nicht essen und Eisen kann man nicht trinken. Jedes Handwerk hat seinen Platz und findet seine Anerkennung, wenn es gut gemacht wird.~ = ~Gotrik liebte seinen Ofen, er liebte den Geruch von Mehl und das leise Knuspern, wenn ein frischer Laib Brot aus dem Ofen gezogen wurde. Es bereitete ihm nichts mehr Freude, als den Duft von einem frischen Backwerk einzuatmen.~ = ~Allerdings fand das ruhige Leben ein j�hes Ende, denn Orks fielen in das Gebiet ein, in der Gotriks Clan seine Feste gebaut hatte und zogen pl�ndernd und mordend durch die Lande. Der Thain des Clans lie� die Feste abriegeln und jedes Tor und jede Scharte verschlie�en, in der Hoffnung, dass die Orks keine Lust hatten, sich an der Festung die Z�hne auszubei�en.~ = ~Dummerweise war es gerade Erntezeit und Gotrik f�rchtete um das Mehl, das er von den Bauern der Umgebung bezog. Ohne Mehl kein Brot, und kein Brot zu haben bedeutet Hungern.~
++ ~Erz�hlt bitte weiter.~ DO ~SetGlobal("ACPIDGOTRIK","GLOBAL",2)~ + PID1.4
++ ~Ich glaube, das Reicht f�rs erste.~ DO ~SetGlobal("ACPIDGOTRIK","GLOBAL",2)~ + PID1.7
END

IF ~~ THEN BEGIN PID1.4
SAY ~Der ganze Clan Gotriks war von der Au�enwelt abgeschnitten und das Mehl ging also zur Neige. Da fasste Gotrik einen k�hnen Plan: Er band sich ein Kurzschwert um und lege eine leichte Lederr�stung an, um beweglich zu bleiben. Dann kletterte er durch den Schornstein der Backstube an die Oberfl�che, um zu schauen, ob er wenigestens einen Sack Mehl auftreiben konnte. Die Geschichten �ber das, was er dort erlebte, sind zahlreich und viele wahrscheinlich erstunken und erlogen, aber das interessiert Euch wahrscheinlich nicht.~ = ~Wichtig ist nur, dass Gotrik es tats�chlich schaffte, einen ganzen Sack Mehl aufzutreiben.~ = ~Und diesen bef�rdete er auf dem gleichen Wege wieder in die Backstube, auf dem er sie verlassen hatte.~ = ~Auch dies ist eine eigene Geschichte f�r sich, die ein anderes Mal erz�hlt werden soll. Aber die Geschichte vom b�rtigen, dicken Mann, der mit einem schweren Sack beladen durch den Schornstein kriecht, ist gerade bei Kindern sehr beliebt.~
++ ~Erz�hlt bitte weiter.~ DO ~SetGlobal("ACPIDGOTRIK","GLOBAL",3)~ + PID1.5
++ ~Ich glaube, das Reicht f�rs erste.~ DO ~SetGlobal("ACPIDGOTRIK","GLOBAL",3)~ + PID1.7
END

IF ~~ THEN BEGIN PID1.5
SAY ~Nun, Gotrik hatte es also geschafft, einen Sack Mehl zu seinem Clan zu bringen, doch als er wieder in die Hallen trat, erwartete ihn ein Bild des Grauens.~ = ~Eine Horde Duergar war in der Zeit, in der er an der Oberfl�che war, in die Hallen eingedrungen und hatte seinen gesamten Clan gepl�ndert und die Zwerge erschlagen oder verschleppt.~ = ~Alle Fluchtwege waren verrammelt und somit hatte sich Gotriks Clan sein eigenes Mausoleum gebaut.~ = ~Ihr k�nnt Euch sicherlich denken, dass die Geschichten, wie Gotrik ins Unterreich eindrang und den Duergar nachsetzte noch zahlreicher sind als die, die seine Abenteuer an der Oberfl�che erz�hlen.~ = ~Jedenfalls schaffte Gotrik es, mit einer Handvoll �berlebender zu entkommen. Da sie jedoch zu wenige waren, um die gro�e Feste angemessen zu verteidigen, noch dazu, da jetzt die Duergar Ihre Lage kannten, verlie�en die �berlebenden die alten Hallen und zogen in die Sturmhornberge, wo sie ein kleines Tal fanden.~ = ~Hier errichteten sie die neue Clanshalle und bebauten das Land, wie sie es gewohnt waren. Gotrik wurde zum Thain gekr�nt und begr�ndete so den Clan der Bardormar, der bis heute in den Bergen an der selben Stelle haust.~
++ ~Ganz sch�n lang, Eure Geschichte.~ DO ~SetGlobal("ACPIDGOTRIK","GLOBAL",4)SetGlobal("ACBRETOLDBOUTDUERGAR","GLOBAL",1)~ + PID1.6
++ ~Ich m�chte doch �ber etwas anderes reden.~ DO ~SetGlobal("ACPIDGOTRIK","GLOBAL",4)SetGlobal("ACBRETOLDBOUTDUERGAR","GLOBAL",1)~ + PID.B
END

IF ~~ THEN BEGIN PID1.6
SAY ~So sind Zwergengeschichten nun einmal. Die Geschichten der �lteren Clans sind noch um einiges l�nger.~
IF ~~ THEN GOTO PID.B
END

IF ~~ THEN BEGIN PID1.7
SAY ~Dann machen wir das n�chste Mal an dieser Stelle weiter.~
IF ~~ THEN GOTO PID.B
END

IF ~~ THEN BEGIN PID1.8
SAY ~An der Nordgrenze zu Cormyr, ein ganzes St�ck von hier entfernt, das kann ich Euch sagen.~
++ ~Wie ist es da so?~ + PID1.9
++ ~Wohnt Ihr gerne dort?~ + PID1.10
++ ~Ist es in den Bergen gef�hrlich?~ + PID1.11
++ ~Ich m�chte doch �ber etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.9
SAY ~Schroffe H�hen und kahle Felsen, ein hartes, ungebeugtes Land. Ihr w�rdet es wahrscheinlich hassen, <CHARNAME>. Au�er ein paar kleinen Menschensiedlungen gibt es dort auch nichts, was irgendwen interessieren k�nnte.~
++ ~Wo genau liegen die Berge eigentlich?~ + PID1.8
++ ~Wohnt Ihr gerne dort?~ + PID1.10
++ ~Ist es in den Bergen gef�hrlich?~ + PID1.11
++ ~Ich m�chte doch �ber etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.10
SAY ~Mein Clan hat seine Heimat dort, ja, ich lebe sogar verdammt gerne dort!~
++ ~Wo genau liegen die Berge eigentlich?~ + PID1.8
++ ~Wie ist es da so?~ + PID1.9
++ ~Ist es in den Bergen gef�hrlich?~ + PID1.11
++ ~Ich m�chte doch �ber etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.11
SAY ~Wenn man nicht darauf achtet, wo man seine Nase hineinsteckt, ist es �berall gef�hrlich. Aber die Berge sind schon ein besonderer Platz.~ = ~Da gibt es genug Viehzeug, das Euch die H�lle hei� macht, wenn Ihr nicht aufpasst und nicht wisst, was Ihr tut.~ = ~Und dann noch die paar Goblinst�mme, die sich seit der Zerschlagung ihres Reiches dort herumtreiben, aber die sind eher harmlos. Manche sind sogar fast vern�nftige Nachbarn, mit denen man etwas Handeln kann.~
++ ~Wo genau liegen die Berge eigentlich?~ + PID1.8
++ ~Wie ist es da so?~ + PID1.9
++ ~Wohnt Ihr gerne dort?~ + PID1.10
++ ~Ich m�chte doch �ber etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.12
SAY ~Was soll ich Euch erz�hlen?~
++ ~Erz�hlt mir von Eurem Vater.~ + PID1.13
++ ~Erz�hlt mir von Eurer Mutter.~ + PID1.14
++ ~Wie sieht's bei Euch mit Geschwistern aus?~ + PID1.15
++ ~Erz�hlt mir die Geschichte Eurer Familie.~ + PID1.16
++ ~Ich m�chte doch �ber etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.13
SAY ~Nun ja, mein Vater, Baragar, stammt auf direktem Wege von unserem Clansgr�nder, Gotrik Bardormar ab. Und er hat das B�ckerhandwerk von kleinauf gelernt, ebenso wie mein Bruder und ich, bevor ich mich der Schmiedekunst zuwandte.~ = ~Er ist ein wahrer K�nstler am Ofen, das kann ich Euch sagen, allerdings auch ziemlich aufbrausend, wenn ihm etwas missf�llt. Wir... wir haben nicht mehr miteinander gesprochen, seitdem ich die Backstube verlassen habe.~
++ ~Erz�hlt mir von Eurer Mutter.~ + PID1.14
++ ~Wie sieht's bei Euch mit Geschwistern aus?~ + PID1.15
++ ~Erz�hlt mir die Geschichte Eurer Familie.~ + PID1.16
++ ~Ich m�chte doch �ber etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.14
SAY ~Meine Mutter Herana stammt urspr�nglich von der Feste Nurkhun, oder "Glitzerstein", wie Ihr sie nennen w�rdet.~ = ~Sie ist fast das genaue Gegenteil von meinem Vater. Er ist meist ruhig und gelassen, aber wenn ihm etwas nicht passt, dann wackeln die W�nde. Sie ist immer laut, hektisch und besorgt, nur dann, wenn es ernst wird, ist sie still und beh�lt den k�hlen Kopf.~
++ ~Erz�hlt mir von Eurem Vater.~ + PID1.13
++ ~Wie sieht's bei Euch mit Geschwistern aus?~ + PID1.15
++ ~Erz�hlt mir die Geschichte Eurer Familie.~ + PID1.16
++ ~Ich m�chte doch �ber etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.15
SAY ~Dalgar w�rde Euch gefallen. Er w�rde wohl besser in Eure Bande von Verr�ckten hier passen als ich.~ = ~Dalgar ist fast zwanzig Jahre �lter als ich, aber f�r zwergische Verh�ltnisse ist das nat�rlich nicht allzu viel. Wir standen uns bis zu seiner Abreise sehr nahe.~
++ ~Er ist gereist? wohin?~ + PID8.5
++ ~Erz�hlt mir von Eurem Vater.~ + PID1.13
++ ~Erz�hlt mir von Eurer Mutter.~ + PID1.14
++ ~Erz�hlt mir die Geschichte Eurer Familie.~ + PID1.16
++ ~Ich m�chte doch �ber etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID1.16
SAY ~Die Geschichte meiner Familie? Ich glaube nicht, dass sie Euch sehr interessieren w�rde, es sei denn, Ihr interessiert Euch f�r Brotrezepte, Backzeiten und die gro�e Hefed�rre von '98.~ = ~Meine Vorv�ter waren B�cker, <CHARNAME>, und nichts mehr. Keiner hat jemals ein Abenteuer erlebt oder ist auf Reisen gegangen.~
++ ~Erz�hlt mir von Eurem Vater.~ + PID1.13
++ ~Erz�hlt mir von Eurer Mutter.~ + PID1.14
++ ~Wie sieht's bei Euch mit Geschwistern aus?~ + PID1.15
++ ~Ich m�chte doch �ber etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID8.5
SAY ~Niemand wei� das so genau.~ = ~Er war schon immer sehr unternehmungslustig und hat sich gefragt, wie die Welt dort drau�en wohl aussehen mag.~ = ~Als er noch klein war kam mal ein Priester des Mathammor auf Wanderschaft vorbei und er entz�ndete in meinem Bruder eine Fackel der Sehnsucht, wenn Ihr es so nennen wollt.~ = ~Er hat dem armen Dalgar den Kopf verdreht mit seinen Lehren, dass wahres Wissen nur drau�en in der Welt zu finden sei und so etwas alles.~ = ~Und das fiel bei meinem Bruder auf fruchtbaren Boden. er fing schon bald an, l�ngere Exkursionen durch die Berge zu wagen und kaum dass er vollj�hrig wurde band er sein B�ndel und verlie� die Hallen Bardormar, um die Welt zu sehen.~ = ~Es war eine schwere Zeit, mein Vater verstand die Welt nicht mehr.~ = ~Die Erinnerung schmerzt noch, <CHARNAME>. Es ist fast zwanzig Jahre her, und ich vermisse ihn noch wie gestern.~ = ~Reden wir von etwas anderem.~
IF ~~ THEN GOTO PID.B
END

IF ~~ THEN BEGIN PID.10
SAY ~Was soll ich Euch sagen, das Ihr nicht schon wisst? Ich bin Breagar, Baragars Sohn aus dem Clan Bardormar. Ich bin Anfang 50, in der Bl�te meiner Jahre. Meine Axt ist scharf, mein Arm ist stark und mein Auge ist wachsam.~ = ~Und ich stehe schon viel zu lange mit einem Bengel herum, der lieber daf�r sorgen sollte, dass es etwas vorw�rts geht, anstelle Maulaffen feil zu halten.~ ~Und ich stehe schon viel zu lange mit einer G�re herum, die lieber daf�r sorgen sollte, dass es etwas vorw�rts geht, anstelle Maulaffen feil zu halten.~
IF ~~ THEN GOTO PID.B
END

IF ~~ THEN BEGIN PID.2
SAY ~Was soll ich Euch erz�hlen?~
++ ~Was sind Eure G�tter, Breagar?~ + PID2.1
++ ~K�nnt Ihr mir etwas �ber die einzelnen G�tter erz�hlen?~ + PID2.2
++ ~Erz�hlt mir mehr �ber den Weltenschmied.~ + PID2.3
++ ~Was glaubt Ihr wird nach dem Tod mit Euch passieren?~ + PID2.4
++ ~Ich m�chte doch �ber etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.1
SAY ~Wenn ich am Amboss stehe, dann h�lt Moradin seine Hand �ber mich. In der Schlacht werde ich von Clangeddin geleitet. Und in der Ruhe des Clans wacht Berronar �ber meinen Schlaf. Und ich hoffe, dass hier drau�en Marthammor Duin ein Auge auf mich hat.~
++ ~K�nnt Ihr mir etwas �ber die einzelnen G�tter erz�hlen?~ + PID2.2
++ ~Erz�hlt mir mehr �ber den Weltenschmied.~ + PID2.3
++ ~Was glaubt Ihr wird nach dem Tod mit Euch passieren?~ + PID2.4
++ ~Ich m�chte doch �ber etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.3
SAY ~Der Weltenschmied, Telormardarsan, ist der erste, der gro�e, der, der die Welt einst auf seinem Amboss schmiedete.~
++ ~Ich m�chte etwas anderes �ber Euren Glauben erfahren.~ + PID.2
++ ~Ich m�chte doch �ber etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.4
SAY ~Das, was jedem Zwerg wiederfahren wird. Dumathoin wird uns vor Moradins Richtstuhl bringen, wo wir Rechenschaft ablegen und den Lohn f�r das bekommen, was wir im Leben geleistet haben.~ = ~Ein rechtschaffener Handwerker erfreut sich einer Ewigkeit in einer WErkstatt, die zu beschreiben die Worte der hiesigen Zungen nicht ausreichen. Gro�e Krieger �ben sich im Kampfe und streiten gegen b�se Kr�fte.~
++ ~Was sind Eure G�tter, Breagar?~ + PID2.1
++ ~K�nnt Ihr mir etwas �ber die einzelnen G�tter erz�hlen?~ + PID2.2
++ ~Erz�hlt mir mehr �ber den Weltenschmied.~ + PID2.3
++ ~Ich m�chte doch �ber etwas anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2
SAY ~�ber welchen Gott wollt Ihr etwas erfahren?~
++ ~Erz�hlt mir von Moradin.~ + PID2.2a
++ ~Erz�hlt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erz�hlt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erz�hlt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erz�hlt mir von Dumathoin.~ + PID2.2e
++ ~Erz�hlt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erz�hlt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erz�hlt mir von Marthamor Duin.~ + PID2.2h
++ ~Erz�hlt mir von Laduguer.~ + PID2.2i
++ ~Erz�hlt mir von Abbathor.~ + PID2.2j
++ ~Erz�hlt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erz�hlt mir von Sharindlar.~ + PID2.2l
++ ~Erz�hlt mir von Thard Harr.~ + PID2.2m
++ ~Erz�hlt mir von Vergadain.~ + PID2.2n
++ ~Ich m�chte etwas anderes �ber Euren Glauben erfahren.~ + PID.2
++ ~Ich m�chte doch �ber etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2a
SAY ~Moradin ist der Seelenschmied, der Zwergenvater. Ihm obliegt es, dem Zwerg seine Seele zu geben und nach seinem, Tod �ber ihn zu richten. Er ist ein weiser und gerechter, aber harter Richter. Moradin h�lt uns an, das Gute zu tun und das B�se zu vernichten.~
++ ~Erz�hlt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erz�hlt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erz�hlt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erz�hlt mir von Dumathoin.~ + PID2.2e
++ ~Erz�hlt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erz�hlt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erz�hlt mir von Marthamor Duin.~ + PID2.2h
++ ~Erz�hlt mir von Laduguer.~ + PID2.2i
++ ~Erz�hlt mir von Abbathor.~ + PID2.2j
++ ~Erz�hlt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erz�hlt mir von Sharindlar.~ + PID2.2l
++ ~Erz�hlt mir von Thard Harr.~ + PID2.2m
++ ~Erz�hlt mir von Vergadain.~ + PID2.2n
++ ~Ich m�chte etwas anderes �ber Euren Glauben erfahren.~ + PID.2
++ ~Ich m�chte doch �ber etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2b
SAY ~Berronar ist Moradins Gattin. Die geheiligte Mutter sch�tzt den Clan und segnet die Familie und die Liebenden. Sie ist eine strenge, aber liebende Mutter f�r alle Zwerge.~
++ ~Erz�hlt mir von Moradin.~ + PID2.2a
++ ~Erz�hlt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erz�hlt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erz�hlt mir von Dumathoin.~ + PID2.2e
++ ~Erz�hlt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erz�hlt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erz�hlt mir von Marthamor Duin.~ + PID2.2h
++ ~Erz�hlt mir von Laduguer.~ + PID2.2i
++ ~Erz�hlt mir von Abbathor.~ + PID2.2j
++ ~Erz�hlt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erz�hlt mir von Sharindlar.~ + PID2.2l
++ ~Erz�hlt mir von Thard Harr.~ + PID2.2m
++ ~Erz�hlt mir von Vergadain.~ + PID2.2n
++ ~Ich m�chte etwas anderes �ber Euren Glauben erfahren.~ + PID.2
++ ~Ich m�chte doch �ber etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2c
SAY ~Clangeddin ist der Vater der Schlachten, der Fluch der Goblins und der Riesenschl�chter. Er steht den rechtschaffenen Zwergen im Kampf zur Seite und begr��t einen ehrenvollen Kampf ohne Verrat und T�uschung. Er hat uns beigebracht, unsere Waffen gegen die Riesen zu schwingen und sie dort zu treffen, wo es weh tut, wenn Ihr versteht, was ich meine.~
++ ~Erz�hlt mir von Moradin.~ + PID2.2a
++ ~Erz�hlt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erz�hlt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erz�hlt mir von Dumathoin.~ + PID2.2e
++ ~Erz�hlt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erz�hlt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erz�hlt mir von Marthamor Duin.~ + PID2.2h
++ ~Erz�hlt mir von Laduguer.~ + PID2.2i
++ ~Erz�hlt mir von Abbathor.~ + PID2.2j
++ ~Erz�hlt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erz�hlt mir von Sharindlar.~ + PID2.2l
++ ~Erz�hlt mir von Thard Harr.~ + PID2.2m
++ ~Erz�hlt mir von Vergadain.~ + PID2.2n
++ ~Ich m�chte etwas anderes �ber Euren Glauben erfahren.~ + PID.2
++ ~Ich m�chte doch �ber etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2d
SAY ~Dugmaren ist der wandernde Forscher, der Gott der Forschung, des Wissens und der Erfindungen.~
++ ~Erz�hlt mir von Moradin.~ + PID2.2a
++ ~Erz�hlt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erz�hlt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erz�hlt mir von Dumathoin.~ + PID2.2e
++ ~Erz�hlt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erz�hlt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erz�hlt mir von Marthamor Duin.~ + PID2.2h
++ ~Erz�hlt mir von Laduguer.~ + PID2.2i
++ ~Erz�hlt mir von Abbathor.~ + PID2.2j
++ ~Erz�hlt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erz�hlt mir von Sharindlar.~ + PID2.2l
++ ~Erz�hlt mir von Thard Harr.~ + PID2.2m
++ ~Erz�hlt mir von Vergadain.~ + PID2.2n
++ ~Ich m�chte etwas anderes �ber Euren Glauben erfahren.~ + PID.2
++ ~Ich m�chte doch �ber etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2e
SAY ~Dumathoin wacht �ber die Bergleute in der Tiefe und leitet die Toten in die Festhallen auf der anderen Seite.~
++ ~Erz�hlt mir von Moradin.~ + PID2.2a
++ ~Erz�hlt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erz�hlt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erz�hlt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erz�hlt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erz�hlt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erz�hlt mir von Marthamor Duin.~ + PID2.2h
++ ~Erz�hlt mir von Laduguer.~ + PID2.2i
++ ~Erz�hlt mir von Abbathor.~ + PID2.2j
++ ~Erz�hlt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erz�hlt mir von Sharindlar.~ + PID2.2l
++ ~Erz�hlt mir von Thard Harr.~ + PID2.2m
++ ~Erz�hlt mir von Vergadain.~ + PID2.2n
++ ~Ich m�chte etwas anderes �ber Euren Glauben erfahren.~ + PID.2
++ ~Ich m�chte doch �ber etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2g
SAY ~Haela ist die G�ttin des Gl�cks und des Wagemutes, die all jenen tollk�hnen zur Seite steht, die Toril von b�sen Ungeheuern befreien wollen.~
++ ~Erz�hlt mir von Moradin.~ + PID2.2a
++ ~Erz�hlt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erz�hlt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erz�hlt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erz�hlt mir von Dumathoin.~ + PID2.2e
++ ~Erz�hlt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erz�hlt mir von Marthamor Duin.~ + PID2.2h
++ ~Erz�hlt mir von Laduguer.~ + PID2.2i
++ ~Erz�hlt mir von Abbathor.~ + PID2.2j
++ ~Erz�hlt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erz�hlt mir von Sharindlar.~ + PID2.2l
++ ~Erz�hlt mir von Thard Harr.~ + PID2.2m
++ ~Erz�hlt mir von Vergadain.~ + PID2.2n
++ ~Ich m�chte etwas anderes �ber Euren Glauben erfahren.~ + PID.2
++ ~Ich m�chte doch �ber etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2f
SAY ~Gorm ist der Schutzherr der Zwergenfesten und der wachsame Gott. Der ewige Vigilant beschw�rt seine Avatare immer dann, wenn es darum geht, eine Zwergenfeste zu verteidigen und der Kampf aussichtslos erscheint.~
++ ~Erz�hlt mir von Moradin.~ + PID2.2a
++ ~Erz�hlt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erz�hlt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erz�hlt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erz�hlt mir von Dumathoin.~ + PID2.2e
++ ~Erz�hlt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erz�hlt mir von Marthamor Duin.~ + PID2.2h
++ ~Erz�hlt mir von Laduguer.~ + PID2.2i
++ ~Erz�hlt mir von Abbathor.~ + PID2.2j
++ ~Erz�hlt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erz�hlt mir von Sharindlar.~ + PID2.2l
++ ~Erz�hlt mir von Thard Harr.~ + PID2.2m
++ ~Erz�hlt mir von Vergadain.~ + PID2.2n
++ ~Ich m�chte etwas anderes �ber Euren Glauben erfahren.~ + PID.2
++ ~Ich m�chte doch �ber etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2h
SAY ~Marthammor Duin besch�tzt Zwerge auf Wanderschaft. Wenn sich ein Zwerg auf Reisen begibt, dann bittet er den Finder-der-Wege um seine Hilfe.~
++ ~Erz�hlt mir von Moradin.~ + PID2.2a
++ ~Erz�hlt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erz�hlt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erz�hlt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erz�hlt mir von Dumathoin.~ + PID2.2e
++ ~Erz�hlt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erz�hlt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erz�hlt mir von Laduguer.~ + PID2.2i
++ ~Erz�hlt mir von Abbathor.~ + PID2.2j
++ ~Erz�hlt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erz�hlt mir von Sharindlar.~ + PID2.2l
++ ~Erz�hlt mir von Thard Harr.~ + PID2.2m
++ ~Erz�hlt mir von Vergadain.~ + PID2.2n
++ ~Ich m�chte etwas anderes �ber Euren Glauben erfahren.~ + PID.2
++ ~Ich m�chte doch �ber etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2i
SAY ~(Breagar spuckt h�rbar aus) �ber diesen Duergartreiber wei� ich nichts und will ich auch nichts wissen.~
++ ~Erz�hlt mir von Moradin.~ + PID2.2a
++ ~Erz�hlt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erz�hlt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erz�hlt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erz�hlt mir von Dumathoin.~ + PID2.2e
++ ~Erz�hlt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erz�hlt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erz�hlt mir von Marthamor Duin.~ + PID2.2h
++ ~Erz�hlt mir von Abbathor.~ + PID2.2j
++ ~Erz�hlt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erz�hlt mir von Sharindlar.~ + PID2.2l
++ ~Erz�hlt mir von Thard Harr.~ + PID2.2m
++ ~Erz�hlt mir von Vergadain.~ + PID2.2n
++ ~Ich m�chte etwas anderes �ber Euren Glauben erfahren.~ + PID.2
++ ~Ich m�chte doch �ber etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2j
SAY ~Abbathor ist der einige b�se Gott, der von Moradin geduldet wird. Er ist der Gott der Gier und des Neides und lehrt, dass jedes Mittel recht ist, seinen Reichtum zu mehren, so lange kein Zwerg dabei zu Schaden kommt.~
++ ~Erz�hlt mir von Moradin.~ + PID2.2a
++ ~Erz�hlt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erz�hlt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erz�hlt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erz�hlt mir von Dumathoin.~ + PID2.2e
++ ~Erz�hlt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erz�hlt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erz�hlt mir von Marthamor Duin.~ + PID2.2h
++ ~Erz�hlt mir von Laduguer.~ + PID2.2i
++ ~Erz�hlt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erz�hlt mir von Sharindlar.~ + PID2.2l
++ ~Erz�hlt mir von Thard Harr.~ + PID2.2m
++ ~Erz�hlt mir von Vergadain.~ + PID2.2n
++ ~Ich m�chte etwas anderes �ber Euren Glauben erfahren.~ + PID.2
++ ~Ich m�chte doch �ber etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2k
SAY ~(Breagar spuckt h�rbar aus) �ber diesen Duergartreiber wei� ich nichts und will ich auch nichts wissen.~
++ ~Erz�hlt mir von Moradin.~ + PID2.2a
++ ~Erz�hlt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erz�hlt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erz�hlt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erz�hlt mir von Dumathoin.~ + PID2.2e
++ ~Erz�hlt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erz�hlt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erz�hlt mir von Marthamor Duin.~ + PID2.2h
++ ~Erz�hlt mir von Laduguer.~ + PID2.2i
++ ~Erz�hlt mir von Abbathor.~ + PID2.2j
++ ~Erz�hlt mir von Sharindlar.~ + PID2.2l
++ ~Erz�hlt mir von Thard Harr.~ + PID2.2m
++ ~Erz�hlt mir von Vergadain.~ + PID2.2n
++ ~Ich m�chte etwas anderes �ber Euren Glauben erfahren.~ + PID.2
++ ~Ich m�chte doch �ber etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2l
SAY ~Sharindlar? Es wundert mich, dass Ihr diesen Namen kennt, <CHARNAME>. Die Herrin der Gnade ist wenig bekannt unter Dwarmos. Wohl, weil sich kein Nicht-Zwerg vorstellen kann, dass auch Zwerge Ihren Gefallen an Gnade, Mitleid und Romantik haben k�nnen.~
++ ~Erz�hlt mir von Moradin.~ + PID2.2a
++ ~Erz�hlt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erz�hlt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erz�hlt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erz�hlt mir von Dumathoin.~ + PID2.2e
++ ~Erz�hlt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erz�hlt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erz�hlt mir von Marthamor Duin.~ + PID2.2h
++ ~Erz�hlt mir von Laduguer.~ + PID2.2i
++ ~Erz�hlt mir von Abbathor.~ + PID2.2j
++ ~Erz�hlt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erz�hlt mir von Thard Harr.~ + PID2.2m
++ ~Erz�hlt mir von Vergadain.~ + PID2.2n
++ ~Ich m�chte etwas anderes �ber Euren Glauben erfahren.~ + PID.2
++ ~Ich m�chte doch �ber etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2m
SAY ~�ber Thard Harr kann ich nicht viel sagen. Ich wei� wohl dass er von den wilden Zwergen, die weitab von hier in den W�ldern wohnen, verehrt wird. Aber wen interessieren die schon? Pah.~
++ ~Erz�hlt mir von Moradin.~ + PID2.2a
++ ~Erz�hlt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erz�hlt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erz�hlt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erz�hlt mir von Dumathoin.~ + PID2.2e
++ ~Erz�hlt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erz�hlt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erz�hlt mir von Marthamor Duin.~ + PID2.2h
++ ~Erz�hlt mir von Laduguer.~ + PID2.2i
++ ~Erz�hlt mir von Abbathor.~ + PID2.2j
++ ~Erz�hlt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erz�hlt mir von Sharindlar.~ + PID2.2l
++ ~Erz�hlt mir von Vergadain.~ + PID2.2n
++ ~Ich m�chte etwas anderes �ber Euren Glauben erfahren.~ + PID.2
++ ~Ich m�chte doch �ber etwas ganz anderes reden.~ + PID.B
END

IF ~~ THEN BEGIN PID2.2n
SAY ~Vergadain, der lachende Zwerg? Er ist der Gott des Handels, der Verhandlungen und des Feilschens.~
++ ~Erz�hlt mir von Moradin.~ + PID2.2a
++ ~Erz�hlt mir von Berronar Wahrsilber.~ + PID2.2b
++ ~Erz�hlt mir von Clangeddin Silberbart.~ + PID2.2c
++ ~Erz�hlt mir von Dugmaren Leuchtmantel.~ + PID2.2d
++ ~Erz�hlt mir von Dumathoin.~ + PID2.2e
++ ~Erz�hlt mir von Gorm Gulthyn.~ + PID2.2f
++ ~Erz�hlt mir von Haela Leuchtaxt.~ + PID2.2g
++ ~Erz�hlt mir von Marthamor Duin.~ + PID2.2h
++ ~Erz�hlt mir von Laduguer.~ + PID2.2i
++ ~Erz�hlt mir von Abbathor.~ + PID2.2j
++ ~Erz�hlt mir von Duerra der Tiefen.~ + PID2.2k
++ ~Erz�hlt mir von Sharindlar.~ + PID2.2l
++ ~Erz�hlt mir von Thard Harr.~ + PID2.2m
++ ~Ich m�chte etwas anderes �ber Euren Glauben erfahren.~ + PID.2
++ ~Ich m�chte doch �ber etwas ganz anderes reden.~ + PID.B
END
END

CHAIN
IF ~~ THEN ACBREJ PID.11
~Der Drache klaut das Gold um auf ihm zu schlafen und der Zwerg klaut das Gold, um mit ihm zu schlafen.~ = ~Der Witz hat schon sooo einen Bart, <CHARNAME>.~ DO ~SetGlobal("ACBRETOLDAJOKE","GLOBAL",1)~
==BIMOEN2 IF ~InParty("IMOEN2")See("IMOEN2")!StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN ~Also ich fand ihn lustig.~
EXIT