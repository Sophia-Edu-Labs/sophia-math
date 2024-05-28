#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Barwert]
#v(40pt)
Wofür steht B W?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Potenzieller Wert]#only("2-")[#text(fill:red)[a) Potenzieller Wert]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) Barwert]#only("3-")[#text(fill:green)[b) Barwert]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Vergangener Wert]#only("4-")[#text(fill:red)[c) Vergangener Wert]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Prognostizierter Wert]#only("5-")[#text(fill:red)[d) Prognostizierter Wert]]
#only("1")[#voiceover("Das ist richtig, gute Arbeit! Du hast korrekt identifiziert, wofür B W steht.")]
#only("2")[#voiceover("a) Potenzieller Wert ist falsch. B W steht nicht für Potenzieller Wert.")]
#only("3")[#voiceover("b) Barwert ist die richtige Antwort. B W steht tatsächlich für Barwert.")]
#only("4")[#voiceover("c) Vergangener Wert ist falsch. B W steht nicht für Vergangener Wert.")]
#only("5")[#voiceover("d) Prognostizierter Wert ist ebenfalls falsch. B W ist keine Abkürzung für Prognostizierter Wert.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Barwert]
#v(40pt)
#only("1-")[B W steht für #text(weight: "bold")[Barwert].]
#v(20pt)
#only("2-")[Barwert ist:]
#v(10pt)
#only("3-")[- Der aktuelle Wert eines zukünftigen Geldbetrags 💰]
#v(10pt)
#only("4-")[- Abgezinst zu einem bestimmten Zinssatz 📉]
#v(40pt)
#only("5-")[Formel: $B W = F W/(1+r)^n$]
#v(10pt)
#only("6-")[- $F W$: Zukunftswert]
#only("7-")[- $r$: Zinssatz pro Periode]  
#only("8-")[- $n$: Anzahl der Perioden]

#only("1")[#voiceover("B W ist die Abkürzung für Barwert.")]
#only("2")[#voiceover("Der Barwert ist ein Schlüsselkonzept in der Finanzwelt und im Zeitwert des Geldes.")]
#only("3")[#voiceover("Er repräsentiert den aktuellen Wert einer zukünftigen Geldsumme.")]
#only("4")[#voiceover("Dieser zukünftige Betrag wird mit einem bestimmten Zinssatz auf den aktuellen Zeitpunkt abgezinst.")]
#only("5")[#voiceover("Die Formel zur Berechnung des Barwerts lautet B W gleich F W geteilt durch die Größe 1 plus r hoch n.")]
#only("6")[#voiceover("In dieser Formel steht F W für den Zukunftswert, den Betrag, der in der Zukunft empfangen wird.")]
#only("7")[#voiceover("r repräsentiert den Zinssatz pro Periode, normalerweise als Dezimalzahl ausgedrückt.")]
#only("8")[#voiceover("Und n ist die Anzahl der Perioden, typischerweise die Anzahl der Jahre, zwischen dem jetzigen Zeitpunkt und dem Zeitpunkt, zu dem der zukünftige Betrag empfangen wird.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Was ist der Barwert von €1000, die in 5 Jahren bei einem jährlichen Abzinsungssatz von 5% empfangen werden?]
#v(40pt)
#only("2-")[Gegeben:]
#v(10pt)
#only("3-")[- $F W = €1000$]
#only("4-")[- $r = 5%$ oder $0.05$]
#only("5-")[- $n = 5$ Jahre]
#v(40pt)
#only("6-")[Lösung: $B W = 1000/(1+0.05)^5 = €783.53$]

#only("1")[#voiceover("Schauen wir uns ein Beispiel an, um unser Verständnis zu festigen.")]
#only("2")[#voiceover("Wir haben die folgenden Informationen:")]
#only("3")[#voiceover("Der Zukunftswert beträgt 1000 Euro.")]
#only("4")[#voiceover("Der jährliche Abzinsungssatz beträgt 5%, oder 0.05 in Dezimalform.")]
#only("5")[#voiceover("Und die Anzahl der Jahre beträgt 5.")]
#only("6")[#voiceover("Wenn wir diese Werte in unsere Formel einsetzen, erhalten wir, dass der Barwert gleich 1000 geteilt durch die Größe 1 plus 0.05 hoch 5 ist. Das ergibt 783 Euro und 53 Cent.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- B W steht für #text(weight: "bold")[Barwert] 📍]
#v(20pt)  
#only("2-")[- B W ist der aktuelle Wert eines zukünftigen Geldbetrags 💰]
#v(20pt)
#only("3-")[- B W wird mit der Formel berechnet: $B W = F W/(1+r)^n$ 🧮]
#v(20pt)
#only("4-")[- B W ist ein grundlegendes Konzept im Zeitwert des Geldes 🕰️]

#only("1")[#voiceover("Denke daran, B W steht für Barwert.")]
#only("2")[#voiceover("Der Barwert repräsentiert den aktuellen Wert einer zukünftigen Geldsumme.")]
#only("3")[#voiceover("Er wird mit der Formel B W gleich F W geteilt durch die Größe 1 plus r hoch n berechnet.")]
#only("4")[#voiceover("Der Barwert ist ein grundlegendes Konzept, um den Zeitwert des Geldes zu verstehen.")]
]