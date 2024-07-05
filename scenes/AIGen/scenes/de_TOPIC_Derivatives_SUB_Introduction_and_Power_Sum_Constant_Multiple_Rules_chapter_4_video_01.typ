#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Kombinieren von Ableitungsregeln]
  #v(40pt)
  
  #only("1-")[- Komplexe Funktionen kombinieren oft einfachere 🧩]
  #v(20pt)
  #only("2-")[- Wir müssen Ableitungsregeln kombinieren 🔗]
  #v(20pt)
  #only("3-")[- Beispiel: $f(x) = 3x^2 + 2x - 5$ 📊]

  #only("1")[
    #voiceover("Willkommen zu unserer Lektion über das Kombinieren von Ableitungsregeln. In der Analysis stoßen wir oft auf komplexe Funktionen, die aus einfacheren zusammengesetzt sind.")
  ]
  #only("2")[
    #voiceover("Um die Ableitungen dieser komplexen Funktionen zu finden, müssen wir die Ableitungsregeln, die wir bisher gelernt haben, kombinieren.")
  ]
  #only("3")[
    #voiceover("Betrachten wir ein Beispiel: f von x ist gleich 3 x Quadrat plus 2 x minus 5. Diese Funktion kombiniert Potenzen, ein konstantes Vielfaches und eine Summe. Wie finden wir ihre Ableitung?")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt-für-Schritt Ansatz]
  #v(40pt)
  
  #only("1-")[1. Teile identifizieren 🔍]
  #v(20pt)
  #only("2-")[2. Regeln auf jeden Teil anwenden ✅]
  #v(20pt)
  #only("3-")[3. Ergebnisse kombinieren ➕]

  #only("1")[
    #voiceover("Lass uns das Schritt für Schritt durchgehen. Zuerst müssen wir die verschiedenen Teile der Funktion identifizieren.")
  ]
  #only("2")[
    #voiceover("Dann wenden wir die passende Ableitungsregel auf jeden Teil an.")
  ]
  #only("3")[
    #voiceover("Schließlich kombinieren wir die Ergebnisse mit der Summenregel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwenden der Regeln]
  #v(40pt)
  
  #only("1-")[$ f(x) = 3x^2 + 2x - 5 $]
  #v(20pt)
  #only("2-")[$ f'(x) = 3 dot (2x) + 2 dot (1) + 0 $]
  #v(20pt)
  #only("3-")[$ f'(x) = 6x + 2 $]

  #only("1")[
    #voiceover("Beginnen wir mit unserer Funktion: f von x ist gleich 3 x Quadrat plus 2 x minus 5.")
  ]
  #only("2")[
    #voiceover("Nun wenden wir die Regeln an. Für 3 x Quadrat verwenden wir die Potenzregel und die Regel für konstante Vielfache: 3 mal 2 x. Für 2 x ist die Ableitung einfach 2. Und die Ableitung von minus 5 ist 0.")
  ]
  #only("3")[
    #voiceover("Vereinfacht ergibt das: f Strich von x ist gleich 6 x plus 2. Und das ist unsere endgültige Antwort!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  
  #only("1-")[- Komplexe Funktionen zerlegen 🧩]
  #v(20pt)
  #only("2-")[- Regeln auf jeden Teil anwenden ✅]
  #v(20pt)
  #only("3-")[- Summenregel verwenden, um Ergebnisse zu kombinieren ➕]

  #only("1")[
    #voiceover("Zusammenfassend: Wenn Du es mit komplexen Funktionen zu tun hast, zerlege sie zuerst in einfachere Teile.")
  ]
  #only("2")[
    #voiceover("Dann wende die passenden Ableitungsregeln auf jeden Teil an.")
  ]
  #only("3")[
    #voiceover("Schließlich verwende die Summenregel, um die Ergebnisse zu kombinieren. Mit etwas Übung wird dieser Prozess zur zweiten Natur!")
  ]
]