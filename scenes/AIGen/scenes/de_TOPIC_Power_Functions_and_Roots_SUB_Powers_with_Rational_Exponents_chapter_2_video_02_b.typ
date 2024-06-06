#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Vereinfache $4^(1/2) 4^(1/2)$]
#v(40pt)
#only("1-")[Welche der folgenden Optionen ist die korrekte Vereinfachung von $4^(1/2) 4^(1/2)$?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) 2]#only("2-")[#text(fill:red)[a) 2]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-2")[b) 4]#only("3-")[#text(fill:green)[b) 4]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) 8]#only("4-")[#text(fill:red)[c) 8]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) 16]#only("5-")[#text(fill:red)[d) 16]]
#only("1")[#voiceover("Das ist richtig, großartige Arbeit! Lass uns Schritt für Schritt sehen, wie wir zu dieser Antwort kommen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt Lösung]
#v(40pt)
#only("1-")[1. Erinnere dich an die Regel zum Multiplizieren von Potenzen mit derselben Basis: $a^m a^n = a^(m+n)$ 🧮]
#v(20pt)
#only("2-")[2. In diesem Fall, $4^(1/2) 4^(1/2) = 4^((1/2)+(1/2))$ ✍]
#v(20pt)
#only("3-")[3. Vereinfache den Exponenten: $(1/2) + (1/2) = 2/2 = 1$ 🎯]
#v(20pt)
#only("4-")[4. Daher, $4^(1/2) 4^(1/2) = 4^1 = 4$ ✅]
#only("1")[#voiceover("Erstens, erinnere dich an die Regel zum Multiplizieren von Potenzen mit derselben Basis. Wenn wir Potenzen mit derselben Basis multiplizieren, addieren wir die Exponenten. In mathematischer Notation wird dies als a hoch m mal a hoch n gleich a hoch m plus n geschrieben.")]
#only("2")[#voiceover("In unserem Problem haben wir 4 hoch ein Halb mal 4 hoch ein Halb. Nach der gerade besprochenen Regel ist dies gleich 4 hoch ein Halb plus ein Halb.")]
#only("3")[#voiceover("Nun, lass uns den Exponenten vereinfachen. Ein Halb plus ein Halb ergibt zwei Halbe, was sich zu 1 vereinfacht.")]
#only("4")[#voiceover("Daher ist 4 hoch ein Halb mal 4 hoch ein Halb gleich 4 hoch 1, was einfach 4 ist. Deshalb ist Option b) 4 die richtige Antwort.")]
]