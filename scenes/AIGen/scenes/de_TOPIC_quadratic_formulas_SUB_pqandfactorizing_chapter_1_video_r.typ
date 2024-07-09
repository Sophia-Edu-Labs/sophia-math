#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Quadratische Gleichungen 📊]
  #v(40pt)
  #only("1-")[- Probleme aus der realen Welt beinhalten oft quadratische Beziehungen 🌍]
  #only("2-")[- Quadratische Gleichungen: $a x^2 + b x + c = 0$ 📝]
  #only("3-")[- p-q-Formel: ein mächtiges Werkzeug zur Lösung dieser Gleichungen 🛠️]
  
  #only("1")[
    #voiceover("Lass uns quadratische Gleichungen und die p-q-Formel wiederholen. Viele Probleme aus der realen Welt beinhalten quadratische Beziehungen.")
  ]
  #only("2")[
    #voiceover("Eine quadratische Gleichung hat die allgemeine Form a x Quadrat plus b x plus c gleich null, wobei a, b und c Konstanten sind und a nicht null ist.")
  ]
  #only("3")[
    #voiceover("Die p-q-Formel ist ein mächtiges Werkzeug, das wir zur Lösung dieser Gleichungen verwenden. Lass uns überprüfen, wie sie funktioniert.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Die p-q-Formel]
  #v(40pt)
  #only("1-")[Standardform: $a x^2 + b x + c = 0$]
  #only("2-")[Durch $a$ teilen: $x^2 + (b/a) x + (c/a) = 0$]
  #only("3-")[Setze $p = b/a$ und $q = c/a$]
  #only("4-")[p-q-Form: $x^2 + p x + q = 0$]
  #only("5-")[p-q-Formel: $x_(1,2) = -p/2 ± sqrt((p/2)^2 - q)$]
  
  #only("1")[
    #voiceover("Wir beginnen mit der Standardform einer quadratischen Gleichung: a x Quadrat plus b x plus c gleich null.")
  ]
  #only("2")[
    #voiceover("Um die p-q-Formel anzuwenden, teilen wir zunächst die gesamte Gleichung durch a.")
  ]
  #only("3")[
    #voiceover("Dann definieren wir p als b geteilt durch a und q als c geteilt durch a.")
  ]
  #only("4")[
    #voiceover("Das ergibt die p-q-Form der quadratischen Gleichung: x Quadrat plus p x plus q gleich null.")
  ]
  #only("5")[
    #voiceover("Schließlich können wir die p-q-Formel anwenden: x ist gleich minus p durch zwei, plus oder minus die Quadratwurzel von p durch zwei zum Quadrat minus q.")
  ]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Die p-q-Formel löst $x^2 + p x + q = 0$ 🧮]
  #only("2-")[- Lösung: $x_(1,2) = -p/2 ± sqrt((p/2)^2 - q)$ 🔍]
  #only("3-")[- Effizient für viele quadratische Gleichungen 🚀]
  #only("4-")[- Übung macht den Meister! 💪]
  
  #only("1")[
    #voiceover("Zusammenfassend wird die p-q-Formel verwendet, um quadratische Gleichungen in der Form x Quadrat plus p x plus q gleich null zu lösen.")
  ]
  #only("2")[
    #voiceover("Die Formel gibt uns die Lösungen: x ist gleich minus p durch zwei, plus oder minus die Quadratwurzel von p durch zwei zum Quadrat minus q.")
  ]
  #only("3")[
    #voiceover("Diese Formel ist effizient zur Lösung vieler quadratischer Gleichungen.")
  ]
  #only("4")[
    #voiceover("Denke daran, Übung ist der Schlüssel zur Beherrschung der Anwendung der p-q-Formel!")
  ]
]