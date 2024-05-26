#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwerte kombinieren]
#v(40pt)
Gegeben sei $lim_(n -> infinity) a_n = 1$ und $lim_(n -> infinity) b_n = 2$, was ist $lim_(n -> infinity) (a_n + b_n) a_n$?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) 1]#only("2-")[#text(fill:red)[a) 1]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) 2]#only("3-")[#text(fill:red)[b) 2]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-3")[c) 3]#only("4-")[#text(fill:green)[c) 3]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) 4]#only("5-")[#text(fill:red)[d) 4]]
#only("1")[#voiceover("Großartig! Das ist die richtige Antwort.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Schritt 1: Verwende die Summenregel für Grenzwerte]
#v(10pt)
#only("2-")[- $lim_(n -> infinity) (a_n + b_n) = lim_(n -> infinity) a_n + lim_(n -> infinity) b_n$]
#v(10pt)
#only("3-")[- $= 1 + 2 = 3$]
#v(40pt)
#only("4-")[Schritt 2: Verwende die Produktregel für Grenzwerte]
#v(10pt)
#only("5-")[- $lim_(n -> infinity) ((a_n + b_n) a_n) = (lim_(n -> infinity) (a_n + b_n)) (lim_(n -> infinity) a_n)$]
#v(10pt)
#only("6-")[- $= 3 dot 1 = 3$]
#v(40pt)
#only("7-")[Daher ist $lim_(n -> infinity) ((a_n + b_n) a_n) = 3$. 🎉]

#only("1")[#voiceover("Lass uns das Schritt für Schritt lösen.")]
#only("2")[#voiceover("Zuerst verwenden wir die Summenregel für Grenzwerte. Diese besagt, dass der Grenzwert einer Summe gleich der Summe der Grenzwerte ist.")]
#only("3")[#voiceover("Wenden wir diese Regel an, erhalten wir, dass der Grenzwert von a_n plus b_n, wenn n gegen unendlich geht, gleich dem Grenzwert von a_n, der 1 ist, plus dem Grenzwert von b_n, der 2 ist. Das ergibt 3.")]
#only("4")[#voiceover("Als nächstes verwenden wir die Produktregel für Grenzwerte. Diese Regel besagt, dass der Grenzwert eines Produkts gleich dem Produkt der Grenzwerte ist.")]
#only("5")[#voiceover("Also ist der Grenzwert von a_n plus b_n mal a_n, wenn n gegen unendlich geht, gleich dem Grenzwert von a_n plus b_n, den wir gerade als 3 gefunden haben, mal dem Grenzwert von a_n, der als 1 gegeben ist.")]
#only("6")[#voiceover("Multiplizieren wir diese, erhalten wir 3 mal 1, was 3 ergibt.")]
#only("7")[#voiceover("Daher ist der Grenzwert von a_n plus b_n mal a_n, wenn n gegen unendlich geht, gleich 3.")]
]