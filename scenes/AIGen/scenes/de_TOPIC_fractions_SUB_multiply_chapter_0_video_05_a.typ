#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche mit ganzen Zahlen multiplizieren]
  #v(40pt)

  #only("1-")[Multipliziere 6 mit 5/6:]
  #v(20pt)

  #only("-1")[a) 5/6]#only("2-")[#text(fill:red)[a) 5/6]]
  #v(10pt)
  #only("-2")[b) 10/6]#only("3-")[#text(fill:red)[b) 10/6]]
  #v(10pt)
  #only("-3")[c) 15/6]#only("4-")[#text(fill:red)[c) 15/6]]
  #v(10pt)
  #only("-4")[d) 30/6]#only("5-")[#text(fill:green)[d) 30/6]]

  #only("1")[#voiceover("Großartig! Du hast es richtig gemacht. Lass uns jede Option durchgehen, um zu verstehen, warum d) 30/6 die richtige Antwort ist.")]

  #only("2")[#voiceover("Option a) 5/6 ist falsch. Dies ist einfach der Bruch, den wir multiplizieren, nicht das Ergebnis der Multiplikation.")]

  #only("3")[#voiceover("Option b) 10/6 ist ebenfalls falsch. Dies wäre das Ergebnis, wenn wir 6 mit 5/3 multipliziert hätten, nicht mit 5/6.")]

  #only("4")[#voiceover("Option c) 15/6 ist auch falsch. Dies wäre das Ergebnis, wenn wir 3 mit 5/6 multipliziert hätten, nicht 6 mit 5/6.")]

  #only("5")[#voiceover("Die richtige Antwort ist d) 30/6. Lass uns auf der nächsten Folie sehen, warum.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Lösung: 6 mal 5/6]
  #v(40pt)

  #only("1-")[Schritt 1: Multipliziere die ganze Zahl mit dem Zähler]
  #v(20pt)
  #only("2-")[$6 mal 5/6 = (6 mal 5)/6$]
  #v(20pt)
  #only("3-")[Schritt 2: Vereinfache]
  #v(20pt)
  #only("4-")[$= 30/6$]

  #only("1")[#voiceover("Lass uns das Schritt für Schritt lösen. Beim Multiplizieren einer ganzen Zahl mit einem Bruch können wir einer einfachen Regel folgen.")]

  #only("2")[#voiceover("Schritt 1: Wir multiplizieren die ganze Zahl mit dem Zähler des Bruchs. In diesem Fall multiplizieren wir 6 mit 5 und behalten den Nenner bei.")]

  #only("3")[#voiceover("Schritt 2: Jetzt müssen wir nur noch unser Ergebnis vereinfachen.")]

  #only("4")[#voiceover("Wir erhalten 30/6, was unser endgültiges Ergebnis ist. Dieser Bruch kann weiter vereinfacht werden zu 5, aber das war in der Frage nicht verlangt.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Allgemeine Regel]
  #v(40pt)

  #only("1-")[Für jede ganze Zahl $n$ und jeden Bruch $a/b$:]
  #v(20pt)
  #only("2-")[$n mal a/b = (n mal a)/b$]
  #v(40pt)
  #only("3-")[Beispiel: $6 mal 5/6 = (6 mal 5)/6 = 30/6$]

  #only("1")[#voiceover("Lass uns das Gelernte in eine Regel verallgemeinern.")]

  #only("2")[#voiceover("Für jede ganze Zahl n und jeden Bruch a über b, wenn wir sie multiplizieren, erhalten wir n mal a über b. Mit anderen Worten, wir multiplizieren die ganze Zahl mit dem Zähler und behalten den Nenner bei.")]

  #only("3")[#voiceover("Unser Beispiel passt perfekt zu dieser Regel. 6 mal 5/6 ergibt 6 mal 5 über 6, was uns 30/6 gibt. Diese Regel macht das Multiplizieren von ganzen Zahlen mit Brüchen viel einfacher!")]
]