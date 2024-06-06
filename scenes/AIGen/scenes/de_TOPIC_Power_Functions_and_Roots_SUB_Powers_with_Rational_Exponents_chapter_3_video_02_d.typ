#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Ausdrücke vereinfachen]
#v(40pt)
#only("1-")[Vereinfache $3 2^(1/2) + 2 2^(1/2)$.]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) $5 2^(1/2)$]#only("2-")[#text(fill:green)[a) $5 2^(1/2)$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) $6 2^(1/2)$]#only("3-")[#text(fill:red)[b) $6 2^(1/2)$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) $4 2^(1/2)$]#only("4-")[#text(fill:red)[c) $4 2^(1/2)$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $5$]#only("5-")[#text(fill:red)[d) $5$]]
#v(40pt)

#only("1")[#voiceover("Das war leider nicht korrekt. Die richtige Antwort ist...")]
// Erkläre kurz a und warum es korrekt ist
#only("2")[#voiceover("a) $5 2^(1/2)$. Um Ausdrücke mit rationalen Exponenten zu addieren, müssen die Basen und Exponenten gleich sein. Hier haben beide Terme eine Basis von 2 und einen Exponenten von 1/2, also können wir einfach die Koeffizienten addieren.")]
// Erkläre kurz b und warum es falsch ist
#only("3")[#voiceover("b) $6 2^(1/2)$ ist falsch. Dies wäre das Ergebnis, wenn wir die Koeffizienten und die Basen addieren würden, was nicht das richtige Verfahren ist.")]
// Erkläre kurz c und warum es falsch ist
#only("4")[#voiceover("c) $4 2^(1/2)$ ist ebenfalls falsch. Dies wäre das Ergebnis, wenn wir nur die Basen addieren und die Koeffizienten ignorieren würden.")]
// Erkläre kurz d und warum es falsch ist
#only("5")[#voiceover("Und d) $5$ ist auch falsch. Dies ist nur die Summe der Koeffizienten, aber die Basis und der Exponent fehlen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Gegebener Ausdruck: $3 2^(1/2) + 2 2^(1/2)$]
#v(20pt)
#only("2-")[Schritt 1: Überprüfe Basis und Exponent 🔍]
#v(10pt)
#only("3-")[- Beide Terme haben Basis 2 und Exponent 1/2 ✅]
#v(20pt)
#only("4-")[Schritt 2: Addiere die Koeffizienten 🧮]
#v(10pt)
#only("5-")[- $3 + 2 = 5$]
#v(20pt)
#only("6-")[Schritt 3: Behalte Basis und Exponent 📜]
#v(10pt)
#only("7-")[- Basis: 2, Exponent: 1/2]
#v(20pt)
#only("8-")[Endgültige Antwort: $5 2^(1/2)$ 🎉]

#only("1")[#voiceover("Gehen wir die Lösung Schritt für Schritt durch.")]
#only("2")[#voiceover("Zuerst überprüfen wir die Basis und den Exponenten jedes Terms.")]
#only("3")[#voiceover("Wir sehen, dass beide Terme eine Basis von 2 und einen Exponenten von 1/2 haben, also können wir fortfahren, sie zu addieren.")]
#only("4")[#voiceover("Als nächstes addieren wir die Koeffizienten.")]
#only("5")[#voiceover("3 plus 2 ergibt 5.")]
#only("6")[#voiceover("Wir behalten die Basis und den Exponenten bei.")]
#only("7")[#voiceover("Die Basis bleibt 2 und der Exponent bleibt 1/2.")]
#only("8")[#voiceover("Unsere endgültige Antwort ist also 5 mal 2 hoch 1/2.")]
]