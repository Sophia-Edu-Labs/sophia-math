#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Einführung in die Kettenregel]
  #v(40pt)
  
  #only("1-")[- Ableitung von zusammengesetzten Funktionen 🔗]
  #v(20pt)
  #only("2-")[- Funktion in einer anderen Funktion 📦]
  #v(20pt)
  #only("3-")[- Beispiel: $f(g(x))$ wobei $f(x) = x^2$ und $g(x) = x + 1$]
  
  #only("1")[
    #voiceover("Willkommen zu unserer Einführung in die Kettenregel. Heute werden wir ein mächtiges Werkzeug der Analysis erkunden, das uns hilft, zusammengesetzte Funktionen abzuleiten.")
  ]
  
  #only("2")[
    #voiceover("Aber was genau ist eine zusammengesetzte Funktion? Es ist, wenn wir eine Funktion in einer anderen Funktion haben. Das mag kompliziert klingen, ist aber in der Mathematik und in realen Anwendungen ziemlich häufig.")
  ]
  
  #only("3")[
    #voiceover("Schauen wir uns ein einfaches Beispiel an. Stell dir vor, wir haben zwei Funktionen: f von x ist gleich x Quadrat und g von x ist gleich x plus 1. Was, wenn wir diese zu einer zusammengesetzten Funktion kombinieren wollten? Wir könnten dies als f von g von x schreiben. Das bedeutet, wir wenden zuerst g an und dann f auf das Ergebnis.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Zusammengesetzte Funktionen]
  #v(40pt)
  
  #only("1-")[- $f(g(x)) = (x+1)^2$]
  #v(20pt)
  #only("2-")[- Schritt 1: Berechne $g(x) = x + 1$]
  #v(20pt)
  #only("3-")[- Schritt 2: Verwende das Ergebnis in $f(x) = x^2$]
  #v(20pt)
  #only("4-")[- Ergebnis: $f(g(x)) = (x+1)^2 = x^2 + 2x + 1$]
  
  #only("1")[
    #voiceover("Lass uns unsere zusammengesetzte Funktion f von g von x Schritt für Schritt durchgehen.")
  ]
  
  #only("2")[
    #voiceover("Zuerst berechnen wir g von x, was x plus 1 ist.")
  ]
  
  #only("3")[
    #voiceover("Dann verwenden wir dieses Ergebnis als Eingabe für f. Denk daran, f von x ist x Quadrat.")
  ]
  
  #only("4")[
    #voiceover("Also wird f von g von x zu x plus 1, alles im Quadrat. Wenn wir das ausmultiplizieren, erhalten wir x Quadrat plus 2x plus 1. Das ist unsere zusammengesetzte Funktion.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Warum die Kettenregel?]
  #v(40pt)
  
  #only("1-")[- Wie leitet man $f(g(x))$ ab? 🤔]
  #v(20pt)
  #only("2-")[- Kann nicht die grundlegenden Ableitungsregeln verwenden 🚫]
  #v(20pt)
  #only("3-")[- Kettenregel: spezielle Technik für zusammengesetzte Funktionen 🔗]
  
  #only("1")[
    #voiceover("Nun, hier ist die Herausforderung: Wie leiten wir diese zusammengesetzte Funktion ab?")
  ]
  
  #only("2")[
    #voiceover("Wir können nicht einfach die grundlegenden Ableitungsregeln verwenden, die wir bisher gelernt haben. Die Funktion im Inneren verkompliziert die Sache.")
  ]
  
  #only("3")[
    #voiceover("Hier kommt die Kettenregel ins Spiel. Es ist eine spezielle Technik, die speziell für die Ableitung von zusammengesetzten Funktionen wie dieser entwickelt wurde.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  
  #only("1-")[- Kettenregel: für die Ableitung von zusammengesetzten Funktionen 🔗]
  #v(20pt)
  #only("2-")[- Zusammengesetzte Funktion: Funktion in einer anderen Funktion 📦]
  #v(20pt)
  #only("3-")[- Notwendig, wenn grundlegende Ableitungsregeln nicht ausreichen 🧮]
  
  #only("1")[
    #voiceover("Zusammenfassend lässt sich sagen, dass die Kettenregel eine Methode ist, die zur Ableitung von zusammengesetzten Funktionen verwendet wird.")
  ]
  
  #only("2")[
    #voiceover("Eine zusammengesetzte Funktion ist, wenn wir eine Funktion in einer anderen haben, wie f von g von x.")
  ]
  
  #only("3")[
    #voiceover("Wir benötigen die Kettenregel, wenn unsere üblichen Ableitungsregeln nicht ausreichen, um diese komplexeren Funktionen zu handhaben. In unserer nächsten Lektion werden wir uns damit beschäftigen, wie man die Kettenregel tatsächlich anwendet. Bleib dran!")
  ]
]