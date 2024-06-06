#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Anwendung im echten Leben]
#v(40pt)
Welches der folgenden Beispiele ist eine Anwendung von rationalen Exponenten im echten Leben?
#v(40pt)
#only("-1")[a) Berechnung von Zinseszinsen]#only("2-")[#text(fill:green)[a) Berechnung von Zinseszinsen]]
#v(10pt)
#only("-2")[b) Berechnung der Fläche eines Kreises]#only("3-")[#text(fill:red)[b) Berechnung der Fläche eines Kreises]]
#v(10pt)
#only("-3")[c) Lösen linearer Gleichungen]#only("4-")[#text(fill:red)[c) Lösen linearer Gleichungen]]
#v(10pt)
#only("-4")[d) Bestimmung der Steigung einer Geraden]#only("5-")[#text(fill:red)[d) Bestimmung der Steigung einer Geraden]]
#v(40pt)

#only("1")[#voiceover("Ausgezeichnete Arbeit. Du hast die richtige Antwort gewählt.")]
#only("2")[#voiceover("Option a, die Berechnung von Zinseszinsen, ist tatsächlich eine Anwendung von rationalen Exponenten im echten Leben.")]
#only("3")[#voiceover("Die Berechnung der Fläche eines Kreises, Option b, beinhaltet keine rationalen Exponenten. Die Fläche eines Kreises wird mit der Formel Pi mal Radius zum Quadrat berechnet.")]
#only("4")[#voiceover("Option c, das Lösen linearer Gleichungen, erfordert ebenfalls keine rationalen Exponenten. Lineare Gleichungen werden typischerweise mit grundlegenden arithmetischen Operationen gelöst.")]
#only("5")[#voiceover("Die Bestimmung der Steigung einer Geraden, Option d, ist ebenfalls falsch. Die Steigung wird berechnet, indem die Änderung in y durch die Änderung in x geteilt wird, was keine rationalen Exponenten beinhaltet.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zinseszinsen]
#v(40pt)
#only("1-")[Die Formel für Zinseszinsen lautet:]
#v(20pt)
#only("2-")[$ A = P(1 + r/n)^(n t) $]
#v(20pt)
#only("3-")[Dabei gilt:]
#v(10pt)
#only("4-")[- $A$ = Endbetrag 💰]
#only("5-")[- $P$ = Anfangskapital 💸]
#only("6-")[- $r$ = jährlicher Zinssatz 📈]
#only("7-")[- $n$ = Anzahl der Zinsperioden pro Jahr 🗓️]
#only("8-")[- $t$ = Anzahl der Jahre 📅]

#only("1")[#voiceover("Schauen wir uns an, wie Zinseszinsen rationale Exponenten beinhalten.")]
#only("2")[#voiceover("Die Formel für Zinseszinsen lautet A gleich P mal die Größe 1 plus r durch n, hoch n mal t.")]
#only("3")[#voiceover("In dieser Formel:")]
#only("4")[#voiceover("A steht für den Endbetrag,")]
#only("5")[#voiceover("P ist das Anfangskapital,")]
#only("6")[#voiceover("r ist der jährliche Zinssatz,")]
#only("7")[#voiceover("n ist die Anzahl der Zinsperioden pro Jahr,")]
#only("8")[#voiceover("und t ist die Anzahl der Jahre.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Angenommen, Du investierst 1000 \$ zu einem jährlichen Zinssatz von 5 %, der vierteljährlich verzinst wird, für 10 Jahre.]
#v(20pt)
#only("2-")[So würden wir den Endbetrag berechnen:]
#v(20pt)
#only("3-")[$ P = $1000, $r = 0.05, $n = 4, $t = 10 $]
#v(10pt)
#only("4-")[$ A = 1000(1 + 0.05/4)^(4*10) $]
#v(10pt)
#only("5-")[$ A = 1000(1.0125)^40 $]
#v(10pt)
#only("6-")[$ A = 1000 * 1.6386... $]
#v(10pt)
#only("7-")[$ A = \$1638.62 $]

#only("1")[#voiceover("Betrachten wir dieses Beispiel. Angenommen, Du investierst 1000 Dollar zu einem jährlichen Zinssatz von 5 Prozent, der vierteljährlich verzinst wird, für 10 Jahre.")]
#only("2")[#voiceover("So würden wir den Endbetrag berechnen.")]
#only("3")[#voiceover("P beträgt 1000 Dollar, r ist 0,05 für 5 Prozent, n ist 4 für vierteljährliche Verzinsung und t ist 10 für 10 Jahre.")]
#only("4")[#voiceover("Setzt man diese Werte in die Formel ein, erhält man A gleich 1000 mal die Größe 1 plus 0,05 durch 4, hoch 4 mal 10.")]
#only("5")[#voiceover("Vereinfacht ergibt das A gleich 1000 mal 1,0125 hoch 40.")]
#only("6")[#voiceover("Berechnet man dies, erhält man A gleich 1000 mal ungefähr 1,6386.")]
#only("7")[#voiceover("Daher beträgt der Endbetrag nach 10 Jahren etwa 1638 Dollar und 62 Cent.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Rationale Exponenten]
#v(40pt)
#only("1-")[In diesem Beispiel ist der Exponent $(n t)$ eine rationale Zahl:]
#v(20pt)
#only("2-")[$ (n t) = 4 * 10 = 40 $]
#v(20pt)
#only("3-")[Dies kann als rationaler Exponent geschrieben werden:]
#v(20pt)
#only("4-")[$ (1.0125)^40 = (1.0125)^(40/1) $]
#v(20pt)
#only("5-")[Daher werden rationale Exponenten bei der Berechnung von Zinseszinsen verwendet. 🎓]

#only("1")[#voiceover("Nun, lass uns den Exponenten in diesem Beispiel betrachten. Der Exponent n mal t ist eine rationale Zahl.")]
#only("2")[#voiceover("In unserem Fall ist n mal t gleich 4 mal 10, was 40 ergibt.")]
#only("3")[#voiceover("Dies kann als rationaler Exponent geschrieben werden.")]
#only("4")[#voiceover("1,0125 hoch 40 ist dasselbe wie 1,0125 hoch 40 durch 1, was ein rationaler Exponent ist.")]
#only("5")[#voiceover("Dies zeigt, wie rationale Exponenten bei der Berechnung von Zinseszinsen verwendet werden, was eine Anwendung dieses mathematischen Konzepts im echten Leben darstellt.")]
]