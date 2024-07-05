#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzregel für Ableitungen]
  #v(40pt)

  #only("1-")[Übung: Finde die Ableitung von $f(x) = 5x^4$]
  
  #only("1")[
    #voiceover("Großartige Arbeit! Du hast die Ableitung korrekt identifiziert. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir zu diesem Ergebnis gekommen sind.")
  ]

  #only("2-")[Lösung: $f'(x) = 20x^3$]

  #only("2")[
    #voiceover("Die Ableitung von f von x ist gleich zwanzig x hoch drei. Lass uns aufschlüsseln, wie wir zu dieser Antwort gekommen sind.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Potenzregel]
  #v(40pt)

  #only("1-")[Potenzregel: Wenn $f(x) = x^n$, dann $f'(x) = n dot x^(n-1)$]

  #only("1")[
    #voiceover("Wir werden die Potenzregel verwenden, um dies zu lösen. Die Potenzregel besagt, dass wenn f von x gleich x hoch n ist, dann ist die Ableitung, f Strich von x, gleich n mal x hoch n minus 1.")
  ]

  #only("2-")[Für $f(x) = 5x^4$:]
  #only("3-")[1. Bestimme $n$: Hier ist $n = 4$]
  #only("4-")[2. Multipliziere mit $n$: $4 dot 5 = 20$]
  #only("5-")[3. Verringere die Potenz um 1: $x^(4-1) = x^3$]

  #only("2")[
    #voiceover("Lass uns dies auf unsere Funktion anwenden, f von x ist gleich fünf x hoch vier.")
  ]

  #only("3")[
    #voiceover("Zuerst bestimmen wir n, das ist die Potenz von x. Hier ist n gleich 4.")
  ]

  #only("4")[
    #voiceover("Als nächstes multiplizieren wir den Koeffizienten mit n. Das ist 4 mal 5, was gleich 20 ist.")
  ]

  #only("5")[
    #voiceover("Schließlich verringern wir die Potenz von x um 1. Also wird aus x hoch vier x hoch drei.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endergebnis]
  #v(40pt)

  #only("1-")[$ f'(x) = 20x^3 $]

  #only("1")[
    #voiceover("Alles zusammen ergibt f Strich von x gleich zwanzig x hoch drei.")
  ]

  #only("2-")[Wichtige Punkte:
  - Koeffizient: $20 = 4 dot 5$
  - Potenz: $3 = 4 - 1$]

  #only("2")[
    #voiceover("Lass uns zwei wichtige Punkte hervorheben. Erstens, der Koeffizient 20 ergibt sich aus der Multiplikation des ursprünglichen Koeffizienten 5 mit der Potenz 4. Zweitens, die neue Potenz 3 ist eins weniger als die ursprüngliche Potenz 4.")
  ]

  #only("3")[
    #voiceover("Großartige Arbeit beim Beherrschen der Potenzregel! Diese Technik wird entscheidend sein, wenn wir in Zukunft komplexere Ableitungen untersuchen.")
  ]
]