#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[
  #text(size: 24pt, weight: "bold")[#align(center)[Wahrscheinlichkeit mit der Laplace-Formel bestimmen]]

  #v(40pt)

  #only("1-")[
    $ P(E) = ✔/📊 $
  ]

  #only("1")[
    #voiceover("Die Laplace-Formel besagt, dass die Wahrscheinlichkeit eines Ereignisses gleich der Anzahl der günstigen Ergebnisse geteilt durch die Anzahl der möglichen Ergebnisse ist.")
  ]

  #v(20pt)

  #only("2")[
    #voiceover("Schritt 1: Bestimme die Menge der günstigen Ergebnisse in Mengenschreibweise. Das sind die Ergebnisse, die das gewünschte Ereignis erfüllen.")
  ]

  #only("2-")[
    - Menge günstiger Ergebnisse: $ ✔ = {...} $
  ]

  #v(20pt)

  #only("3")[
    #voiceover("Schritt 2: Bestimme die Menge aller möglichen Ergebnisse in Mengenschreibweise. Das sind alle Ergebnisse, die bei dem Zufallsexperiment auftreten können.")
  ]

  #only("3-")[
    - Menge möglicher Ergebnisse: $ 📊 = {...} $
  ]

  #v(20pt)

  #only("4")[
    #voiceover("Schritt 3: Bestimme die Mächtigkeiten dieser Mengen, also die Anzahl ihrer Elemente. Schreibe die Mächtigkeiten also in Mengenschreibweise.")
  ]

  #only("4-")[
    - Mächtigkeit von $✔$: $|✔| = ...$
    - Mächtigkeit von $📊$: $|📊| = ...$
  ]

  #v(20pt)

  #only("5")[
    #voiceover("Schritt 4: Setze die Mächtigkeiten in die Laplace-Formel ein.")
  ]

  #only("5-")[
    $ P(E) = (|✔|)/(|📊|) $
  ]

  #v(20pt)

  #only("6")[
    #voiceover("Und Schließlich: schritt 5: Berechne den Bruch. Dann hast du die Wahrscheinlichkeit mit Hilfe der Laplace-Formel bestimmt.")
  ]

]