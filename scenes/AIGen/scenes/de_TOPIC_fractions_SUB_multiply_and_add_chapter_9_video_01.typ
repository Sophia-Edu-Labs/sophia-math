#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Brüche subtrahieren]
  #v(40pt)

  #only("1-")[🍕 Pizza-Party-Dilemma]
  #v(20pt)
  #only("2-")[- Sarah hat 3/8 einer Pizza gegessen]
  #v(20pt)
  #only("3-")[- Tom hat 1/8 derselben Pizza gegessen]
  #v(20pt)
  #only("4-")[- Wie viel Pizza ist noch übrig? 🤔]

  #only("1")[
    #voiceover("Willkommen zu unserer Lektion über das Subtrahieren von Brüchen! Stell dir vor, du bist auf einer Pizza-Party.")
  ]
  #only("2")[
    #voiceover("Sarah hat drei Achtel einer Pizza gegessen.")
  ]
  #only("3")[
    #voiceover("Tom hat ein Achtel derselben Pizza gegessen.")
  ]
  #only("4")[
    #voiceover("Jetzt müssen wir herausfinden, wie viel Pizza noch übrig ist. Hier kommt das Subtrahieren von Brüchen ins Spiel!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Gleicher Nenner]
  #v(40pt)

  #only("1-")[- Zähler subtrahieren, Nenner beibehalten]
  #v(20pt)
  #only("2-")[$ 3/8 - 1/8 = (3-1)/8 = 2/8 $]
  #v(20pt)
  #only("3-")[🍕 Übrige Pizza: $ 1 - (3/8 + 1/8) = 1 - 4/8 = 4/8 $]

  #only("1")[
    #voiceover("Beim Subtrahieren von Brüchen mit dem gleichen Nenner ist es einfach: Wir subtrahieren nur die Zähler und behalten den gleichen Nenner bei.")
  ]
  #only("2")[
    #voiceover("In unserem Pizza-Beispiel haben wir drei Achtel minus ein Achtel. Das ist drei minus eins, über acht, was zwei Achtel ergibt.")
  ]
  #only("3")[
    #voiceover("Um herauszufinden, wie viel Pizza noch übrig ist, subtrahieren wir die insgesamt gegessene Menge von der ganzen Pizza. Eins minus vier Achtel ergibt vier Achtel. Also ist noch die Hälfte der Pizza übrig!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Unterschiedliche Nenner]
  #v(40pt)

  #only("1-")[- Zuerst gemeinsamen Nenner finden]
  #v(20pt)
  #only("2-")[- Beispiel: $ 1/2 - 1/3 $]
  #v(20pt)
  #only("3-")[- Gemeinsamer Nenner: 6]
  #v(20pt)
  #only("4-")[$ 1/2 = 3/6 $, $ 1/3 = 2/6 $]
  #v(20pt)
  #only("5-")[$ 3/6 - 2/6 = 1/6 $]

  #only("1")[
    #voiceover("Beim Subtrahieren von Brüchen mit unterschiedlichen Nennern müssen wir zuerst einen gemeinsamen Nenner finden.")
  ]
  #only("2")[
    #voiceover("Schauen wir uns ein neues Beispiel an: ein Halb minus ein Drittel.")
  ]
  #only("3")[
    #voiceover("Der gemeinsame Nenner für Halbe und Drittel ist sechs.")
  ]
  #only("4")[
    #voiceover("Wir wandeln ein Halb in drei Sechstel um und ein Drittel in zwei Sechstel.")
  ]
  #only("5")[
    #voiceover("Jetzt können wir subtrahieren: drei Sechstel minus zwei Sechstel ergibt ein Sechstel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)

  #only("1-")[- Gleicher Nenner: nur Zähler subtrahieren]
  #v(20pt)
  #only("2-")[- Unterschiedliche Nenner: zuerst gemeinsamen Nenner finden]
  #v(20pt)
  #only("3-")[- Übung macht den Meister! 🏆]

  #only("1")[
    #voiceover("Zusammenfassend: Beim Subtrahieren von Brüchen mit dem gleichen Nenner subtrahieren wir einfach die Zähler und behalten den gleichen Nenner bei.")
  ]
  #only("2")[
    #voiceover("Bei unterschiedlichen Nennern müssen wir zuerst einen gemeinsamen Nenner finden, bevor wir subtrahieren.")
  ]
  #only("3")[
    #voiceover("Denke daran, Übung ist der Schlüssel zum Beherrschen des Bruchrechnens. Übe weiter, und du wirst bald ein Bruch-Experte sein!")
  ]
]