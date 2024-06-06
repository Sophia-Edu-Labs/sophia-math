#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[3. Wurzel von 8]
#v(40pt)
Was ist die 3. Wurzel von 8?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) 1]#only("2-")[#text(fill:red)[a) 1]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) 2]#only("3-")[#text(fill:green)[b) 2]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) 3]#only("4-")[#text(fill:red)[c) 3]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) 4]#only("5-")[#text(fill:red)[d) 4]]
#only("1")[#voiceover("Großartig! Das ist die richtige Antwort.")]
#only("2")[#voiceover("Option a) 1 ist falsch. Die 3. Wurzel von 8 ist nicht 1, weil 1 hoch 3 gleich 1 ist, nicht 8.")]
#only("3")[#voiceover("Option b) 2 ist richtig. Die 3. Wurzel von 8 ist tatsächlich 2, weil 2 hoch 3, oder 2 mal 2 mal 2, gleich 8 ist.")]
#only("4")[#voiceover("Option c) 3 ist falsch. Die 3. Wurzel von 8 ist nicht 3, weil 3 hoch 3 gleich 27 ist, nicht 8.")]
#only("5")[#voiceover("Option d) 4 ist auch falsch. Die 3. Wurzel von 8 ist nicht 4, weil 4 hoch 3 gleich 64 ist, nicht 8.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Die 3. Wurzel von 8 zu finden bedeutet, eine Zahl zu finden, die, wenn sie hoch 3 genommen wird, gleich 8 ist.]
#v(20pt)
#only("2-")[Nennen wir diese Zahl $x$. Dann haben wir: $x^3 = 8$]
#v(20pt)
#only("3-")[Um $x$ zu lösen, nehmen wir die 3. Wurzel von beiden Seiten: $root(3, x^3) = root(3, 8)$]
#v(20pt)
#only("4-")[Die 3. Wurzel und die Potenz von 3 heben sich auf der linken Seite auf: $x = root(3, 8)$]
#only("1")[#voiceover("Um die 3. Wurzel von 8 zu finden, müssen wir eine Zahl finden, die, wenn sie hoch 3 genommen wird, gleich 8 ist.")]
#only("2")[#voiceover("Nennen wir diese unbekannte Zahl x. Dann können wir eine Gleichung aufstellen: x hoch 3 gleich 8.")]
#only("3")[#voiceover("Um $x$ zu lösen, nehmen wir die 3. Wurzel von beiden Seiten der Gleichung. Die 3. Wurzel von x hoch 3 ist gleich die 3. Wurzel von 8.")]
#only("4")[#voiceover("Auf der linken Seite heben sich die 3. Wurzel und die Potenz von 3 gegenseitig auf, sodass nur x übrig bleibt. Also ist x gleich die 3. Wurzel von 8.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung (Fortsetzung)]
#v(40pt)
#only("1-")[Nun, welche Zahl ergibt hoch 3 genommen 8? 🤔]
#v(20pt)
#only("2-")[Versuchen wir es mit 2: $2^3 = 2 * 2 * 2 = 8$ ✅]
#v(20pt)
#only("3-")[Daher ist $x = 2$, und die 3. Wurzel von 8 ist 2.]
#only("1")[#voiceover("Nun ist die Frage, welche Zahl ergibt hoch 3 genommen 8?")]
#only("2")[#voiceover("Versuchen wir es mit 2. 2 hoch 3 ist 2 mal 2 mal 2, was gleich 8 ist. Das funktioniert!")]
#only("3")[#voiceover("Daher ist x gleich 2, und die 3. Wurzel von 8 ist 2.")]
]