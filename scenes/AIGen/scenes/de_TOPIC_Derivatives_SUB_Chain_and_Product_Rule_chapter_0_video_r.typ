#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Kettenregel 🔗]
  #v(40pt)
  #only("1-")[- Zusammengesetzte Funktionen sind in der Analysis häufig 📚]
  #only("2-")[- Die Kettenregel hilft, diese Funktionen zu differenzieren 🔍]
  #only("3-")[- Lass uns die Kettenregel und ihre Anwendung überprüfen 🧮]
  
  #only("1")[
    #voiceover("Lass uns die Kettenregel überprüfen, ein grundlegendes Konzept in der Analysis. Wir stoßen oft auf zusammengesetzte Funktionen in der Mathematik.")
  ]
  #only("2")[
    #voiceover("Die Kettenregel ist ein mächtiges Werkzeug, das uns hilft, diese zusammengesetzten Funktionen effizient zu differenzieren.")
  ]
  #only("3")[
    #voiceover("Lass uns überprüfen, wie die Kettenregel funktioniert und wie wir sie anwenden.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Kettenregel: Definition 📏]
  #v(40pt)
  #only("1-")[Zusammengesetzte Funktion: $f(g(x))$]
  #v(20pt)
  #only("2-")[Kettenregel: $dif/"dx" (f(g(x))) = f'(g(x)) dot g'(x)$]
  #v(20pt)
  #only("3-")[- Äußere Funktion $f$ differenzieren]
  #only("4-")[- Mit der Ableitung der inneren Funktion $g$ multiplizieren]
  
  #only("1")[
    #voiceover("Lass uns mit einer zusammengesetzten Funktion beginnen. Dies ist eine Funktion in der Form f von g von x, wobei g zuerst angewendet wird und dann f auf das Ergebnis angewendet wird.")
  ]
  #only("2")[
    #voiceover("Die Kettenregel besagt, dass die Ableitung von f von g von x bezüglich x gleich f Strich von g von x multipliziert mit g Strich von x ist.")
  ]
  #only("3")[
    #voiceover("Um die Kettenregel anzuwenden, differenzieren wir zuerst die äußere Funktion f,")
  ]
  #only("4")[
    #voiceover("und multiplizieren sie dann mit der Ableitung der inneren Funktion g.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Beispielanwendung 🌟]
  #v(40pt)
  #only("1-")[Sei $f(x) = sin(x^2)$]
  #v(20pt)
  #only("2-")[Äußere Funktion: $f(x) = sin(x)$]
  #only("3-")[Innere Funktion: $g(x) = x^2$]
  #v(20pt)
  #only("4-")[Anwendung der Kettenregel:]
  #only("5-")[$f'(x) = cos(x^2) dot 2x$]
  
  #only("1")[
    #voiceover("Lass uns ein Beispiel überprüfen. Betrachte die Funktion f von x gleich Sinus von x Quadrat.")
  ]
  #only("2")[
    #voiceover("Hier ist die äußere Funktion Sinus von x,")
  ]
  #only("3")[
    #voiceover("und die innere Funktion ist x Quadrat.")
  ]
  #only("4")[
    #voiceover("Nun lass uns die Kettenregel anwenden.")
  ]
  #only("5")[
    #voiceover("Die Ableitung von f von x ist Cosinus von x Quadrat, was die Ableitung von Sinus ist, multipliziert mit zwei x, was die Ableitung von x Quadrat ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Kettenregel: Werkzeug für zusammengesetzte Funktionen 🛠️]
  #only("2-")[- Formel: $dif/"dx" (f(g(x))) = f'(g(x)) dot g'(x)$]
  #only("3-")[- Schritte: Äußere Funktion differenzieren, mit innerer Ableitung multiplizieren]
  #only("4-")[- Entscheidend für die Differenzierung komplexer Funktionen 🧠]
  
  #only("1")[
    #voiceover("Zusammenfassend ist die Kettenregel ein mächtiges Werkzeug zur Differenzierung zusammengesetzter Funktionen.")
  ]
  #only("2")[
    #voiceover("Merke dir die Formel: die Ableitung von f von g von x bezüglich x ist gleich f Strich von g von x multipliziert mit g Strich von x.")
  ]
  #only("3")[
    #voiceover("Die Schritte sind: die äußere Funktion differenzieren, dann mit der Ableitung der inneren Funktion multiplizieren.")
  ]
  #only("4")[
    #voiceover("Diese Regel ist entscheidend für die Differenzierung komplexer Funktionen in der Analysis und hat breite Anwendungen in verschiedenen Bereichen der Mathematik und Wissenschaft.")
  ]
]