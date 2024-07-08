#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Einführung in die Produktregel]
  #v(40pt)
  
  #only("1-")[- Differenzierung von Produktfunktionen 📊✖️]
  #v(20pt)
  #only("2-")[- Beispiel: $f(x) = x^2 dot sin(x)$]
  #v(20pt)
  #only("3-")[- Wie differenzieren? 🤔]
  #v(20pt)
  #only("4-")[- Die Produktregel tritt in Erscheinung! 🎉]

  #only("1")[
    #voiceover("Willkommen zu unserer Einführung in die Produktregel der Analysis. Heute werden wir ein mächtiges Werkzeug zur Differenzierung von Funktionen, die Produkte von zwei oder mehr Funktionen sind, erkunden.")
  ]
  #only("2")[
    #voiceover("Lass uns ein Beispiel betrachten, um unsere Diskussion zu motivieren. Stell dir vor, wir haben eine Funktion f von x, die gleich x Quadrat mal Sinus von x ist. Wie würden wir die Ableitung dieser Funktion finden?")
  ]
  #only("3")[
    #voiceover("Auf den ersten Blick mag das herausfordernd erscheinen. Wir wissen, wie man x Quadrat differenziert, und wir wissen, wie man Sinus von x differenziert, aber wie gehen wir mit ihrem Produkt um?")
  ]
  #only("4")[
    #voiceover("Hier kommt die Produktregel ins Spiel. Es ist eine spezielle Regel, die speziell für die Differenzierung von Produkten von Funktionen entwickelt wurde.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Die Produktregel]
  #v(40pt)
  
  #only("1-")[- Für $f(x) = u(x) dot v(x)$]
  #v(20pt)
  #only("2-")[- $f'(x) = u'(x)v(x) + u(x)v'(x)$]
  #v(20pt)
  #only("3-")[- "Erster mal die Ableitung des Zweiten"]
  #v(10pt)
  #only("3-")[- "Plus Zweiter mal die Ableitung des Ersten"]

  #only("1")[
    #voiceover("Die Produktregel wird verwendet, wenn wir eine Funktion f von x haben, die das Produkt von zwei Funktionen ist, nennen wir sie u von x und v von x.")
  ]
  #only("2")[
    #voiceover("Die Regel besagt, dass die Ableitung von f von x gleich der Ableitung von u mal v plus u mal der Ableitung von v ist.")
  ]
  #only("3")[
    #voiceover("Eine praktische Möglichkeit, sich dies zu merken, ist: 'Erster mal die Ableitung des Zweiten, plus Zweiter mal die Ableitung des Ersten'. Diese Eselsbrücke kann dir helfen, die Regel leicht zu erinnern.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung]
  #v(40pt)
  
  #only("1-")[- Produktregel: Zur Differenzierung von Produkten von Funktionen]
  #v(20pt)
  #only("2-")[- Formel: $f'(x) = u'(x)v(x) + u(x)v'(x)$]
  #v(20pt)
  #only("3-")[- Mächtiges Werkzeug im Werkzeugkasten der Analysis 🧰]

  #only("1")[
    #voiceover("Zusammenfassend ist die Produktregel ein entscheidendes Werkzeug in der Analysis zur Differenzierung von Funktionen, die Produkte von zwei oder mehr Funktionen sind.")
  ]
  #only("2")[
    #voiceover("Merke dir die Formel: Die Ableitung von f von x ist gleich u Strich von x mal v von x plus u von x mal v Strich von x.")
  ]
  #only("3")[
    #voiceover("Diese Regel erweitert unsere Fähigkeit, komplexe Funktionen zu differenzieren, erheblich und ist damit eine mächtige Ergänzung zu unserem Werkzeugkasten der Analysis. In der nächsten Lektion werden wir tiefer in die Anwendung dieser Regel auf verschiedene Beispiele eintauchen.")
  ]
]