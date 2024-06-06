#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Vereinfache $(-8)^(1/3)$]
#v(40pt)
Welche der folgenden Optionen ist die korrekte Vereinfachung von $(-8)^(1/3)$?
#v(40pt)
#only("-1")[a) 2]#only("2-")[#text(fill:red)[a) 2]]
#v(10pt)
#only("-2")[b) -2]#only("3-")[#text(fill:green)[b) -2]]
#v(10pt)
#only("-3")[c) 4]#only("4-")[#text(fill:red)[c) 4]]
#v(10pt)
#only("-4")[d) -4]#only("5-")[#text(fill:red)[d) -4]]
#v(40pt)

#only("1")[#voiceover("Leider war das nicht die richtige Antwort. Hier ist das Video zur Erklärung.")]
#only("2")[#voiceover("Option a, 2, ist falsch. Die dritte Wurzel einer negativen Zahl ist negativ, nicht positiv.")]
#only("3")[#voiceover("Option b, -2, ist die richtige Antwort. Lass uns im nächsten Slide sehen, warum.")]
#only("4")[#voiceover("Option c, 4, ist falsch. Die dritte Wurzel von -8 ist nicht 4.")]
#only("5")[#voiceover("Und Option d, -4, ist ebenfalls falsch. Obwohl das Vorzeichen korrekt ist, ist der Betrag falsch.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[Schritt 1: Verstehe die Notation 📝]
#v(20pt)
#only("2-")[$(-8)^(1/3)$ bedeutet die dritte Wurzel von -8, weil $1/3$ der Kehrwert von $3$ ist.]
#v(40pt)
#only("3-")[Schritt 2: Finde die dritte Wurzel 🧮]
#v(20pt)
#only("4-")[Die dritte Wurzel von -8 ist -2, weil $(-2)^3 = -8$.]
#v(40pt)
#only("5-")[Daher ist $(-8)^(1/3) = -2$. ✅]

#only("1")[#voiceover("Lass uns das Schritt für Schritt lösen.")]
#only("2")[#voiceover("Zuerst lass uns verstehen, was die Notation bedeutet. Der Exponent 1/3 ist der Kehrwert von 3, daher stellt dieser Ausdruck die dritte Wurzel von -8 dar.")]
#only("3")[#voiceover("Nun lass uns die dritte Wurzel finden.")]
#only("4")[#voiceover("Die dritte Wurzel von -8 ist -2, weil -2 hoch 3 gleich -8 ist.")]
#only("5")[#voiceover("Daher ist die Vereinfachung des Ausdrucks -8 hoch 1/3 gleich -2.")]
]