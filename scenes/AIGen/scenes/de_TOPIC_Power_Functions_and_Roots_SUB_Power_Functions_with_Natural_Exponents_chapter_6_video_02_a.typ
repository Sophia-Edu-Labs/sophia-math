#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Integral von $f(x) = x^2$]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie grün, weil sie korrekt ist.
#only("-1")[a) $(x^3)/3 + C$]#only("2-")[#text(fill:green)[a) $(x^3)/3 + C$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-2")[b) $(x^2)/2 + C$]#only("3-")[#text(fill:red)[b) $(x^2)/2 + C$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-3")[c) $(x^3)/2 + C$]#only("4-")[#text(fill:red)[c) $(x^3)/2 + C$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-4")[d) $(x^2)/3 + C$]#only("5-")[#text(fill:red)[d) $(x^2)/3 + C$]]
#v(40pt)

#only("1")[#voiceover("Das ist richtig, tolle Arbeit! Die korrekte Antwort ist...")]
#only("2")[#voiceover("a) $(x^3)/3 + C$. Lass uns im nächsten Slide sehen, warum.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[- Gegeben: $f(x) = x^2$]
#v(20pt)
#only("2-")[- Erinnerung: $integral x^n dif x = (x^(n+1))/(n+1) + C$ für $n != -1$]
#v(20pt)
#only("3-")[- Hier ist $n = 2$]
#v(20pt)
#only("4-")[- Also, $integral x^2 dif x = (x^(2+1))/(2+1) + C$]
#v(20pt)
#only("5-")[- Vereinfacht: $integral x^2 dif x = (x^3)/3 + C$ 🎉]

#only("1")[#voiceover("Wir haben die Funktion f von x gleich x Quadrat gegeben.")]
#only("2")[#voiceover("Um dies zu lösen, erinnern wir uns an die Potenzregel für Integrale: das Integral von x hoch n bezüglich x ist gleich x hoch n plus 1, geteilt durch n plus 1, plus eine Konstante C. Dies gilt für alle n ungleich minus 1.")]
#only("3")[#voiceover("In unserem Fall ist n gleich 2.")]
#only("4")[#voiceover("Also, wenn wir die Potenzregel anwenden, ist das Integral von x Quadrat bezüglich x gleich x hoch 2 plus 1, was 3 ist, geteilt durch 2 plus 1, was 3 ist, plus C.")]
#only("5")[#voiceover("Vereinfacht ergibt sich x hoch 3 geteilt durch 3, plus C. Und das ist unsere Antwort!")]
]