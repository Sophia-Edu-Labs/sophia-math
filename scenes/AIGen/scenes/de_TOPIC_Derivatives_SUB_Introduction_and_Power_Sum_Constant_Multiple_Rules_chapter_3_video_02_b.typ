#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Ableitung von $5x^2$]
#v(40pt)

Welche der folgenden ist die Ableitung von $5x^2$?

#v(20pt)
#only("-1")[a) $10x$]#only("2-")[#text(fill:green)[a) $10x$]]
#v(10pt)
#only("-2")[b) $5x$]#only("3-")[#text(fill:red)[b) $5x$]]
#v(10pt)
#only("-3")[c) $5x^2$]#only("4-")[#text(fill:red)[c) $5x^2$]]
#v(10pt)
#only("-4")[d) $10$]#only("5-")[#text(fill:red)[d) $10$]]

#only("1")[#voiceover("Das war leider nicht korrekt. Lass uns die richtige Lösung überprüfen und verstehen, warum a) 10x die richtige Antwort ist und warum die anderen nicht.")]

#only("2")[#voiceover("a) 10x ist tatsächlich die korrekte Ableitung von 5x Quadrat. Wir erklären gleich, warum.")]

#only("3")[#voiceover("b) 5x ist falsch. Diese Antwort berücksichtigt nicht die Potenzregel der Differentiation.")]

#only("4")[#voiceover("c) 5x Quadrat ist falsch. Dies ist eigentlich die ursprüngliche Funktion, nicht ihre Ableitung.")]

#only("5")[#voiceover("d) 10 ist falsch. Die Ableitung von 5x Quadrat ist keine Konstante.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Konstante Vielfache Regel]
#v(20pt)

#only("1-")[Die Konstante Vielfache Regel besagt:]
#v(10pt)
#only("2-")[$ dif/"dx" (c f(x)) = c dif/"dx" (f(x)) $]
#v(10pt)
#only("3-")[wobei $c$ eine Konstante ist und $f(x)$ eine Funktion ist.]

#only("1")[#voiceover("Um zu verstehen, warum 10x die richtige Antwort ist, erinnern wir uns zunächst an die Konstante Vielfache Regel für Ableitungen.")]

#only("2")[#voiceover("Die Konstante Vielfache Regel besagt, dass die Ableitung eines konstanten Vielfachen einer Funktion gleich dem konstanten Vielfachen der Ableitung der Funktion ist.")]

#only("3")[#voiceover("In dieser Regel stellt c eine Konstante dar, und f von x stellt eine Funktion dar.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Anwendung der Regel]
#v(20pt)

#only("1-")[Für $5x^2$:]
#v(10pt)
#only("2-")[1. Identifizieren: $c = 5$, $f(x) = x^2$]
#v(10pt)
#only("3-")[2. Finde $dif/"dx" (x^2)$:]
#v(10pt)
#only("4-")[   $dif/"dx" (x^2) = 2x$]
#v(10pt)
#only("5-")[3. Anwenden der Regel:]
#v(10pt)
#only("6-")[   $dif/"dx" (5x^2) = 5 dot dif/"dx" (x^2) = 5 dot 2x = 10x$]

#only("1")[#voiceover("Nun lass uns diese Regel auf unser Problem anwenden, die Ableitung von 5x Quadrat zu finden.")]

#only("2")[#voiceover("Zuerst identifizieren wir, dass 5 unsere Konstante c ist und x Quadrat unsere Funktion f von x ist.")]

#only("3")[#voiceover("Als nächstes müssen wir die Ableitung von x Quadrat finden.")]

#only("4")[#voiceover("Mit der Potenzregel wissen wir, dass die Ableitung von x Quadrat 2x ist.")]

#only("5")[#voiceover("Jetzt können wir die Konstante Vielfache Regel anwenden.")]

#only("6")[#voiceover("Die Ableitung von 5x Quadrat ist gleich 5 mal die Ableitung von x Quadrat. Das ist 5 mal 2x, was uns 10x ergibt.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(20pt)

#only("1-")[Daher, $dif/"dx" (5x^2) = 10x$ ✅]
#v(20pt)
#only("2-")[Warum andere Optionen falsch sind:]
#v(10pt)
#only("3-")[- $5x$: Vergessen, mit der Potenz zu multiplizieren ❌]
#v(10pt)
#only("4-")[- $5x^2$: Keine Differentiation angewendet ❌]
#v(10pt)
#only("5-")[- $10$: Ergebnis ist keine Konstante ❌]

#only("1")[#voiceover("Wir können also schließen, dass die Ableitung von 5x Quadrat tatsächlich 10x ist.")]

#only("2")[#voiceover("Lass uns kurz zusammenfassen, warum die anderen Optionen falsch waren.")]

#only("3")[#voiceover("5x ist falsch, weil es nur die Konstante 5 berücksichtigt, aber vergisst, mit der Potenz von x zu multiplizieren, die 2 ist.")]

#only("4")[#voiceover("5x Quadrat ist einfach die ursprüngliche Funktion. Hier wurde keine Differentiation angewendet.")]

#only("5")[#voiceover("Und 10 ist falsch, weil die Ableitung einer quadratischen Funktion wie 5x Quadrat eine lineare Funktion ist, keine Konstante.")]
]