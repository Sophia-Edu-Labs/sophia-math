#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Einführung in Quadratische Funktionen]
  #v(40pt)
  
  #only("1-")[📈 Parabolische Form im Alltag:]
  #v(20pt)
  #only("2-")[- 🏀 Flugbahn eines Basketballs]
  #v(20pt)
  #only("3-")[- 💡 Licht von Autoscheinwerfern]
  #v(20pt)
  #only("4-")[- 🌊 Wasserfontäne]

  #only("1")[
    #voiceover("Willkommen zu unserer Einführung in quadratische Funktionen. Hast Du Dich jemals gefragt, warum bestimmte Dinge in der Natur einer gekrümmten Bahn folgen?")
  ]
  #only("2")[
    #voiceover("Zum Beispiel, wenn Du einen Basketball wirfst, folgt er einer gekrümmten Bahn durch die Luft.")
  ]
  #only("3")[
    #voiceover("Oder betrachte den Lichtstrahl von Autoscheinwerfern, der eine gekrümmte Form auf der Straße bildet.")
  ]
  #only("4")[
    #voiceover("Selbst der Wasserstrahl einer Fontäne bildet einen schönen gekrümmten Bogen. Dies sind alles Beispiele für quadratische Funktionen in Aktion!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Quadratische Funktion]
  #v(40pt)
  
  #only("1-")[Allgemeine Form: $ f(x) = a x^2 + b x + c $]
  #v(20pt)
  #only("2-")[Wo:]
  #v(10pt)
  #only("3-")[- $a ≠ 0$ (Koeffizient von $x^2$)]
  #v(10pt)
  #only("4-")[- $b$ (Koeffizient von $x$)]
  #v(10pt)
  #only("5-")[- $c$ (Konstante)]

  #only("1")[
    #voiceover("Eine quadratische Funktion hat eine spezifische Form. Sie wird allgemein als f von x gleich a x Quadrat plus b x plus c geschrieben.")
  ]
  #only("2")[
    #voiceover("Lass uns aufschlüsseln, was jeder Teil bedeutet:")
  ]
  #only("3")[
    #voiceover("a ist der Koeffizient von x Quadrat. Es ist wichtig zu beachten, dass a nicht null sein kann, denn wenn es null wäre, hätten wir keine quadratische Funktion.")
  ]
  #only("4")[
    #voiceover("b ist der Koeffizient von x.")
  ]
  #only("5")[
    #voiceover("Und c ist die Konstante. Alle diese - a, b und c - sind Konstanten, das heißt, sie sind feste Zahlen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung: Quadratische Funktionen]
  #v(40pt)
  
  #only("1-")[📊 Form: $ f(x) = a x^2 + b x + c $]
  #v(20pt)
  #only("2-")[🔑 Wichtige Punkte:]
  #v(10pt)
  #only("3-")[- $a$, $b$, $c$ sind Konstanten]
  #v(10pt)
  #only("4-")[- $a ≠ 0$]
  #v(10pt)
  #only("5-")[- 📈 Bildet eine Parabelform]

  #only("1")[
    #voiceover("Lass uns zusammenfassen, was wir über quadratische Funktionen gelernt haben.")
  ]
  #only("2")[
    #voiceover("Die wichtigsten Punkte, die Du Dir merken solltest, sind:")
  ]
  #only("3")[
    #voiceover("Erstens, a, b und c sind Konstanten. Das bedeutet, dass sie feste Zahlen sind, die sich nicht ändern.")
  ]
  #only("4")[
    #voiceover("Zweitens, a darf nicht null sein. Wenn a null wäre, hätten wir keine quadratische Funktion mehr.")
  ]
  #only("5")[
    #voiceover("Schließlich bilden quadratische Funktionen eine Parabelform, wenn sie grafisch dargestellt werden. Deshalb sehen wir diese gekrümmte Form in vielen realen Situationen, wie der Flugbahn eines geworfenen Balls oder dem Wasserstrahl einer Fontäne.")
  ]
]