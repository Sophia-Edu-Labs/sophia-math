#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rationale Exponenten]
#v(40pt)
Was stellt $a^(1/2)$ dar?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) $a$ zum Quadrat]#only("2-")[#text(fill:red)[a) $a$ zum Quadrat]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) $a$ hoch drei]#only("3-")[#text(fill:red)[b) $a$ hoch drei]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-3")[c) die Quadratwurzel von $a$]#only("4-")[#text(fill:green)[c) die Quadratwurzel von $a$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) die Kubikwurzel von $a$]#only("5-")[#text(fill:red)[d) die Kubikwurzel von $a$]]

#only("1")[#voiceover("Das war leider nicht korrekt. Hier ist die Erklärung:")]
#only("2")[#voiceover("Die Option 'a zum Quadrat' ist falsch. $a$ hoch ein Halb stellt nicht $a$ zum Quadrat dar, das wäre $a$ hoch 2.")]
#only("3")[#voiceover("Ebenso ist 'a hoch drei' falsch. $a$ hoch drei wäre $a$ hoch 3, nicht ein Halb.")]
#only("4")[#voiceover("Die richtige Antwort ist 'die Quadratwurzel von $a$'. $a$ hoch ein Halb entspricht tatsächlich der Quadratwurzel von $a$.")]
#only("5")[#voiceover("Zuletzt ist 'die Kubikwurzel von $a$' falsch. Die Kubikwurzel von $a$ wäre $a$ hoch ein Drittel, nicht ein Halb.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Erinnere Dich an die Regel: $a^(m/n) = root(n,a^m)$]
#v(20pt)
#only("2-")[In diesem Fall, $a^(1/2)$, haben wir:]
#v(10pt)
#only("3-")[- $m = 1$]
#only("4-")[- $n = 2$]
#v(20pt)
#only("5-")[Einsetzen in die Regel:]
#v(10pt)
#only("6-")[$a^(1/2) = root(2,a^1)$]
#v(10pt)
#only("7-")[$a^(1/2) = root(2,a)$]
#v(20pt)
#only("8-")[Daher stellt $a^(1/2)$ die Quadratwurzel von $a$ dar. 📏🎉]

#only("1")[#voiceover("Lass uns die Lösung Schritt für Schritt durchgehen. Zuerst erinnere Dich an die Regel, dass $a$ hoch $m$ durch $n$ gleich der $n$-ten Wurzel von $a$ hoch $m$ ist.")]
#only("2")[#voiceover("In dem gegebenen Ausdruck, $a$ hoch ein Halb, können wir die Werte von $m$ und $n$ identifizieren.")]
#only("3")[#voiceover("$m$, der Zähler des Exponenten, ist gleich 1.")]
#only("4")[#voiceover("Und $n$, der Nenner des Exponenten, ist gleich 2.")]
#only("5")[#voiceover("Nun setzen wir diese Werte in die Regel ein.")]
#only("6")[#voiceover("$a$ hoch ein Halb ist gleich der 2. Wurzel von $a$ hoch 1.")]
#only("7")[#voiceover("Das vereinfacht sich zur 2. Wurzel, oder Quadratwurzel, von $a$.")]
#only("8")[#voiceover("Daher können wir schließen, dass $a$ hoch ein Halb die Quadratwurzel von $a$ darstellt. Dies ist eine grundlegende Regel beim Umgang mit rationalen Exponenten.")]
]