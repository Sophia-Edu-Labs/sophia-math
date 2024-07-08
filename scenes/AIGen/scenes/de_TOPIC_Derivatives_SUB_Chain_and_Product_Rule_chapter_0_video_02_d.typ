#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Kettenregel]
#v(40pt)
Die Kettenregel wird verwendet, um welche Art von Funktionen zu differenzieren?
#v(20pt)
#only("-1")[a) Polynomfunktionen]#only("2-")[#text(fill:red)[a) Polynomfunktionen]]
#v(10pt)
#only("-2")[b) Zusammengesetzte Funktionen]#only("3-")[#text(fill:green)[b) Zusammengesetzte Funktionen]]
#v(10pt)
#only("-3")[c) Trigonometrische Funktionen]#only("4-")[#text(fill:red)[c) Trigonometrische Funktionen]]
#v(10pt)
#only("-4")[d) Exponentialfunktionen]#only("5-")[#text(fill:red)[d) Exponentialfunktionen]]

#only("1")[#voiceover("Leider war das nicht korrekt. Lass uns jede Option durchgehen, um zu verstehen, warum.")]
#only("2")[#voiceover("a) Polynomfunktionen ist falsch. Obwohl wir die Kettenregel bei einigen Polynomfunktionen anwenden können, ist sie nicht speziell für sie gedacht. Wir verwenden typischerweise die Potenzregel für Polynome.")]
#only("3")[#voiceover("b) Zusammengesetzte Funktionen ist richtig! Die Kettenregel ist speziell dafür gedacht, zusammengesetzte Funktionen zu differenzieren, also Funktionen von Funktionen.")]
#only("4")[#voiceover("c) Trigonometrische Funktionen ist falsch. Obwohl wir die Kettenregel bei trigonometrischen Funktionen anwenden können, ist sie nicht ausschließlich für sie gedacht. Es gibt spezielle Regeln zur Differenzierung von trigonometrischen Funktionen.")]
#only("5")[#voiceover("d) Exponentialfunktionen ist ebenfalls falsch. Wie bei trigonometrischen Funktionen können wir die Kettenregel bei Exponentialfunktionen anwenden, aber sie ist nicht speziell für sie gedacht. Es gibt separate Regeln zur Differenzierung von Exponentialfunktionen.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammengesetzte Funktionen]
#v(20pt)
#only("1-")[Eine zusammengesetzte Funktion ist eine Funktion von einer Funktion, wie:
#v(10pt)
$f(g(x))$ oder $(f circle g)(x)$]
#v(20pt)
#only("2-")[Beispiel: $f(x) = (x^2 + 1)^3$]
#v(20pt)
#only("3-")[Hier ist $g(x) = x^2 + 1$ und $f(x) = x^3$]

#only("1")[#voiceover("Nun, lass uns tiefer in zusammengesetzte Funktionen eintauchen, die das Herz der Kettenregel sind.")]
#only("2")[#voiceover("Eine zusammengesetzte Funktion ist eine Funktion von einer Funktion. Wir schreiben sie als f von g von x, oder f Kreis g von x. Schauen wir uns ein Beispiel an.")]
#only("3")[#voiceover("Betrachte die Funktion f von x gleich die Menge x Quadrat plus 1, alles hoch drei. Dies ist eine zusammengesetzte Funktion, weil wir sie in zwei Funktionen zerlegen können: g von x gleich x Quadrat plus 1 und f von x gleich x hoch drei.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Kettenregel]
#v(20pt)
#only("1-")[Für $y = f(g(x))$ besagt die Kettenregel:
#v(10pt)
$dif y / dif x = dif f / dif g dot dif g / dif x$]
#v(20pt)
#only("2-")[Für unser Beispiel $f(x) = (x^2 + 1)^3$:
#v(10pt)
$dif f / dif x = 3(x^2 + 1)^2 dot 2x$]

#only("1")[#voiceover("Die Kettenregel gibt uns eine Möglichkeit, zusammengesetzte Funktionen zu differenzieren. Sie besagt, dass für y gleich f von g von x, die Ableitung von y nach x gleich der Ableitung von f nach g multipliziert mit der Ableitung von g nach x ist.")]
#only("2")[#voiceover("Wenden wir dies auf unser Beispiel an. Für f von x gleich die Menge x Quadrat plus 1, alles hoch drei, ist die Ableitung 3 mal die Menge x Quadrat plus 1 zum Quadrat, multipliziert mit 2x. Dies ergibt sich aus der Anwendung der Kettenregel: Wir differenzieren die äußere Funktion und multiplizieren mit der Ableitung der inneren Funktion.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Warum Kettenregel?]
#v(20pt)
#only("1-")[🔗 Zerlegt komplexe Funktionen in einfachere Teile]
#v(10pt)
#only("2-")[🧩 Ermöglicht uns, verschachtelte Funktionen zu differenzieren]
#v(10pt)
#only("3-")[🔄 Wesentlich für viele Anwendungen in der Praxis]

#only("1")[#voiceover("Die Kettenregel ist entscheidend, weil sie uns ermöglicht, komplexe Funktionen in einfachere Teile zu zerlegen.")]
#only("2")[#voiceover("Sie gibt uns die Fähigkeit, verschachtelte Funktionen zu differenzieren, die häufig in der höheren Mathematik und in der Praxis vorkommen.")]
#only("3")[#voiceover("Von der Physik bis zur Wirtschaft werden viele Phänomene der realen Welt mit zusammengesetzten Funktionen modelliert, was die Kettenregel zu einem wesentlichen Werkzeug in verschiedenen Bereichen macht.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(20pt)
#only("1-")[✅ Die Kettenregel ist für zusammengesetzte Funktionen]
#v(10pt)
#only("2-")[🔑 Schlüssel zur Differenzierung komplexer Funktionen]
#v(10pt)
#only("3-")[🌟 Wichtig in der höheren Mathematik und in Anwendungen]

#only("1")[#voiceover("Zusammenfassend, denke daran, dass die Kettenregel speziell zur Differenzierung von zusammengesetzten Funktionen verwendet wird.")]
#only("2")[#voiceover("Sie ist ein Schlüsselwerkzeug, das es uns ermöglicht, komplexere Funktionen zu bewältigen, indem wir sie in einfachere Teile zerlegen.")]
#only("3")[#voiceover("Das Verständnis und die Anwendung der Kettenregel ist entscheidend, wenn Du in der Mathematik weiter fortschreitest und ihre Anwendungen in verschiedenen Bereichen erkundest. Großartige Arbeit beim Erkennen dieses wichtigen Konzepts!")]
]