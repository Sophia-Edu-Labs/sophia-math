#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Komplexe Brüche in Dezimalzahlen umwandeln]
  #v(40pt)
  
  #only("1-")[- Nicht alle Brüche haben Nenner, die Potenzen von 10 sind 🤔]
  #v(20pt)
  #only("2-")[- Beispiel: $3/8$ ➡️ Wie umwandeln?]
  #v(20pt)
  #only("3-")[- Lösung: Zähler und Nenner mit demselben Wert multiplizieren]
  #v(20pt)
  #only("4-")[- Ziel: Einen Nenner bekommen, der eine Potenz von 10 ist]

  #only("1")[
    #voiceover("Willkommen zu unserer Lektion über das Umwandeln komplexerer Brüche in Dezimalzahlen. Wir begegnen oft Brüchen in unserem täglichen Leben, aber nicht alle sind so einfach in Dezimalzahlen umzuwandeln wie diejenigen mit Nennern, die Potenzen von zehn sind.")
  ]
  #only("2")[
    #voiceover("Betrachten wir ein Beispiel: Wie würden wir den Bruch drei Achtel in eine Dezimalzahl umwandeln? Es ist nicht sofort klar, oder?")
  ]
  #only("3")[
    #voiceover("Der Schlüssel zur Lösung dieses Problems ist, sowohl den Zähler als auch den Nenner mit demselben Wert zu multiplizieren. Dies ändert den Wert des Bruchs nicht, aber es kann die Umwandlung in eine Dezimalzahl erleichtern.")
  ]
  #only("4")[
    #voiceover("Unser Ziel ist es, den Nenner in eine Potenz von zehn zu verwandeln. Sobald wir das erreicht haben, können wir den Bruch leicht in eine Dezimalzahl umwandeln, wie wir es bereits mit einfacheren Brüchen getan haben.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Der Prozess]
  #v(40pt)
  
  #only("1-")[1️⃣ Den Bruch identifizieren: $3/8$]
  #v(20pt)
  #only("2-")[2️⃣ Eine Zahl finden, mit der multipliziert wird: $125$]
  #v(20pt)
  #only("3-")[3️⃣ Beide Teile multiplizieren: $(3 \cdot 125)/(8 \cdot 125) = 375/1000$]
  #v(20pt)
  #only("4-")[4️⃣ In Dezimalzahl umwandeln: $375/1000 = 0.375$]

  #only("1")[
    #voiceover("Gehen wir den Prozess Schritt für Schritt durch. Wir beginnen mit unserem Bruch, drei Achtel.")
  ]
  #only("2")[
    #voiceover("Als nächstes müssen wir eine Zahl finden, die, wenn sie mit 8 multipliziert wird, eine Potenz von 10 ergibt. In diesem Fall ist diese Zahl 125, weil 8 mal 125 gleich 1000 ist, was 10 hoch 3 ist.")
  ]
  #only("3")[
    #voiceover("Nun multiplizieren wir sowohl den Zähler als auch den Nenner mit 125. Das ergibt 3 mal 125 über 8 mal 125, was sich zu 375 über 1000 vereinfacht.")
  ]
  #only("4")[
    #voiceover("Schließlich können wir dies leicht in eine Dezimalzahl umwandeln. 375 geteilt durch 1000 ist 0,375.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  
  #only("1-")[- Um komplexe Brüche in Dezimalzahlen umzuwandeln:]
  #v(20pt)
  #only("2-")[  1. Zähler und Nenner mit demselben Wert multiplizieren]
  #v(20pt)
  #only("3-")[  2. Ziel ist ein Nenner, der eine Potenz von 10 ist]
  #v(20pt)
  #only("4-")[  3. Dann wie gewohnt umwandeln]
  #v(20pt)
  #only("5-")[- Diese Methode funktioniert bei jedem Bruch! 🎉]

  #only("1")[
    #voiceover("Fassen wir zusammen, was wir über das Umwandeln komplexerer Brüche in Dezimalzahlen gelernt haben.")
  ]
  #only("2")[
    #voiceover("Zuerst multiplizieren wir sowohl den Zähler als auch den Nenner mit demselben Wert.")
  ]
  #only("3")[
    #voiceover("Unser Ziel ist es, einen Nenner zu bekommen, der eine Potenz von zehn ist.")
  ]
  #only("4")[
    #voiceover("Sobald wir das haben, können wir den Bruch in eine Dezimalzahl umwandeln, genau wie wir es mit einfacheren Brüchen tun.")
  ]
  #only("5")[
    #voiceover("Das Schöne an dieser Methode ist, dass sie bei jedem Bruch funktioniert, egal wie komplex er auf den ersten Blick erscheinen mag. Mit etwas Übung wirst du in der Lage sein, Brüche schnell und einfach in Dezimalzahlen umzuwandeln!")
  ]
]