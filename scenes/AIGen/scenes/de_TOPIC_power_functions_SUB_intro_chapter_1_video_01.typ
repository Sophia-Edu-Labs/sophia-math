#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Einführung in kubische Funktionen]
  #v(40pt)
  
  #only("1-")[Stell dir vor, du entwirfst eine Achterbahn... 🎢]
  #v(20pt)
  #only("2-")[Wie erzeugst du glatte Kurven? 🤔]
  #v(20pt)
  #only("3-")[Hier kommen kubische Funktionen ins Spiel! 📈]
  #v(20pt)
  #only("4-")[Sie bieten mehr Flexibilität als quadratische Funktionen]
  
  #only("1")[
    #voiceover("Willkommen zu unserer Einführung in kubische Funktionen! Beginnen wir mit einem realen Szenario.")
  ]
  #only("2")[
    #voiceover("Stell dir vor, du entwirfst eine Achterbahn. Du möchtest glatte, interessante Kurven erzeugen, die aufregend sind, ohne zu ruckartig zu wirken. Wie würdest du diese Kurven mathematisch beschreiben?")
  ]
  #only("3")[
    #voiceover("Hier kommen kubische Funktionen ins Spiel!")
  ]
  #only("4")[
    #voiceover("Kubische Funktionen bieten mehr Flexibilität bei der Gestaltung von Kurven im Vergleich zu quadratischen Funktionen, was sie perfekt für Aufgaben wie das Design von Achterbahnen macht.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Was ist eine kubische Funktion?]
  #v(40pt)
  
  #only("1-")[Allgemeine Form: $f(x) = a x^3 + b x^2 + c x + d$]
  #v(20pt)
  #only("2-")[Wobei $a$, $b$, $c$ und $d$ Konstanten sind]
  #v(20pt)
  #only("3-")[Und $a ≠ 0$]
  #v(20pt)
  #only("4-")[Beispiel: $f(x) = 2x^3 - 3x^2 + 4x - 1$]
  
  #only("1")[
    #voiceover("Was genau ist also eine kubische Funktion? Eine kubische Funktion hat die allgemeine Form, wie hier gezeigt.")
  ]
  #only("2")[
    #voiceover("In dieser Gleichung sind a, b, c und d Konstanten. Das bedeutet, dass es feste Zahlen sind, die sich nicht ändern.")
  ]
  #only("3")[
    #voiceover("Es ist wichtig zu beachten, dass a nicht null sein darf. Wenn a null wäre, hätten wir keine kubische Funktion mehr!")
  ]
  #only("4")[
    #voiceover("Schauen wir uns ein Beispiel an. Hier ist eine kubische Funktion, bei der a 2, b minus 3, c 4 und d minus 1 ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung: Kubische Funktionen]
  #v(40pt)
  
  #only("1-")[✅ Kubische Funktionen: $f(x) = a x^3 + b x^2 + c x + d$]
  #v(20pt)
  #only("2-")[✅ $a$, $b$, $c$, $d$ sind Konstanten, $a ≠ 0$]
  #v(20pt)
  #only("3-")[✅ Flexibler als quadratische Funktionen]
  #v(20pt)
  #only("4-")[✅ Nützlich in realen Anwendungen (z.B. Achterbahnen)]
  
  #only("1")[
    #voiceover("Lass uns zusammenfassen, was wir über kubische Funktionen gelernt haben.")
  ]
  #only("2")[
    #voiceover("Erstens wissen wir, dass kubische Funktionen die Form f von x gleich a x hoch drei plus b x hoch zwei plus c x plus d haben, wobei a, b, c und d Konstanten sind und a nicht gleich null ist.")
  ]
  #only("3")[
    #voiceover("Wir haben auch gelernt, dass kubische Funktionen mehr Flexibilität bei der Gestaltung von Kurven bieten als quadratische Funktionen.")
  ]
  #only("4")[
    #voiceover("Schließlich haben wir gesehen, wie kubische Funktionen in realen Anwendungen nützlich sein können, wie zum Beispiel beim Design von Achterbahnen. In unseren nächsten Lektionen werden wir tiefer in die Eigenschaften und Verhaltensweisen von kubischen Funktionen eintauchen!")
  ]
]