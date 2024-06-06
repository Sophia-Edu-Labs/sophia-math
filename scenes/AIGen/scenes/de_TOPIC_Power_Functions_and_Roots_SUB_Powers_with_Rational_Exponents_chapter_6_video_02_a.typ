#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Übung 1]
#v(40pt)
Vereinfache $(2^(1/2))^2$.
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) 2]#only("2-")[#text(fill:green)[a) 2]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) 4]#only("3-")[#text(fill:red)[b) 4]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) 8]#only("4-")[#text(fill:red)[c) 8]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) 16]#only("5-")[#text(fill:red)[d) 16]]

#only("1")[#voiceover("Großartige Arbeit! Das ist die richtige Antwort.")]
#only("2")[#voiceover("Option a), 2, ist tatsächlich die korrekte Vereinfachung des Ausdrucks $(2^(1/2))^2$.")]
#only("3")[#voiceover("Option b), 4, ist falsch. Das wäre das Ergebnis, wenn wir den Ausdruck als $(2^1)^2$ statt als $(2^(1/2))^2$ vereinfacht hätten.")]
#only("4")[#voiceover("Option c), 8, ist ebenfalls falsch. Das wäre das Ergebnis, wenn wir den Ausdruck als $2^((1/2)2)$ statt als $(2^(1/2))^2$ vereinfacht hätten.")]
#only("5")[#voiceover("Und Option d), 16, ist auch falsch. Das wäre das Ergebnis, wenn wir den Ausdruck als $2^(1/2)2$ statt als $(2^(1/2))^2$ vereinfacht hätten.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Wir wollen $(2^(1/2))^2$ vereinfachen.]
#v(20pt)
#only("2-")[1. Erinnere dich an die Potenzregel für Exponenten: $(a^m)^n = a^(m n)$]
#v(20pt)
#only("3-")[2. Wende die Regel an: $(2^(1/2))^2 = 2^((1/2)2) = 2^1$]
#v(20pt)
#only("4-")[3. Vereinfache: $2^1 = 2$]
#v(20pt)
#only("5-")[Daher ist $(2^(1/2))^2 = 2$. 🎉]

#only("1")[#voiceover("Lass uns die Schritt-für-Schritt-Lösung durchgehen, um zu sehen, warum a) 2 die richtige Antwort ist.")]
#only("2")[#voiceover("Erstens, erinnere dich an die Potenzregel für Exponenten: a hoch m, alles hoch n, ist gleich a hoch m mal n.")]
#only("3")[#voiceover("Wenden wir diese Regel auf unseren Ausdruck an, erhalten wir: 2 hoch einhalb, alles quadriert, ist gleich 2 hoch einhalb mal 2, was sich zu 2 hoch 1 vereinfacht.")]
#only("4")[#voiceover("Nun, 2 hoch 1 ist einfach 2.")]
#only("5")[#voiceover("Daher ist die korrekte Vereinfachung des Ausdrucks 2 hoch einhalb, alles quadriert, tatsächlich 2.")]
]