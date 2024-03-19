#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[
  #only("1")[
    #voiceover("Hast du dich schon mal gefragt, wie man die Gewinnchancen beim Lotto berechnet? Dafür brauchen wir den Binomialkoeffizienten!")
  ]

  #text(size: 30pt, weight: "bold")[Binomialkoeffizient]

  #v(40pt)

  #only("2")[
    #voiceover("Der Binomialkoeffizient, oft auch als n über k bezeichnet, gibt an, auf wie viele Arten man k Elemente aus einer Menge von n Elementen auswählen kann.")
  ]

  #only("2-")[
    #align(center)[$ binom(n,k) =$Anzahl der Möglichkeiten, k Elemente aus n auszuwählen]
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Binomialkoeffizient]

  #v(40pt)

  #only("1")[
    #voiceover("Die Formel für den Binomialkoeffizienten sieht so aus:")
  ]

  #only("1-")[
    #align(center, $ binom(n,k) = (n!)/(k! dot (n-k)!) $)
  ]

  #only("2")[
    #voiceover("Dabei steht n mit dem Ausrufezeichen für die Fakultät von n, also das Produkt aller natürlichen Zahlen von 1 bis n.")
  ]

  #only("3")[
    #voiceover("Schauen wir uns das an einem Beispiel an. Nehmen wir an, wir haben fünf Filme zur Auswahl, die wir im Zug sehen können. Allerdings reicht die Zeit nur für 2. Wie viele Möglichkeiten gibt es, 2 Filme aus diesen 5 auszuwählen?")
  ]
  #only("3-")[
  #v(30pt)
  #text(size: 30pt, weight: "bold")[Beispiel:] Wähle 2 Filme aus 5
  #v(30pt)
  ]
  #only("4")[
    $binom(5,2) $
  ]
  #only("4")[
    #voiceover("Da kommt der Binomialkoeffizient ins Spiel. Konkret der Binomialkoeffizient von 5 über 2.")
  ]
    #only("5-")[
    $binom(5,2) = (5!)/(2! dot (5-2)!) $
  ]
   #only("5")[
    #voiceover("Dieser ist gleich fünf Fakultät durch zwei Fakultät mal fünf minus zwei Fakultät.")
  ]
  #only("6")[
    $= (5 dot 4 dot 3 dot 2 dot 1)/((2 dot 1) dot (3 dot 2 dot 1)) $
  ] 
  #only("6")[
    #voiceover("Wenn wir das einsetzen, erhalten wir ein großes Produkt, wobei wir die Faktoren drei, zwei und eins oben und unten kürzen können.")
  ]

  #only("7")[
    $= 120/(2 dot 6) $
  ]
    #only("7")[
    #voiceover("sodass wir am Ende 120 durch zwei mal sechs erhalten.")
  ]


  #only("8")[
    $= 120/12 $
  ]
  #only("8")[
    #voiceover("also 120 durch 12 erhalten. UNd ")
  ]

  #only("9-")[
    $= 10 $
  ]

  #only("9")[
    #voiceover("das ergibt 10. Es gibt also 10 Möglichkeiten, 2 Filme aus einer Menge von 5 Filmen auszuwählen.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Lotto]

  #v(40pt)  

  #only("1-")[6 aus 49]

  #only("1")[
    #voiceover("Und jetzt zu unserem Lottobeispiel: Beim klassischen Lotto wählt man 6 Zahlen aus 49 aus. Die Anzahl der Möglichkeiten dafür ist also:")
  ]

  #only("2-")[
    $ binom(49,6) = 13.983.816 $
  ]

  #only("2")[
    #voiceover("der Binomialkoeffizient von 49 über sechs. Und wenn man das ausrechnet, erhält man fast 14 Millionen Möglichkeiten! Deswegen ist es so schwer, im Lotto zu gewinnen.")
  ]
]
#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Binomialkoeffizient: Anzahl der Möglichkeiten, k aus n zu wählen]
#v(20pt)
#only("2-")[- Formel: $ binom(n,k) = (n!)/(k! dot (n-k)!) $]
#v(20pt)
#only("3-")[- Anwendung: Lotto, Wahrscheinlichkeitsrechnung]
#only("1")[
#voiceover("Fassen wir zusammen: Der Binomialkoeffizient, oft auch als n über k bezeichnet, gibt an, auf wie viele Arten man k Elemente aus einer Menge von n Elementen auswählen kann.")
]
#only("2")[
#voiceover("Die Formel für den Binomialkoeffizienten lautet: n Fakultät durch k Fakultät mal n minus k Fakultät. Dabei steht n Fakultät für das Produkt aller natürlichen Zahlen von 1 bis n.")
]
#only("3")[
#voiceover("Der Binomialkoeffizient findet Anwendung in vielen Bereichen, wie zum Beispiel bei der Berechnung von Lottowahrscheinlichkeiten oder allgemein in der Wahrscheinlichkeitsrechnung, wenn es darum geht, Kombinationen zu zählen.")
]
]
