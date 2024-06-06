#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Potenzregel]
#v(40pt)
#only("1-")[Was ist die Ableitung von $f(x) = x^3$?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie grün, weil sie korrekt ist.
#only("-1")[a) $3 x^2$]#only("2-")[#text(fill:green)[a) $3 x^2$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-2")[b) $2 x^3$]#only("3-")[#text(fill:red)[b) $2 x^3$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-3")[c) $x^3$]#only("4-")[#text(fill:red)[c) $x^3$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-4")[d) $3 x^3$]#only("5-")[#text(fill:red)[d) $3 x^3$]]
#v(40pt)

#only("1")[#voiceover("Großartig! Du hast die Ableitung von $f(x) = x^3$ richtig erkannt.")]
// Sehr kurz über a sprechen und warum es korrekt ist
#only("2")[#voiceover("a) $3 x^2$ ist tatsächlich die richtige Antwort. Lass uns sehen, warum...")]
// Sehr kurz über b sprechen und warum es falsch ist
#only("3")[#voiceover("b) $2 x^3$ ist falsch. Dies wäre das Ergebnis, wenn wir den Exponenten mit dem Koeffizienten multiplizieren würden, aber das ist nicht die Potenzregel.")]
// Sehr kurz über c sprechen und warum es falsch ist
#only("4")[#voiceover("c) $x^3$ ist ebenfalls falsch. Dies ist die ursprüngliche Funktion, nicht ihre Ableitung.")]
// Sehr kurz über d sprechen und warum es falsch ist
#only("5")[#voiceover("Und d) $3 x^3$ ist ebenfalls falsch. Dies wäre das Ergebnis, wenn wir die gesamte Funktion mit dem Exponenten multiplizieren würden, aber auch das ist nicht die Potenzregel.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Potenzregel]
#v(40pt)
#only("1-")[Für eine Funktion $f(x) = x^n$ ist die Ableitung:]
#v(20pt)
#only("2-")[- $f'(x) = n x^(n-1)$]
#v(40pt)
#only("3-")[In diesem Fall, mit $f(x) = x^3$:]
#v(20pt)
#only("4-")[- $n = 3$]
#v(20pt)
#only("5-")[Also, $f'(x) = 3 x^(3-1) = 3 x^2$ ✅]

#only("1")[#voiceover("Die Potenzregel besagt, dass für eine Funktion $f(x) = x^n$ die Ableitung...")]
#only("2")[#voiceover("$f'(x) = n x^(n-1)$ ist, wobei $n$ der Exponent ist.")]
#only("3")[#voiceover("In unserem Problem haben wir $f(x) = x^3$. Also...")]
#only("4")[#voiceover("$n = 3$.")]
#only("5")[#voiceover("Wenden wir die Potenzregel an, erhalten wir $f'(x) = 3 x^(3-1) = 3 x^2$, was die richtige Antwort ist, die Du gewählt hast. Großartige Arbeit!")]
]