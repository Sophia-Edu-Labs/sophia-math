#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Vektoren und das Skalarprodukt]
  #v(40pt)

  #only("1-")[- Vektoren: Größen mit Betrag und Richtung 🏹]
  #v(20pt)
  #only("2-")[- Beispiele: Kraft, Geschwindigkeit, Verschiebung]
  #v(20pt)
  #only("3-")[- Skalarprodukt: Eine skalare Operation auf zwei Vektoren 🔢]
  #v(20pt)
  #only("4-")[- Notation: $vec(a) dot vec(b)$ oder $vec(a) * vec(b)$]

  #only("1")[
    #voiceover("Willkommen zu unserer Einführung in Vektoren und das Skalarprodukt. Beginnen wir mit Vektoren. Was genau ist ein Vektor?")
  ]
  #only("2")[
    #voiceover("Ein Vektor ist ein mathematisches Objekt, das sowohl einen Betrag als auch eine Richtung hat. In der realen Welt begegnen wir Vektoren in verschiedenen Formen. Zum Beispiel ist Kraft ein Vektor, weil sie sowohl Stärke als auch Richtung hat. Geschwindigkeit ist ein weiteres Beispiel, da sie sowohl die Geschwindigkeit als auch die Bewegungsrichtung beschreibt. Die Verschiebung, die uns sagt, wie weit und in welche Richtung sich ein Objekt bewegt hat, ist ebenfalls ein Vektor.")
  ]
  #only("3")[
    #voiceover("Nun, lass uns ein neues Konzept einführen: das Skalarprodukt. Das Skalarprodukt ist eine spezielle Operation, die wir auf zwei Vektoren anwenden können. Im Gegensatz zur Vektoraddition oder Skalarenmultiplikation, die uns neue Vektoren geben, ergibt das Skalarprodukt zweier Vektoren einen Skalar - also eine einzelne Zahl.")
  ]
  #only("4")[
    #voiceover("Wir bezeichnen das Skalarprodukt zweier Vektoren a und b entweder mit einem Punkt zwischen ihnen oder manchmal mit einem Sternchen. Beide Notationen bedeuten dasselbe: Wir bilden das Skalarprodukt der Vektoren a und b.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung des Skalarprodukts]
  #v(40pt)

  #only("1-")[Für Vektoren $vec(a) = (a_1, a_2, ..., a_n)$ und $vec(b) = (b_1, b_2, ..., b_n)$:]
  #v(20pt)
  #only("2-")[$ vec(a) dot vec(b) = a_1 b_1 + a_2 b_2 + ... + a_n b_n $]
  #v(20pt)
  #only("3-")[Beispiel: $vec(a) = (1, 2, 3)$, $vec(b) = (4, 5, 6)$]
  #v(20pt)
  #only("4-")[$ vec(a) dot vec(b) = 1 dot 4 + 2 dot 5 + 3 dot 6 = 4 + 10 + 18 = 32 $]

  #only("1")[
    #voiceover("Nun, lass uns lernen, wie man das Skalarprodukt berechnet. Betrachte zwei Vektoren a und b, die jeweils n Komponenten haben.")
  ]
  #only("2")[
    #voiceover("Das Skalarprodukt wird berechnet, indem die entsprechenden Komponenten der beiden Vektoren multipliziert und diese Produkte dann summiert werden. Mathematisch schreiben wir das als a_1 mal b_1, plus a_2 mal b_2, und so weiter, bis zu a_n mal b_n.")
  ]
  #only("3")[
    #voiceover("Schauen wir uns ein konkretes Beispiel an. Angenommen, wir haben den Vektor a gleich 1, 2, 3 und den Vektor b gleich 4, 5, 6.")
  ]
  #only("4")[
    #voiceover("Um ihr Skalarprodukt zu berechnen, multiplizieren wir die entsprechenden Komponenten und summieren: 1 mal 4, plus 2 mal 5, plus 3 mal 6. Das ergibt 4 plus 10 plus 18, was 32 ergibt. Also ist das Skalarprodukt dieser beiden Vektoren 32.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)

  #only("1-")[- Vektoren: Größen mit Betrag und Richtung 🏹]
  #v(20pt)
  #only("2-")[- Skalarprodukt: Skalares Ergebnis aus der Multiplikation von Vektorkomponenten]
  #v(20pt)
  #only("3-")[- Notation: $vec(a) dot vec(b)$ oder $vec(a) * vec(b)$]
  #v(20pt)
  #only("4-")[- Berechnung: Summe der komponentenweisen Produkte]

  #only("1")[
    #voiceover("Lass uns zusammenfassen, was wir gelernt haben. Vektoren sind mathematische Objekte, die sowohl einen Betrag als auch eine Richtung haben. Sie werden verwendet, um Größen wie Kraft, Geschwindigkeit und Verschiebung in der Physik und im Ingenieurwesen darzustellen.")
  ]
  #only("2")[
    #voiceover("Das Skalarprodukt ist eine spezielle Operation auf zwei Vektoren, die zu einem Skalar führt. Es wird berechnet, indem die entsprechenden Komponenten der Vektoren multipliziert und diese Produkte summiert werden.")
  ]
  #only("3")[
    #voiceover("Wir bezeichnen das Skalarprodukt entweder mit einem Punkt oder einem Sternchen zwischen den Vektorsymbolen.")
  ]
  #only("4")[
    #voiceover("Um das Skalarprodukt zu berechnen, multiplizieren wir die entsprechenden Komponenten und summieren die Ergebnisse. Diese Operation hat viele Anwendungen in der Physik und im Ingenieurwesen, die wir in zukünftigen Lektionen erkunden werden. Vielen Dank für Deine Aufmerksamkeit!")
  ]
]