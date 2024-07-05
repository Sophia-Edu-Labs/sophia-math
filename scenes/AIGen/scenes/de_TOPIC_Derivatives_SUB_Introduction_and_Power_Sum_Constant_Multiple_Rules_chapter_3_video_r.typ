#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Regel für konstante Vielfache 📏]
  #v(40pt)
  #only("1-")[- Erinnerung: Ableitungen messen die Änderungsrate 📈]
  #only("2-")[- Die Regel für konstante Vielfache vereinfacht Berechnungen 🧮]
  #only("3-")[- Lass uns diese wichtige Regel überprüfen 🔍]

  #only("1")[
    #voiceover("Lass uns die Regel für konstante Vielfache bei Ableitungen überprüfen. Wie wir wissen, sind Ableitungen essenziell, um Änderungsraten in verschiedenen Funktionen zu messen.")
  ]
  #only("2")[
    #voiceover("Die Regel für konstante Vielfache ist ein mächtiges Werkzeug, das unsere Berechnungen vereinfacht, wenn wir es mit Funktionen zu tun haben, die mit Konstanten multipliziert sind.")
  ]
  #only("3")[
    #voiceover("Lass uns diese wichtige Regel genauer betrachten und sehen, wie sie funktioniert.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Regel für konstante Vielfache]
  #v(40pt)
  #only("1-")[Regel: $dif/"dx" (c f(x)) = c dif/"dx" (f(x))$]
  #v(20pt)
  #only("2-")[Wo:]
  #only("3-")[- $c$ ist eine Konstante]
  #only("4-")[- $f(x)$ ist eine Funktion von $x$]

  #only("1")[
    #voiceover("Die Regel für konstante Vielfache besagt, dass die Ableitung eines konstanten Vielfachen einer Funktion gleich dem konstanten Vielfachen der Ableitung der Funktion ist.")
  ]
  #only("2")[
    #voiceover("Lass uns das aufschlüsseln:")
  ]
  #only("3")[
    #voiceover("c ist eine Konstante, was bedeutet, dass sie sich nicht ändert, wenn sich x ändert.")
  ]
  #only("4")[
    #voiceover("f von x ist jede Funktion von x, die wir ableiten möchten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Beispielanwendung 🌟]
  #v(40pt)
  #only("1-")[Lass uns ableiten: $y = 5x^2$]
  #v(20pt)
  #only("2-")[Schritt 1: Identifiziere $c$ und $f(x)$]
  #only("3-")[$c = 5$, $f(x) = x^2$]
  #v(20pt)
  #only("4-")[Schritt 2: Wende die Regel an]
  #only("5-")[$dif/"dx" (5x^2) = 5 dif/"dx" (x^2)$]
  #v(20pt)
  #only("6-")[Schritt 3: Leite $f(x)$ ab]
  #only("7-")[$= 5 (2x) = 10x$]

  #only("1")[
    #voiceover("Lass uns diese Regel an einem Beispiel anwenden. Angenommen, wir möchten y gleich 5 x Quadrat ableiten.")
  ]
  #only("2")[
    #voiceover("Zuerst identifizieren wir die Konstante und die Funktion.")
  ]
  #only("3")[
    #voiceover("Hier ist c gleich 5 und f von x ist x Quadrat.")
  ]
  #only("4")[
    #voiceover("Nun wenden wir die Regel für konstante Vielfache an.")
  ]
  #only("5")[
    #voiceover("Die Ableitung von 5 x Quadrat ist gleich 5 mal die Ableitung von x Quadrat.")
  ]
  #only("6")[
    #voiceover("Wir wissen, dass die Ableitung von x Quadrat 2x ist.")
  ]
  #only("7")[
    #voiceover("Also ist unsere endgültige Antwort 5 mal 2x, was 10x ergibt.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Regel für konstante Vielfache: $dif/"dx" (c f(x)) = c dif/"dx" (f(x))$]
  #only("2-")[- Vereinfacht Ableitungen mit konstanten Faktoren]
  #only("3-")[- Denke daran: $c$ ist konstant, $f(x)$ ist eine Funktion]
  #only("4-")[- Nützlich in verschiedenen Anwendungen 🚀]

  #only("1")[
    #voiceover("Zusammenfassend besagt die Regel für konstante Vielfache, dass die Ableitung eines konstanten Vielfachen einer Funktion gleich dem konstanten Vielfachen der Ableitung der Funktion ist.")
  ]
  #only("2")[
    #voiceover("Diese Regel vereinfacht unsere Berechnungen erheblich, wenn wir es mit Funktionen zu tun haben, die konstante Faktoren enthalten.")
  ]
  #only("3")[
    #voiceover("Denke immer daran, dass c eine Konstante sein muss, während f von x jede differenzierbare Funktion sein kann.")
  ]
  #only("4")[
    #voiceover("Diese Regel ist in verschiedenen Anwendungen unglaublich nützlich, von der Physik bis zur Wirtschaft, überall dort, wo wir Änderungsraten finden müssen.")
  ]
]