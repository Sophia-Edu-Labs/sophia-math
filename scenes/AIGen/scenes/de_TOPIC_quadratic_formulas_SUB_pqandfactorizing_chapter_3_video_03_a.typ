#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen lösen]
  #v(40pt)
  #only("1-")[- Quadratische Gleichung: $a x^2 + b x + c = 0$]
  #v(20pt)
  #only("2-")[- p-q-Formel: $x = -p/2 ± sqrt((p/2)^2 - q)$]
  #v(20pt)
  #only("3-")[- Wobei $p = b/a$ und $q = c/a$]
  #only("1")[
    #voiceover("Großartige Arbeit beim Lösen der quadratischen Gleichung! Lass uns die Lösung Schritt für Schritt durchgehen. Zuerst erinnern wir uns daran, dass eine quadratische Gleichung die allgemeine Form a x Quadrat plus b x plus c gleich null hat.")
  ]
  #only("2")[
    #voiceover("Um dies zu lösen, verwenden wir die p-q-Formel, die besagt, dass x gleich minus p durch 2, plus oder minus die Quadratwurzel von p durch 2 zum Quadrat minus q ist.")
  ]
  #only("3")[
    #voiceover("Hierbei ist p gleich b durch a und q gleich c durch a.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Unsere Gleichung]
  #v(40pt)
  #only("1-")[- Gegebene Gleichung: $x^2 + 5x + 6 = 0$]
  #v(20pt)
  #only("2-")[- Vergleichen mit $a x^2 + b x + c = 0$:]
  #v(20pt)
  #only("3-")[  • $a = 1$]
  #v(10pt)
  #only("4-")[  • $b = 5$]
  #v(10pt)
  #only("5-")[  • $c = 6$]
  #only("1")[
    #voiceover("Schauen wir uns nun unsere spezifische Gleichung an: x Quadrat plus 5x plus 6 gleich null.")
  ]
  #only("2")[
    #voiceover("Vergleichen wir dies mit der Standardform,")
  ]
  #only("3")[
    #voiceover("sehen wir, dass a gleich 1 ist,")
  ]
  #only("4")[
    #voiceover("b gleich 5 ist,")
  ]
  #only("5")[
    #voiceover("und c gleich 6 ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung von p und q]
  #v(40pt)
  #only("1-")[- $p = b/a = 5/1 = 5$]
  #v(20pt)
  #only("2-")[- $q = c/a = 6/1 = 6$]
  #only("1")[
    #voiceover("Berechnen wir nun p und q. p ist gleich b durch a, was 5 durch 1 ist, also einfach 5.")
  ]
  #only("2")[
    #voiceover("Ebenso ist q gleich c durch a, was 6 durch 1 ist, also 6.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der p-q-Formel]
  #v(40pt)
  #only("1-")[- $x = -p/2 ± sqrt((p/2)^2 - q)$]
  #v(20pt)
  #only("2-")[- $x = -5/2 ± sqrt((5/2)^2 - 6)$]
  #v(20pt)
  #only("3-")[- $x = -2.5 ± sqrt(6.25 - 6)$]
  #v(20pt)
  #only("4-")[- $x = -2.5 ± sqrt(0.25)$]
  #v(20pt)
  #only("5-")[- $x = -2.5 ± 0.5$]
  #only("1")[
    #voiceover("Nun können wir die p-q-Formel anwenden. x ist gleich minus p durch 2, plus oder minus die Quadratwurzel von p durch 2 zum Quadrat minus q.")
  ]
  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir x gleich minus 5 durch 2, plus oder minus die Quadratwurzel von 5 durch 2 zum Quadrat minus 6.")
  ]
  #only("3")[
    #voiceover("Vereinfachen wir, erhalten wir x gleich minus 2.5, plus oder minus die Quadratwurzel von 6.25 minus 6.")
  ]
  #only("4")[
    #voiceover("Dies vereinfacht sich zu x gleich minus 2.5, plus oder minus die Quadratwurzel von 0.25.")
  ]
  #only("5")[
    #voiceover("Die Quadratwurzel von 0.25 ist 0.5, also ist unser endgültiger Ausdruck x gleich minus 2.5, plus oder minus 0.5.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Lösung]
  #v(40pt)
  #only("1-")[- $x = -2.5 + 0.5 = -2$]
  #v(20pt)
  #only("2-")[- $x = -2.5 - 0.5 = -3$]
  #v(40pt)
  #only("3-")[Daher, $x = -2$ oder $x = -3$ 🎉]
  #only("1")[
    #voiceover("Nun können wir unsere beiden Lösungen finden. Für den Plusfall ist x gleich minus 2.5 plus 0.5, was minus 2 ergibt.")
  ]
  #only("2")[
    #voiceover("Für den Minusfall ist x gleich minus 2.5 minus 0.5, was minus 3 ergibt.")
  ]
  #only("3")[
    #voiceover("Daher ist unsere endgültige Lösung x gleich minus 2 oder x gleich minus 3. Gut gemacht beim Lösen dieser quadratischen Gleichung!")
  ]
]