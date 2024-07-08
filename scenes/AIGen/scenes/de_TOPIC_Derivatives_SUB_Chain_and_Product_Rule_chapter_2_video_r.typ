#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Rückblick: Kettenregel und Produktregel 🔗✖️]
  #v(40pt)
  #only("1-")[- Komplexe Funktionen beinhalten oft Zusammensetzungen und Produkte 🧩]
  #only("2-")[- Kettenregel: Für verschachtelte Funktionen 🔗]
  #only("3-")[- Produktregel: Für multiplizierte Funktionen ✖️]
  #only("4-")[- Manchmal brauchen wir beide! 🤝]

  #only("1")[
    #voiceover("Lass uns überprüfen, wie wir die Kettenregel und die Produktregel kombinieren können. In der Analysis stoßen wir oft auf komplexe Funktionen, die sowohl Zusammensetzungen als auch Produkte einfacherer Funktionen beinhalten.")
  ]
  #only("2")[
    #voiceover("Wir haben die Kettenregel gelernt, die uns hilft, verschachtelte Funktionen zu differenzieren.")
  ]
  #only("3")[
    #voiceover("Wir haben auch die Produktregel behandelt, die es uns ermöglicht, das Produkt zweier Funktionen zu differenzieren.")
  ]
  #only("4")[
    #voiceover("Aber was passiert, wenn wir beide Regeln zusammen anwenden müssen? Das werden wir jetzt überprüfen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Kombination von Ketten- und Produktregel 🤝]
  #v(40pt)
  #only("1-")[Betrachte: $f(x) = (x^2 + 1) dot sin(x^3)$]
  #v(20pt)
  #only("2-")[Schritt 1: Komponenten identifizieren]
  #only("3-")[- $u(x) = x^2 + 1$]
  #only("4-")[- $v(x) = sin(x^3)$]
  #v(20pt)
  #only("5-")[Schritt 2: Produktregel anwenden]
  #only("6-")[$f'(x) = u'(x) dot v(x) + u(x) dot v'(x)$]

  #only("1")[
    #voiceover("Schauen wir uns ein Beispiel an. Betrachte die Funktion f von x gleich x Quadrat plus 1, multipliziert mit Sinus von x hoch 3.")
  ]
  #only("2")[
    #voiceover("Unser erster Schritt ist es, die Komponenten dieser Funktion zu identifizieren.")
  ]
  #only("3")[
    #voiceover("Wir sehen, dass u von x gleich x Quadrat plus 1 ist,")
  ]
  #only("4")[
    #voiceover("und v von x gleich Sinus von x hoch 3 ist.")
  ]
  #only("5")[
    #voiceover("Nun wenden wir die Produktregel auf diese Funktion an.")
  ]
  #only("6")[
    #voiceover("Die Ableitung von f von x ist gleich u Strich von x mal v von x, plus u von x mal v Strich von x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Kettenregel 🔗]
  #v(40pt)
  #only("1-")[Schritt 3: $u(x)$ differenzieren]
  #only("2-")[$u'(x) = 2x$]
  #v(20pt)
  #only("3-")[Schritt 4: $v(x)$ mit der Kettenregel differenzieren]
  #only("4-")[$v'(x) = cos(x^3) dot 3x^2$]
  #v(20pt)
  #only("5-")[Schritt 5: Ergebnisse kombinieren]
  #only("6-")[$f'(x) = 2x dot sin(x^3) + (x^2 + 1) dot cos(x^3) dot 3x^2$]

  #only("1")[
    #voiceover("Nun lass uns jede Komponente differenzieren. Zuerst u von x.")
  ]
  #only("2")[
    #voiceover("Die Ableitung von x Quadrat plus 1 ist einfach 2x.")
  ]
  #only("3")[
    #voiceover("Als nächstes müssen wir v von x differenzieren, wobei wir die Kettenregel anwenden.")
  ]
  #only("4")[
    #voiceover("Die Ableitung von Sinus von x hoch 3 ist Kosinus von x hoch 3, multipliziert mit der Ableitung von x hoch 3, was 3 x Quadrat ist.")
  ]
  #only("5")[
    #voiceover("Schließlich kombinieren wir diese Ergebnisse in unserer Produktregel-Formel.")
  ]
  #only("6")[
    #voiceover("Das Endergebnis ist: f Strich von x ist gleich 2x mal Sinus von x hoch 3, plus x Quadrat plus 1, mal Kosinus von x hoch 3, mal 3 x Quadrat.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Produkt- und Zusammensetzungsstrukturen identifizieren 🧩]
  #only("2-")[- Zuerst die Produktregel anwenden ✖️]
  #only("3-")[- Kettenregel für verschachtelte Funktionen verwenden 🔗]
  #only("4-")[- Ergebnisse sorgfältig kombinieren 🤝]

  #only("1")[
    #voiceover("Zusammenfassend: Wenn Du mit komplexen Funktionen arbeitest, identifiziere zuerst die Produkt- und Zusammensetzungsstrukturen.")
  ]
  #only("2")[
    #voiceover("Dann wende die Produktregel an, um die Funktion zu zerlegen.")
  ]
  #only("3")[
    #voiceover("Verwende die Kettenregel für verschachtelte Funktionen innerhalb der Komponenten.")
  ]
  #only("4")[
    #voiceover("Kombiniere schließlich alle Ergebnisse sorgfältig. Dieser Ansatz ermöglicht es uns, selbst die komplexesten Funktionen zu differenzieren!")
  ]
]