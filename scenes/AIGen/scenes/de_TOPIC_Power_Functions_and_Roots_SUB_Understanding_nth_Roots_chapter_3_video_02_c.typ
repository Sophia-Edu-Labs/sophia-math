#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Das Vereinfachen von $root(3, 27)$]
#v(40pt)
#only("1-")[Großartig! Du hast $root(3, 27)$ korrekt vereinfacht. Lass uns die Lösung Schritt für Schritt durchgehen.]
#v(40pt)
#only("2-")[Schritt 1: Bestimme die Kubikwurzel]
#v(20pt)
#only("2-")[- $root(3, 27)$ ist die Kubikwurzel von 27 🧊]
#v(40pt)
#only("3-")[Schritt 2: Finde die Zahl, die, wenn sie dreimal mit sich selbst multipliziert wird, 27 ergibt]
#v(20pt)
#only("3-")[- $3 × 3 × 3 = 27$ ✅]
#v(40pt)
#only("4-")[Daher ist $root(3, 27) = 3$ 🎉]

#only("1")[#voiceover("Großartig! Du hast die Kubikwurzel von 27 korrekt vereinfacht. Lass uns die Lösung Schritt für Schritt durchgehen.")]
#only("2")[#voiceover("Schritt 1 ist zu erkennen, dass wir es mit einer Kubikwurzel zu tun haben. Die Notation root 3 comma 27 stellt die Kubikwurzel von 27 dar.")]
#only("3")[#voiceover("Schritt 2 ist die Zahl zu finden, die, wenn sie dreimal mit sich selbst multipliziert wird, 27 ergibt. Diese Zahl ist 3, weil 3 mal 3 mal 3 gleich 27 ist.")]
#only("4")[#voiceover("Daher vereinfacht sich die Kubikwurzel von 27, geschrieben als root 3 comma 27, zu 3.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Multiple Choice]
#v(40pt)
#only("-1")[a) 1]
#only("2-")[#text(fill:red)[a) 1]]
#v(10pt)
#only("-2")[b) 2]
#only("3-")[#text(fill:red)[b) 2]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-3")[c) 3]
#only("4-")[#text(fill:green)[c) 3]]
#v(10pt)
#only("-4")[d) 4]
#only("5-")[#text(fill:red)[d) 4]]

#only("1")[#voiceover("Lass uns die Multiple-Choice-Optionen durchgehen.")]
#only("2")[#voiceover("Option a, 1, ist falsch. 1 hoch 3 ist 1, nicht 27.")]
#only("3")[#voiceover("Option b, 2, ist ebenfalls falsch. 2 hoch 3 ist 8, nicht 27.")]
#only("4")[#voiceover("Option c, 3, ist korrekt. Wie wir gesehen haben, ergibt 3 hoch 3 gleich 27.")]
#only("5")[#voiceover("Schließlich ist Option d, 4, falsch. 4 hoch 3 ist 64, nicht 27.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- $root(3, 27)$ ist die Kubikwurzel von 27 🧊]
#v(20pt)
#only("2-")[- Um die Kubikwurzel zu finden, finde die Zahl, die, wenn sie dreimal mit sich selbst multipliziert wird, die ursprüngliche Zahl ergibt 🔍]
#v(20pt)
#only("3-")[- $3 × 3 × 3 = 27$, also ist $root(3, 27) = 3$ ✅]
#v(20pt)
#only("4-")[Großartige Arbeit beim Vereinfachen dieser Kubikwurzel! 🌟]

#only("1")[#voiceover("Zusammengefasst stellt root 3 comma 27 die Kubikwurzel von 27 dar.")]
#only("2")[#voiceover("Um die Kubikwurzel zu finden, müssen wir die Zahl finden, die, wenn sie dreimal mit sich selbst multipliziert wird, die ursprüngliche Zahl ergibt.")]
#only("3")[#voiceover("Da 3 mal 3 mal 3 gleich 27 ist, vereinfacht sich die Kubikwurzel von 27, geschrieben als root 3 comma 27, zu 3.")]
#only("4")[#voiceover("Großartige Arbeit beim Vereinfachen dieser Kubikwurzel! Mach weiter so.")]
]