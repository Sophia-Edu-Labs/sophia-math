#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Potenzregel für Ableitungen 📊]
  #v(40pt)
  #only("1-")[- Ableitungen messen die Änderungsrate 📈]
  #only("2-")[- Die Potenzregel vereinfacht die Berechnung von Ableitungen 🧮]
  #only("3-")[- Lass uns die Potenzregel mit Beispielen wiederholen 🔍]

  #only("1")[
    #voiceover("Lass uns die Potenzregel für Ableitungen wiederholen. Wie wir wissen, sind Ableitungen in der Analysis essentiell, da sie die Änderungsrate einer Funktion messen.")
  ]
  #only("2")[
    #voiceover("Die Potenzregel ist ein mächtiges Werkzeug, das den Prozess der Berechnung von Ableitungen für Polynomfunktionen vereinfacht.")
  ]
  #only("3")[
    #voiceover("Lass uns in die Potenzregel eintauchen und sie mit einigen Beispielen wiederholen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Potenzregel 🔢]
  #v(40pt)
  #only("1-")[Für $f(x) = x^n$, wobei $n$ eine Konstante ist:]
  #v(20pt)
  #only("2-")[$ f'(x) = n x^(n-1) $]
  #v(20pt)
  #only("3-")[Schritte:
    1️⃣ Den Exponenten als Koeffizienten nach unten bringen
    2️⃣ Den Exponenten um 1 reduzieren]

  #only("1")[
    #voiceover("Die Potenzregel besagt, dass für eine Funktion f von x gleich x hoch n, wobei n eine Konstante ist,")
  ]
  #only("2")[
    #voiceover("die Ableitung, f Strich von x, gleich n mal x hoch n minus 1 ist.")
  ]
  #only("3")[
    #voiceover("Um diese Regel anzuwenden, folgen wir zwei einfachen Schritten: Zuerst bringen wir den Exponenten als Koeffizienten nach unten. Dann reduzieren wir den Exponenten um 1.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Beispiel 📝]
  #v(40pt)
  #only("1-")[Lass uns $f(x) = x^4$ ableiten]
  #v(20pt)
  #only("2-")[Schritt 1: Den Exponenten (4) als Koeffizienten nach unten bringen]
  #only("3-")[Schritt 2: Den Exponenten um 1 reduzieren (4 - 1 = 3)]
  #v(20pt)
  #only("4-")[Ergebnis: $f'(x) = 4x^3$]

  #only("1")[
    #voiceover("Lass uns die Potenzregel an einem Beispiel anwenden. Betrachte die Funktion f von x gleich x hoch 4.")
  ]
  #only("2")[
    #voiceover("Zuerst bringen wir den Exponenten, 4, als Koeffizienten nach unten.")
  ]
  #only("3")[
    #voiceover("Dann reduzieren wir den Exponenten um 1, was uns 3 ergibt.")
  ]
  #only("4")[
    #voiceover("Das Ergebnis ist f Strich von x gleich 4 x hoch 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📚]
  #v(40pt)
  #only("1-")[- Potenzregel: $f(x) = x^n arrow f'(x) = n x^(n-1)$ 🔑]
  #only("2-")[- Vereinfacht die Berechnung von Ableitungen für Polynome 🧮]
  #only("3-")[- Merke: Exponenten nach unten bringen, um 1 reduzieren ⚙️]
  #only("4-")[- Anwendbar auf komplexere Funktionen 🔬]

  #only("1")[
    #voiceover("Zusammenfassend besagt die Potenzregel, dass für eine Funktion f von x gleich x hoch n, ihre Ableitung f Strich von x gleich n mal x hoch n minus 1 ist.")
  ]
  #only("2")[
    #voiceover("Diese Regel vereinfacht die Berechnung von Ableitungen für Polynomfunktionen erheblich.")
  ]
  #only("3")[
    #voiceover("Merke dir die zwei wichtigen Schritte: den Exponenten als Koeffizienten nach unten bringen und den Exponenten um 1 reduzieren.")
  ]
  #only("4")[
    #voiceover("Die Potenzregel ist ein grundlegendes Werkzeug in der Analysis und kann auch auf komplexere Funktionen angewendet werden.")
  ]
]