#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Kettenregel und Produktregel kombinieren]
  #v(40pt)

  #only("1-")[📚 Komplexe Funktionen in der Analysis]
  #v(20pt)
  #only("2-")[🔗 Kettenregel: Für zusammengesetzte Funktionen]
  #v(20pt)
  #only("3-")[✖️ Produktregel: Für multiplizierte Funktionen]
  #v(20pt)
  #only("4-")[🤝 Manchmal brauchen wir beide!]

  #only("1")[
    #voiceover("In der Analysis stoßen wir oft auf komplexe Funktionen, die mehrere Differenzierungsregeln erfordern. Heute werden wir eine Situation untersuchen, in der wir zwei wichtige Regeln kombinieren müssen: die Kettenregel und die Produktregel.")
  ]
  #only("2")[
    #voiceover("Du erinnerst Dich vielleicht an die Kettenregel, die wir zum Differenzieren von zusammengesetzten Funktionen verwenden - also Funktionen innerhalb von Funktionen.")
  ]
  #only("3")[
    #voiceover("Und Du kennst wahrscheinlich die Produktregel, die wir verwenden, wenn wir das Produkt von zwei Funktionen differenzieren.")
  ]
  #only("4")[
    #voiceover("Aber was passiert, wenn wir auf eine Funktion stoßen, die sowohl ein Produkt als auch eine Zusammensetzung ist? Dann müssen wir diese Regeln kombinieren. Schauen wir uns ein Beispiel an, um das besser zu verstehen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Beispiel: $f(x) = x^2 \sin(x^3)$]
  #v(40pt)

  #only("1-")[🔍 Struktur identifizieren:]
  #v(20pt)
  #only("2-")[   - Produkt: $x^2$ und $\sin(x^3)$]
  #v(20pt)
  #only("3-")[   - Zusammensetzung: $\sin(x^3)$]
  #v(20pt)
  #only("4-")[🧮 Wir brauchen beide Regeln!]

  #only("1")[
    #voiceover("Betrachten wir die Funktion f von x gleich x Quadrat mal Sinus von x hoch drei. Wie würden wir diese differenzieren?")
  ]
  #only("2")[
    #voiceover("Zuerst müssen wir die Struktur dieser Funktion erkennen. Es ist ein Produkt aus zwei Teilen: x Quadrat und Sinus von x hoch drei.")
  ]
  #only("3")[
    #voiceover("Aber es gibt noch mehr. Der Sinus von x hoch drei ist eine zusammengesetzte Funktion - es ist der Sinus von etwas, und dieses Etwas ist x hoch drei.")
  ]
  #only("4")[
    #voiceover("Das bedeutet, dass wir sowohl die Produktregel als auch die Kettenregel anwenden müssen, um diese Funktion korrekt zu differenzieren.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)

  #only("1-")[🔀 Komplexe Funktionen erfordern möglicherweise mehrere Regeln]
  #v(20pt)
  #only("2-")[🧠 Analysiere die Struktur der Funktion]
  #v(20pt)
  #only("3-")[🛠️ Wende die Regeln in der richtigen Reihenfolge an]
  #v(20pt)
  #only("4-")[💪 Übung macht den Meister!]

  #only("1")[
    #voiceover("Zusammenfassend lässt sich sagen, dass wir bei der Arbeit mit komplexen Funktionen in der Analysis oft verschiedene Differenzierungsregeln kombinieren müssen.")
  ]
  #only("2")[
    #voiceover("Der Schlüssel liegt darin, die Struktur der Funktion sorgfältig zu analysieren. Ist es ein Produkt? Eine Zusammensetzung? Oder beides?")
  ]
  #only("3")[
    #voiceover("Sobald Du die Struktur erkannt hast, kannst Du die notwendigen Regeln in der richtigen Reihenfolge anwenden, um die Ableitung zu finden.")
  ]
  #only("4")[
    #voiceover("Denke daran, dass es Übung braucht, um diese Fähigkeit zu meistern. Je mehr komplexe Funktionen Du begegnest und löst, desto besser wirst Du darin, zu erkennen, wann und wie Du diese Regeln kombinieren musst.")
  ]
]