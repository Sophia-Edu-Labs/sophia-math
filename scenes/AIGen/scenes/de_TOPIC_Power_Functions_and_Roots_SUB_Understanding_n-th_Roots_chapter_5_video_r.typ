#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Lass uns wiederholen, wie man Gleichungen mit n-ten Wurzeln löst.")
]
#text(size: 30pt, weight: "bold")[Gleichungen mit n-ten Wurzeln lösen]
// Der Titel "Gleichungen mit n-ten Wurzeln lösen" wird auf dieser Folie angezeigt
#v(40pt)
#only("2")[
#voiceover("Der entscheidende Schritt ist, beide Seiten der Gleichung mit der Potenz n zu potenzieren.")
]
#only("2-")[
- Beide Seiten mit der Potenz n potenzieren 📈
]
// Der Aufzählungspunkt "Beide Seiten mit der Potenz n potenzieren" wird ab Folie 2 angezeigt
#v(20pt)
#only("3")[
#voiceover("Zum Beispiel, wenn wir die Gleichung 'die dritte Wurzel von x ist gleich 2' haben, können wir sie lösen, indem wir beide Seiten hoch drei nehmen.")
]
#only("3-")[
- Beispiel: $root(3,x) = 2$
]
// Das Beispiel wird ab Folie 3 angezeigt
#v(20pt)
#only("4")[
#voiceover("Das ergibt 'x ist gleich 2 hoch drei', was vereinfacht 'x ist gleich 8' ergibt.")
]
#only("4-")[
$ (root(3,x))^3 = 2^3$
]
#only("5-")[
$ x = 8$
]
// Die Lösungsschritte werden auf den Folien 4 und 5 angezeigt
]

#slide()[
#only("1")[
#voiceover("Schauen wir uns ein weiteres Beispiel an.")
]
#text(size: 30pt, weight: "bold")[Beispiel]
// Der Titel "Beispiel" wird auf dieser Folie angezeigt
#v(40pt)
#only("2")[
#voiceover("Angenommen, wir wollen die Gleichung 'die vierte Wurzel von x ist gleich 3' lösen.")
]
#only("2-")[
$root(4,x) = 3$
]
// Die zu lösende Gleichung wird ab Folie 2 angezeigt
#v(20pt)
#only("3")[
#voiceover("Wir potenzieren beide Seiten mit der vierten Potenz.")
]
#only("3-")[
$(root(4,x))^4 = 3^4$
]
// Der erste Lösungsschritt wird ab Folie 3 angezeigt
#v(20pt)
#only("4")[
#voiceover("Das ergibt 'x ist gleich 3 hoch vier', was 81 ist.")
]
#only("4-")[
$x = 81$
]
// Die endgültige Lösung wird ab Folie 4 angezeigt
]

#slide()[
#only("1")[
#voiceover("Zusammenfassend, um Gleichungen mit n-ten Wurzeln zu lösen:")
]
#text(size: 30pt, weight: "bold")[Zusammenfassung]
// Der Titel "Zusammenfassung" wird auf dieser Folie angezeigt
#v(40pt)
#only("2")[
#voiceover("Identifiziere die n-te Wurzel und den Wert, dem sie entspricht.")
]
#only("2-")[
1. Identifiziere $root(n,x)$ und seinen Wert
]
// Der erste Zusammenfassungsschritt wird ab Folie 2 angezeigt
#v(20pt)
#only("3")[
#voiceover("Potenzieren beide Seiten der Gleichung mit der Potenz n.")
]
#only("3-")[
2. Potenziere beide Seiten mit der Potenz n
]
// Der zweite Zusammenfassungsschritt wird ab Folie 3 angezeigt
#v(20pt)
#only("4")[
#voiceover("Vereinfache die resultierende Gleichung, um den Wert von x zu finden.")
]
#only("4-")[
3. Vereinfache, um $x$ zu finden
]
// Der dritte Zusammenfassungsschritt wird ab Folie 4 angezeigt
#v(20pt)
#only("5")[
#voiceover("Mit etwas Übung wird das Lösen von Gleichungen mit n-ten Wurzeln zur zweiten Natur! 🌟")
]
]