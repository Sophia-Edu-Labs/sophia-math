#import "../sophiatheme.typ": *

#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[
    Komitee bilden
  ]

  #v(40pt)
   

    - Klasse mit 25 Schülern
    - Bilde Komitee aus 5 Schülern


  #v(40pt)

  #only("-2")[$ binom(n,k) $]#only("3")[$ binom(25,k) $]#only("4")[$ binom(25,5) $]

  #only("1")[
    #voiceover("Super, das ist richtig. Der Binomialkoeffizient n über k gibt die Anzahl der Möglichkeiten an, das Komitee zu bilden. Schauen wir uns an, welche Werte wir für n und k einsetzen müssen.")
  ]
  #only("2")[
    #voiceover("Zunächst zu n: n steht für die Gesamtzahl der Elemente, aus denen wir auswählen. In unserem Fall ist das die Anzahl der Schüler in der Klasse. Die Klasse hat 25 Schüler. Also ist")
  ]
  #only("3")[
    #voiceover("n gleich 25. Nun zu k: k steht für die Anzahl der Elemente, die wir auswählen. In unserem Fall ist das die Anzahl der Schüler im Komitee. Das Komitee soll aus 5 Schülern bestehen. Also ist")
  ]
  #only("4")[
    #voiceover("k gleich 5. Damit haben wir die Lösung: Die Anzahl der Möglichkeiten, ein Komitee von 5 Schülern aus einer Klasse von 25 Schülern zu bilden, ist gegeben durch den Binomialkoeffizienten 25 über 5.")
  ]
]