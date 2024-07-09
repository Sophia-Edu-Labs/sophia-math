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
  #only("3-")[- Dabei ist $p = b/a$ und $q = c/a$]
  
  #only("1")[
    #voiceover("Großartige Arbeit bei der Lösung dieses Problems! Lass uns die Lösung Schritt für Schritt durchgehen. Zuerst erinnern wir uns daran, wie eine quadratische Gleichung aussieht. Sie hat die Form a x Quadrat plus b x plus c gleich null.")
  ]
  #only("2")[
    #voiceover("Um dies zu lösen, verwenden wir die p-q-Formel. Diese besagt, dass x gleich minus p durch 2, plus oder minus die Quadratwurzel von p durch 2 zum Quadrat minus q ist.")
  ]
  #only("3")[
    #voiceover("In dieser Formel ist p gleich b durch a und q gleich c durch a, wobei a, b und c die Koeffizienten unserer ursprünglichen quadratischen Gleichung sind.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Unsere Gleichung]
  #v(40pt)
  #only("1-")[- Gegebene Gleichung: $x^2 - 4x + 3 = 0$]
  #v(20pt)
  #only("2-")[- Vergleich mit $a x^2 + b x + c = 0$:]
  #v(20pt)
  #only("3-")[  • $a = 1$]
  #v(10pt)
  #only("4-")[  • $b = -4$]
  #v(10pt)
  #only("5-")[  • $c = 3$]
  
  #only("1")[
    #voiceover("Schauen wir uns nun unsere spezifische Gleichung an: x Quadrat minus 4x plus 3 gleich null.")
  ]
  #only("2")[
    #voiceover("Vergleichen wir dies mit der Standardform einer quadratischen Gleichung,")
  ]
  #only("3")[
    #voiceover("sehen wir, dass a gleich 1 ist,")
  ]
  #only("4")[
    #voiceover("b gleich minus 4 ist,")
  ]
  #only("5")[
    #voiceover("und c gleich 3 ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Berechnung von p und q]
  #v(40pt)
  #only("1-")[- $p = b/a = -4/1 = -4$]
  #v(20pt)
  #only("2-")[- $q = c/a = 3/1 = 3$]
  
  #only("1")[
    #voiceover("Nun können wir p berechnen. Es ist b durch a, was minus 4 durch 1 ist, was sich zu minus 4 vereinfacht.")
  ]
  #only("2")[
    #voiceover("Ebenso ist q c durch a, was 3 durch 1 ist, also einfach 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der p-q-Formel]
  #v(40pt)
  #only("1-")[- $x = -p/2 ± sqrt((p/2)^2 - q)$]
  #v(20pt)
  #only("2-")[- $x = -(-4)/2 ± sqrt(((-4)/2)^2 - 3)$]
  #v(20pt)
  #only("3-")[- $x = 2 ± sqrt(4 - 3)$]
  #v(20pt)
  #only("4-")[- $x = 2 ± sqrt(1)$]
  #v(20pt)
  #only("5-")[- $x = 2 ± 1$]
  
  #only("1")[
    #voiceover("Nun wenden wir die p-q-Formel an. Wir haben x gleich minus p durch 2, plus oder minus die Quadratwurzel von p durch 2 zum Quadrat minus q.")
  ]
  #only("2")[
    #voiceover("Setzen wir unsere Werte ein, erhalten wir x gleich minus von minus 4 durch 2, plus oder minus die Quadratwurzel von minus 4 durch 2 zum Quadrat minus 3.")
  ]
  #only("3")[
    #voiceover("Vereinfacht ergibt das 2 plus oder minus die Quadratwurzel von 4 minus 3.")
  ]
  #only("4")[
    #voiceover("Was weiter vereinfacht 2 plus oder minus die Quadratwurzel von 1 ergibt.")
  ]
  #only("5")[
    #voiceover("Und schließlich erhalten wir 2 plus oder minus 1.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Endgültige Lösung]
  #v(40pt)
  #only("1-")[- $x = 2 + 1 = 3$ oder $x = 2 - 1 = 1$]
  #v(20pt)
  #only("2-")[- Daher, $x = 1$ oder $x = 3$ ✅]
  
  #only("1")[
    #voiceover("Dies gibt uns zwei Lösungen: x gleich 2 plus 1, was 3 ist, oder x gleich 2 minus 1, was 1 ist.")
  ]
  #only("2")[
    #voiceover("Daher ist unsere endgültige Lösung x gleich 1 oder x gleich 3. Gut gemacht beim Lösen dieser quadratischen Gleichung mit der p-q-Formel!")
  ]
]