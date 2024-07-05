#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Großartige Arbeit! Du hast die Ableitung korrekt identifiziert. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir zu diesem Ergebnis kommen.")
  ]

  #text(size: 30pt, weight: "bold")[Ableitung von $f(x) = 9x^5$]
  #v(40pt)

  #only("2-")[
    - Gegebene Funktion: $f(x) = 9x^5$
  ]

  #only("3-")[
    - Anwenden der Konstantenregel
  ]

  #only("4-")[
    - Anwenden der Potenzregel
  ]

  #only("2")[
    #voiceover("Wir beginnen mit der gegebenen Funktion f von x gleich 9 mal x hoch 5.")
  ]

  #only("3")[
    #voiceover("Um die Ableitung zu finden, wenden wir die Konstantenregel an. Diese Regel besagt, dass die Ableitung eines konstanten Vielfachen einer Funktion gleich dem konstanten Vielfachen der Ableitung der Funktion ist.")
  ]

  #only("4")[
    #voiceover("Dann verwenden wir die Potenzregel, um x hoch 5 zu differenzieren.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
  #v(40pt)

  #only("1-")[
    $f(x) = 9x^5$
  ]

  #only("2-")[
    #align(center)[#text(fill:aqua)[⇓ Konstantenregel]]
  ]
  #v(10pt)

  #only("3-")[
    $f'(x) = 9 dot (x^5)'$
  ]

  #only("4-")[
    #align(center)[#text(fill:aqua)[⇓ Potenzregel]]
  ]
  #v(10pt)

  #only("5-")[
    $f'(x) = 9 dot 5x^4$
  ]

  #only("6-")[
    #align(center)[#text(fill:aqua)[⇓ Vereinfachen]]
  ]
  #v(10pt)

  #only("7-")[
    $f'(x) = 45x^4$
  ]

  #only("1")[
    #voiceover("Lass uns mit unserer Funktion f von x gleich 9 mal x hoch 5 beginnen.")
  ]

  #only("2")[
    #voiceover("Zuerst wenden wir die Konstantenregel an.")
  ]

  #only("3")[
    #voiceover("Dies ergibt f Strich von x gleich 9 mal die Ableitung von x hoch 5.")
  ]

  #only("4")[
    #voiceover("Nun wenden wir die Potenzregel auf x hoch 5 an.")
  ]

  #only("5")[
    #voiceover("Die Potenzregel besagt, dass die Ableitung von x hoch n gleich n mal x hoch n minus 1 ist. Also ist die Ableitung von x hoch 5 gleich 5 mal x hoch 4.")
  ]

  #only("6")[
    #voiceover("Schließlich vereinfachen wir unseren Ausdruck.")
  ]

  #only("7")[
    #voiceover("Dies ergibt unser Endergebnis: f Strich von x gleich 45 mal x hoch 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
  #v(40pt)

  #only("1-")[
    - Konstantenregel: $(c f(x))' = c dot f'(x)$
  ]

  #only("2-")[
    - Potenzregel: $(x^n)' = n dot x^(n-1)$
  ]

  #only("3-")[
    - Regeln für komplexe Funktionen kombinieren
  ]

  #only("1")[
    #voiceover("Lass uns die wichtigsten Punkte zusammenfassen. Erstens besagt die Konstantenregel, dass die Ableitung eines konstanten c mal einer Funktion f von x gleich c mal die Ableitung von f von x ist.")
  ]

  #only("2")[
    #voiceover("Zweitens besagt die Potenzregel, dass die Ableitung von x hoch n gleich n mal x hoch n minus 1 ist.")
  ]

  #only("3")[
    #voiceover("Schließlich denke daran, dass wir diese Regeln oft kombinieren müssen, wenn wir komplexere Funktionen differenzieren. Übe das Anwenden dieser Regeln, und du wirst sicherer im Berechnen von Ableitungen!")
  ]
]