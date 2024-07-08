#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Potenzfunktionen]
  #v(40pt)
  #only("1-")[
    $f(x) = 8 / x^2$
  ]
  #v(20pt)
  #only("2-")[
    Frage: Was ist $f(1/2)$?
  ]
  #only("1")[
    #voiceover("Keine Sorge, wir gehen die Lösung gemeinsam durch. Lass uns die Funktion f von x gleich 8 geteilt durch x Quadrat Schritt für Schritt betrachten.")
  ]
  #only("2")[
    #voiceover("Unsere Aufgabe ist es, den Wert von f von ein halb zu finden. Lass uns das aufschlüsseln.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Ersetze x durch 1/2]
  #v(40pt)
  #only("1-")[
    $f(1/2) = 8 / (1/2)^2$
  ]
  #v(20pt)
  #only("2-")[
    💡 Denke daran: $(1/2)^2$ bedeutet $(1/2) dot (1/2)$
  ]
  #only("1")[
    #voiceover("Unser erster Schritt ist es, x durch ein halb in unserer Funktion zu ersetzen. Das ergibt f von ein halb gleich 8 geteilt durch ein halb Quadrat.")
  ]
  #only("2")[
    #voiceover("Es ist wichtig zu wissen, dass ein halb Quadrat bedeutet ein halb mal ein halb.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Vereinfache (1/2)²]
  #v(40pt)
  #only("1-")[
    $(1/2)^2 = 1/4$
  ]
  #v(20pt)
  #only("2-")[
    $f(1/2) = 8 / (1/4)$
  ]
  #only("1")[
    #voiceover("Nun lass uns ein halb Quadrat vereinfachen. Ein halb mal ein halb ergibt ein Viertel.")
  ]
  #only("2")[
    #voiceover("Setzen wir das zurück in unsere Gleichung, erhalten wir f von ein halb gleich 8 geteilt durch ein Viertel.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Vereinfache die Division]
  #v(40pt)
  #only("1-")[
    $8 / (1/4) = 8 dot 4 = 32$
  ]
  #v(20pt)
  #only("2-")[
    💡 Tipp: Das Teilen durch einen Bruch ist dasselbe wie das Multiplizieren mit seinem Kehrwert
  ]
  #only("1")[
    #voiceover("Der letzte Schritt ist, diese Division zu vereinfachen. Denke daran, dass das Teilen durch einen Bruch dasselbe ist wie das Multiplizieren mit seinem Kehrwert. Also, 8 geteilt durch ein Viertel ist gleich 8 mal 4, was 32 ergibt.")
  ]
  #only("2")[
    #voiceover("Das ist ein nützlicher Tipp, den Du dir merken solltest, wenn Du mit Brüchen in der Division arbeitest.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Antwort]
  #v(40pt)
  #only("1-")[
    $f(1/2) = 32$
  ]
  #v(20pt)
  #only("2-")[
    🎉 Gut gemacht!
  ]
  #only("1")[
    #voiceover("Also, unsere endgültige Antwort ist, dass f von ein halb gleich 32 ist.")
  ]
  #only("2")[
    #voiceover("Ausgezeichnete Arbeit! Du hast dieses Potenzfunktion-Problem erfolgreich gelöst. Denke daran, dass das Aufteilen komplexer Probleme in kleinere Schritte sie viel leichter handhabbar macht.")
  ]
]