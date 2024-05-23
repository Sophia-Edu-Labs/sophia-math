#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Bild einer linearen Abbildung]
#v(40pt)
Das Bild einer linearen Abbildung $T$ ist die Menge aller Vektoren $w$, sodass:
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) $w = T(v)$ für ein $v$ in $V$]#only("2-")[#text(fill:green)[a) $w = T(v)$ für ein $v$ in $V$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) $w = v$ für ein $v$ in $V$]#only("3-")[#text(fill:red)[b) $w = v$ für ein $v$ in $V$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) $w = 0$]#only("4-")[#text(fill:red)[c) $w = 0$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $w = -T(v)$ für ein $v$ in $V$]#only("5-")[#text(fill:red)[d) $w = -T(v)$ für ein $v$ in $V$]]
#v(40pt)

#only("1")[#voiceover("Das ist nicht ganz richtig. Schauen wir uns die richtige Lösung an...")]
// Sehr kurz über a sprechen und warum es korrekt ist
#only("2")[#voiceover("a) $w = T(v)$ für ein $v$ in $V$. Das Bild einer linearen Abbildung $T$ ist tatsächlich die Menge aller Vektoren $w$, die durch Anwendung von $T$ auf einen Vektor $v$ im Definitionsbereich $V$ erhalten werden können.")]
// Sehr kurz über b sprechen und warum es falsch ist
#only("3")[#voiceover("b) $w = v$ für ein $v$ in $V$ ist falsch. Das würde bedeuten, dass das Bild dasselbe wie der Definitionsbereich ist, was für eine lineare Abbildung nicht unbedingt zutrifft.")]
// Sehr kurz über c sprechen und warum es falsch ist
#only("4")[#voiceover("c) $w = 0$ ist ebenfalls falsch. Während der Nullvektor Teil des Bildes sein könnte, ist er nicht das einzige Element. Das Bild kann viele andere Vektoren enthalten.")]
// Sehr kurz über d sprechen und warum es falsch ist
#only("5")[#voiceover("Und d) $w = -T(v)$ für ein $v$ in $V$ ist ebenfalls falsch. Das würde bedeuten, dass das Bild aus den Negativen der abgebildeten Vektoren besteht, was nicht der Definition des Bildes entspricht.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)

Betrachten wir ein Beispiel:

Angenommen, $T: RR^2 -> RR^2$ ist definiert durch $T(mat(x; y)) = mat(x + y; x - y)$.

#v(20pt)
#only("1-")[Was ist das Bild von $T$? 🤔]

#v(20pt)
#only("2-")[Sei $mat(a; b)$ ein beliebiger Vektor in $RR^2$. Wir müssen $mat(x; y)$ finden, sodass $T(mat(x; y)) = mat(a; b)$.]

#v(20pt)
#only("3-")[
$T(mat(x; y)) = mat(a; b)$
$mat(x + y; x - y) = mat(a; b)$
]

#only("1")[#voiceover("Betrachten wir ein Beispiel, um das Bild besser zu verstehen. Angenommen, $T$ ist eine lineare Abbildung von $RR^2$ nach $RR^2$ definiert durch $T$ des Vektors $x, y$ gleich dem Vektor $x plus y, x minus y$.")]
#only("2")[#voiceover("Um das Bild von $T$ zu finden, nehmen wir einen beliebigen Vektor $a, b$ in $RR^2$. Wir müssen einen Vektor $x, y$ finden, sodass $T$ von $x, y$ gleich $a, b$ ist.")]
#only("3")[#voiceover("Das bedeutet, dass $x plus y, x minus y$ gleich $a, b$ sein muss.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel (fortgesetzt)]
#v(40pt)

#only("1-")[Lösen dieses Gleichungssystems:
- $x + y = a$
- $x - y = b$
]

#v(20pt)
#only("2-")[
Wir erhalten:
- $x = (a + b) / 2$
- $y = (a - b) / 2$
]

#v(20pt)
#only("3-")[Also für jedes $mat(a; b)$ in $RR^2$ gibt es ein $mat(x; y)$, sodass $T(mat(x; y)) = mat(a; b)$.]

#v(20pt)
#only("4-")[Daher ist das Bild von $T$ das gesamte $RR^2$. 🌍]

#only("1")[#voiceover("Wir können dieses Gleichungssystem lösen. Die erste Gleichung ist $x plus y gleich a$, und die zweite Gleichung ist $x minus y gleich b$.")]
#only("2")[#voiceover("Lösen wir dies, erhalten wir $x gleich a plus b durch 2$, und $y gleich a minus b durch 2$.")]
#only("3")[#voiceover("Dies zeigt, dass wir für jeden Vektor $a, b$ in $RR^2$ einen Vektor $x, y$ finden können, sodass $T$ von $x, y$ gleich $a, b$ ist.")]
#only("4")[#voiceover("Daher ist das Bild von $T$ das gesamte $RR^2$. Jeder Vektor in $RR^2$ ist im Bild von $T$.")]
]