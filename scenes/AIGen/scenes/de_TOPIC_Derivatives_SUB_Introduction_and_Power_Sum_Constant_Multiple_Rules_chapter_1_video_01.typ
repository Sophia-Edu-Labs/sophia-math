#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzregel für Ableitungen]
  #v(40pt)
  
  #only("1-")[📚 Analysis: Bestimmung von Änderungsraten]
  #v(20pt)
  #only("2-")[🔍 Fokus: $ f(x) = x^n $]
  #v(20pt)
  #only("3-")[❓ Frage: Wie findet man $ f'(x) $?]
  #v(20pt)
  #only("4-")[🧠 Potenzregel: Eine Abkürzung!]

  #only("1")[
    #voiceover("Willkommen zu unserer Erkundung der Potenzregel für Ableitungen! In der Analysis müssen wir oft Änderungsraten bestimmen, und genau dafür sind Ableitungen da.")
  ]
  #only("2")[
    #voiceover("Heute konzentrieren wir uns auf eine spezielle Art von Funktion: f von x gleich x hoch n, wobei n eine beliebige reelle Zahl ist.")
  ]
  #only("3")[
    #voiceover("Unsere Frage ist: Wie findet man die Ableitung dieser Funktion? Mit anderen Worten, wie berechnet man f Strich von x?")
  ]
  #only("4")[
    #voiceover("Die Potenzregel bietet uns eine Abkürzung, um diese Frage zu beantworten. Lass uns eintauchen und sehen, wie sie funktioniert!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Potenzregel]
  #v(40pt)
  
  #only("1-")[📐 Regel: Wenn $ f(x) = x^n $, dann $ f'(x) = n x^(n-1) $]
  #v(20pt)
  #only("2-")[🔢 Schritte:
    1. Nimm den Exponenten (n)
    2. Multipliziere ihn mit $ x^(n-1) $]
  #v(20pt)
  #only("3-")[✨ Ergebnis: Neue Funktion mit reduzierter Potenz]

  #only("1")[
    #voiceover("Hier ist die Potenzregel: Wenn f von x gleich x hoch n ist, dann ist f Strich von x gleich n mal x hoch n minus 1.")
  ]
  #only("2")[
    #voiceover("Um diese Regel anzuwenden, folgen wir zwei einfachen Schritten. Zuerst nehmen wir den Exponenten n. Dann multiplizieren wir ihn mit x hoch n minus 1.")
  ]
  #only("3")[
    #voiceover("Das Ergebnis ist eine neue Funktion, bei der die Potenz um 1 reduziert wurde. Diese elegante Regel vereinfacht den Prozess der Ableitungsfindung für Potenzfunktionen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Beispiel und Zusammenfassung]
  #v(40pt)
  
  #only("1-")[📝 Beispiel: $ f(x) = x^3 $]
  #v(20pt)
  #only("2-")[🧮 Potenzregel anwenden:
    $ f'(x) = 3 x^(3-1) = 3x^2 $]
  #v(20pt)
  #only("3-")[🔑 Wichtige Punkte:
    - Exponent wird zum Koeffizienten
    - Potenz reduziert sich um 1]

  #only("1")[
    #voiceover("Schauen wir uns ein Beispiel an, um unser Verständnis zu festigen. Betrachte die Funktion f von x gleich x hoch 3.")
  ]
  #only("2")[
    #voiceover("Wenden wir die Potenzregel an, erhalten wir: f Strich von x gleich 3 mal x hoch 3 minus 1, was sich zu 3 x quadrat vereinfacht.")
  ]
  #only("3")[
    #voiceover("Zusammenfassend besagt die Potenzregel, dass die Ableitung von x hoch n gleich n mal x hoch n minus 1 ist. Der Exponent wird zum Koeffizienten und die Potenz reduziert sich um 1. Diese mächtige Regel vereinfacht die Differentiation für eine Vielzahl von Funktionen!")
  ]
]