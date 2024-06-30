#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Einfache Brüche in Dezimalzahlen umwandeln]
  #v(40pt)
  
  #only("1-")[- Sarah hat 3/4 einer Pizza 🍕]
  #v(20pt)
  #only("2-")[- Wie viel ist das in Dezimalform? 🤔]
  #v(20pt)
  #only("3-")[- Wir brauchen eine Methode, um Brüche in Dezimalzahlen umzuwandeln! 🔢]

  #only("1")[
    #voiceover("Stell dir vor, Sarah hat drei Viertel einer Pizza übrig. Das ist leicht vorstellbar, oder?")
  ]
  #only("2")[
    #voiceover("Aber was, wenn wir diesen Betrag als Dezimalzahl ausdrücken wollen? Wie machen wir das?")
  ]
  #only("3")[
    #voiceover("Hier brauchen wir eine Methode, um Brüche in Dezimalzahlen umzuwandeln. Lass uns lernen, wie das geht, besonders wenn der Nenner keine Zehnerpotenz ist.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Herausforderung]
  #v(40pt)
  
  #only("1-")[- Einfach: 1/10 = 0.1, 3/100 = 0.03 ✅]
  #v(20pt)
  #only("2-")[- Aber was ist mit 3/4? 🤷‍♀️]
  #v(20pt)
  #only("3-")[- Wir müssen den Nenner zu einer Zehnerpotenz machen! 💡]

  #only("1")[
    #voiceover("Wir wissen, wie man Brüche in Dezimalzahlen umwandelt, wenn der Nenner bereits eine Zehnerpotenz ist. Zum Beispiel ist ein Zehntel null Komma eins, und drei Hundertstel sind null Komma null drei.")
  ]
  #only("2")[
    #voiceover("Aber was ist mit drei Vierteln? Der Nenner ist keine Zehnerpotenz, also können wir es nicht direkt als Dezimalzahl schreiben.")
  ]
  #only("3")[
    #voiceover("Der Schlüssel ist, den Bruch so zu transformieren, dass sein Nenner eine Zehnerpotenz wird. Lass uns sehen, wie wir das machen können!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Lösung]
  #v(40pt)
  
  #only("1-")[- Zähler und Nenner mit derselben Zahl multiplizieren]
  #v(20pt)
  #only("2-")[$ 3/4 = (3 dot 25)/(4 dot 25) = 75/100 = 0.75 $]
  #v(20pt)
  #only("3-")[- Wir haben 25 gewählt, weil 4 × 25 = 100 (Zehnerpotenz) 🎯]

  #only("1")[
    #voiceover("Hier ist der Trick: Wir können sowohl den Zähler als auch den Nenner mit derselben Zahl multiplizieren. Das ändert den Wert des Bruchs nicht, kann uns aber einen Nenner geben, der eine Zehnerpotenz ist.")
  ]
  #only("2")[
    #voiceover("Versuchen wir das mit unserem Drei-Viertel-Beispiel. Wir multiplizieren sowohl oben als auch unten mit fünfundzwanzig. Drei mal fünfundzwanzig ist fünfundsiebzig, und vier mal fünfundzwanzig ist hundert. Also sind drei Viertel gleich fünfundsiebzig Hundertstel, was wir leicht als null Komma sieben fünf schreiben können.")
  ]
  #only("3")[
    #voiceover("Wir haben fünfundzwanzig gewählt, weil, wenn man es mit vier multipliziert, ergibt es hundert, was eine Zehnerpotenz ist. Das ist der Schlüssel zu unserer Methode!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  
  #only("1-")[- Um einen Bruch in eine Dezimalzahl umzuwandeln:]
  #v(20pt)
  #only("2-")[1. Zähler und Nenner mit derselben Zahl multiplizieren]
  #v(20pt)
  #only("3-")[2. Wähle eine Zahl, die den Nenner zu einer Zehnerpotenz macht]
  #v(20pt)
  #only("4-")[3. Teile den neuen Zähler durch den neuen Nenner]

  #only("1")[
    #voiceover("Lass uns unsere Methode zusammenfassen, um Brüche in Dezimalzahlen umzuwandeln, wenn der Nenner nicht bereits eine Zehnerpotenz ist.")
  ]
  #only("2")[
    #voiceover("Erstens multiplizieren wir sowohl den Zähler als auch den Nenner mit derselben Zahl. Das stellt sicher, dass sich der Wert des Bruchs nicht ändert.")
  ]
  #only("3")[
    #voiceover("Zweitens wählen wir diese Zahl sorgfältig aus, damit sie den Nenner zu einer Zehnerpotenz macht. Das kann etwas Versuch und Irrtum oder schnelles Kopfrechnen erfordern.")
  ]
  #only("4")[
    #voiceover("Schließlich teilen wir den neuen Zähler durch den neuen Nenner, der jetzt eine Zehnerpotenz ist, und erhalten so unser Dezimalergebnis. Und das war's! Du kannst jetzt jeden einfachen Bruch in eine Dezimalzahl umwandeln.")
  ]
]