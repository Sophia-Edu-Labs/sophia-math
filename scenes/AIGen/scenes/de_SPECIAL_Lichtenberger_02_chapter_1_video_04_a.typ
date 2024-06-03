#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Druckänderung]

#v(40pt)

#only("1-")[- Der Wasserspiegel im Reservoir sinkt um 2 m 🌊]

#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen.")
]

#only("2")[
#voiceover("Uns wird gesagt, dass der Wasserspiegel im Reservoir um 2 Meter sinkt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Vorgehensweise]

#v(40pt)

#only("1-")[- Die Druckänderung hängt von der Höhenänderung ab]
// Die Vorgehensweise, die Höhenänderung zu berücksichtigen, wird ab Folie 1 gezeigt

#only("2-")[- Verwende die Formel: $Delta P = rho dot g dot Delta h$]
// Die Formel für die Druckänderung wird ab Folie 2 gezeigt

#only("1")[
#voiceover("Der Schlüssel hier ist zu erkennen, dass die Druckänderung von der Änderung der Höhe der Wassersäule abhängt.")
]

#only("2")[
#voiceover("Wir können die Formel Delta P gleich rho mal g mal Delta h verwenden, wobei Delta P die Druckänderung ist, rho die Dichte des Wassers, g die Erdbeschleunigung und Delta h die Höhenänderung ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]

#v(40pt)

#only("1-")[- $Delta h = -2 "m"$]
// Die Höhenänderung wird ab Folie 1 gezeigt

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ In die Formel einsetzen]]]
// Das Einsetzen in die Formel wird ab Folie 2 in Aqua hervorgehoben

#v(10pt)

#only("3-")[$ Delta P = 1000 "kg/m"^3 dot 9.81 "m/s"^2 dot (-2 "m") $]
// Die Formel mit eingesetzten Werten wird ab Folie 3 gezeigt

#v(10pt)

#only("4-")[#align(center)[#text(fill:aqua)[⇓ Berechnen]]]
// Der Berechnungsschritt wird ab Folie 4 in Aqua hervorgehoben

#v(10pt)

#only("5-")[$ Delta P = -19620 "Pa" = -0.1962 "bar" $]
// Das Endergebnis wird ab Folie 5 gezeigt

#only("1")[
#voiceover("Die Höhenänderung, Delta h, beträgt minus 2 Meter, da der Wasserspiegel sinkt.")
]

#only("2")[
#voiceover("Wir setzen dies in unsere Formel ein.")
]

#only("3")[
#voiceover("Delta P ist gleich tausend Kilogramm pro Kubikmeter, was die Dichte des Wassers ist, mal neun Komma acht eins Meter pro Quadratsekunde, was die Erdbeschleunigung ist, mal minus zwei Meter.")
]

#only("4")[
#voiceover("Wir berechnen dies...")
]

#only("5")[
#voiceover("Wir erhalten, dass Delta P gleich minus neunzehntausend sechshundertzwanzig Pascal oder minus null Komma eins neun sechs zwei Bar ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]

#v(40pt)

#only("1-")[- Der Druck sinkt um 0,1962 Bar pro Wasserhahn 📉]

#only("1")[
#voiceover("Daher sinkt der Druck um null Komma eins neun sechs zwei Bar pro Wasserhahn, unabhängig von ihrem Anfangsdruck, da sie alle die gleiche Höhenänderung der Wassersäule über ihnen erfahren.")
]
]