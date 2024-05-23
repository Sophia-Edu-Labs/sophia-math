#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Umkehrfunktionen]
#v(40pt)
Wenn $f(x)$ und $g(x)$ Umkehrfunktionen sind, was ist dann über ihre Definitions- und Wertebereiche wahr?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Sie sind gleich]#only("2-")[#text(fill:red)[a) Sie sind gleich]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-2")[b) Sie sind vertauscht]#only("3-")[#text(fill:green)[b) Sie sind vertauscht]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Sie sind komplementär]#only("4-")[#text(fill:red)[c) Sie sind komplementär]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Sie sind nicht verwandt]#only("5-")[#text(fill:red)[d) Sie sind nicht verwandt]]
#only("1")[#voiceover("Das ist nicht korrekt. Schauen wir uns an, warum Option b die richtige Antwort ist.")]
#only("2")[#voiceover("Option a ist falsch. Die Definitions- und Wertebereiche von Umkehrfunktionen sind nicht gleich, sondern vertauscht.")]
#only("3")[#voiceover("Option b ist korrekt. Wenn zwei Funktionen Umkehrfunktionen sind, sind ihre Definitions- und Wertebereiche tatsächlich vertauscht.")]
#only("4")[#voiceover("Option c ist falsch. Komplementäre Mengen sind zwei Mengen, deren Vereinigung die Universalmengen bildet. Dies ist nicht die Beziehung zwischen den Definitions- und Wertebereichen von Umkehrfunktionen.")]
#only("5")[#voiceover("Option d ist ebenfalls falsch. Die Definitions- und Wertebereiche von Umkehrfunktionen sind sehr wohl verwandt, da sie vertauschte Versionen voneinander sind.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Schritt 1: Verstehen Sie das Konzept der Umkehrfunktionen 🔄]
#v(20pt)
#only("2-")[- Wenn $f(x)$ und $g(x)$ Umkehrfunktionen sind, dann gilt $f(g(x)) = x$ und $g(f(x)) = x$]
#v(40pt)
#only("3-")[Schritt 2: Betrachten Sie die Auswirkungen auf Definitions- und Wertebereiche 🤔]
#v(20pt)
#only("4-")[- Damit $f(g(x))$ gleich $x$ ist, muss der Wertebereich von $g$ eine Teilmenge des Definitionsbereichs von $f$ sein]
#only("1")[#voiceover("Gehen wir das Schritt für Schritt durch.")]
#only("2")[#voiceover("Erinnern Sie sich zunächst daran, dass wenn f von x und g von x Umkehrfunktionen sind, dann gilt f von g von x gleich x und g von f von x ebenfalls gleich x.")]
#only("3")[#voiceover("Denken wir nun darüber nach, was dies für die Definitions- und Wertebereiche von f und g bedeutet.")]
#only("4")[#voiceover("Damit f von g von x gleich x ist, muss die Ausgabe von g, also der Wertebereich von g, eine gültige Eingabe für f sein, also der Definitionsbereich von f.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[- Ebenso muss für $g(f(x))$ gleich $x$ der Wertebereich von $f$ eine Teilmenge des Definitionsbereichs von $g$ sein]
#v(40pt)
#only("2-")[Schritt 3: Schlussfolgern, dass Definitions- und Wertebereiche vertauscht sind ✅]
#v(20pt)
#only("3-")[- Der Definitionsbereich von $f$ entspricht dem Wertebereich von $g$ und umgekehrt]
#only("1")[#voiceover("Ebenso muss für g von f von x gleich x die Ausgabe von f, also der Wertebereich von f, eine gültige Eingabe für g sein, also der Definitionsbereich von g.")]
#only("2")[#voiceover("Aus diesen Beobachtungen können wir schließen, dass die Definitions- und Wertebereiche von Umkehrfunktionen vertauscht sind.")]
#only("3")[#voiceover("Mit anderen Worten, der Definitionsbereich von f entspricht dem Wertebereich von g und der Wertebereich von f entspricht dem Definitionsbereich von g.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visuelles Beispiel]
#v(40pt)
Lassen Sie uns dies mit einem Beispiel veranschaulichen:
#v(20pt)
#only("1-")[Betrachten Sie $f(x) = x^2$ und $g(x) = sqrt(x)$]
#v(20pt)
#only("2-")[- Definitionsbereich von $f$: $(-unendlich, unendlich)$, Wertebereich von $f$: $[0, unendlich)$]
#v(20pt)
#only("3-")[- Definitionsbereich von $g$: $[0, unendlich)$, Wertebereich von $g$: $[0, unendlich)$]
#v(20pt)
#only("4-")[Beachten Sie, wie der Definitionsbereich von $f$ dem Wertebereich von $g$ entspricht und der Wertebereich von $f$ dem Definitionsbereich von $g$ 🎯]
#only("1")[#voiceover("Schauen wir uns ein konkretes Beispiel an, um dieses Konzept zu veranschaulichen.")]
#only("2")[#voiceover("Betrachten Sie die Funktionen f von x gleich x Quadrat und g von x gleich die Quadratwurzel von x. Der Definitionsbereich von f sind alle reellen Zahlen, während sein Wertebereich alle nicht-negativen reellen Zahlen umfasst.")]
#only("3")[#voiceover("Andererseits ist der Definitionsbereich von g alle nicht-negativen reellen Zahlen und sein Wertebereich ebenfalls alle nicht-negativen reellen Zahlen.")]
#only("4")[#voiceover("Beachten Sie, wie der Definitionsbereich von f dem Wertebereich von g entspricht und der Wertebereich von f dem Definitionsbereich von g. Dies ist genau das, was wir von Umkehrfunktionen erwarten.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Umkehrfunktionen haben vertauschte Definitions- und Wertebereiche 🔀]
#v(20pt)
#only("2-")[- Dies ist eine Folge der Definition von Umkehrfunktionen 📚]
#v(20pt)
#only("3-")[- Das Verständnis dieses Konzepts ist entscheidend für die Arbeit mit Umkehrfunktionen 🧠]
#only("1")[#voiceover("Zusammenfassend ist die wichtigste Erkenntnis, dass Umkehrfunktionen vertauschte Definitions- und Wertebereiche haben.")]
#only("2")[#voiceover("Dies ist eine direkte Folge der Definition von Umkehrfunktionen, die besagt, dass die Zusammensetzung einer Funktion mit ihrer Umkehrfunktion die Identitätsfunktion ergibt.")]
#only("3")[#voiceover("Das Verständnis dieses Vertauschens von Definitions- und Wertebereichen ist entscheidend für die korrekte Arbeit mit Umkehrfunktionen in verschiedenen mathematischen Kontexten.")]
]