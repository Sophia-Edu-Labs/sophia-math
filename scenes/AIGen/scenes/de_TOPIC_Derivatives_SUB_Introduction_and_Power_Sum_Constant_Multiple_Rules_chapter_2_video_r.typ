#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Summenregel für Ableitungen 📊]
  #v(40pt)
  #only("1-")[- Ableitungen sind in der Analysis entscheidend 📈]
  #only("2-")[- Die Summenregel vereinfacht komplexe Ableitungsberechnungen 🧮]
  #only("3-")[- Lass uns die Summenregel mit einem Beispiel überprüfen 🔍]
  
  #only("1")[
    #voiceover("Lass uns die Summenregel für Ableitungen, ein Schlüsselkonzept in der Analysis, überprüfen.")
  ]
  #only("2")[
    #voiceover("Die Summenregel ist ein mächtiges Werkzeug, das den Prozess der Ableitung komplexer Funktionen vereinfacht.")
  ]
  #only("3")[
    #voiceover("Wir werden die Summenregel durchgehen und sie mit einem Beispiel veranschaulichen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Aussage der Summenregel 📜]
  #v(40pt)
  #only("1-")[Die Summenregel besagt:]
  #v(20pt)
  #only("2-")[$dif/"dx" (f(x) + g(x)) = dif/"dx" f(x) + dif/"dx" g(x)$]
  #v(20pt)
  #only("3-")[Dabei sind $f(x)$ und $g(x)$ differenzierbare Funktionen]
  
  #only("1")[
    #voiceover("Die Summenregel für Ableitungen kann wie folgt formuliert werden:")
  ]
  #only("2")[
    #voiceover("Die Ableitung einer Summe von Funktionen ist gleich der Summe ihrer Ableitungen. In mathematischer Notation schreiben wir dies als: Die Ableitung von f von x plus g von x bezüglich x ist gleich der Ableitung von f von x plus der Ableitung von g von x.")
  ]
  #only("3")[
    #voiceover("Diese Regel gilt, wenn sowohl f von x als auch g von x differenzierbare Funktionen sind.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendungsbeispiel 🔢]
  #v(40pt)
  #only("1-")[Lass uns differenzieren: $y = x^2 + sin(x)$]
  #v(20pt)
  #only("2-")[Schritt 1: Funktionen identifizieren]
  #only("3-")[$f(x) = x^2$]
  #only("4-")[$g(x) = sin(x)$]
  #v(20pt)
  #only("5-")[Schritt 2: Jede Funktion differenzieren]
  #only("6-")[$dif/"dx" f(x) = 2x$]
  #only("7-")[$dif/"dx" g(x) = cos(x)$]
  #v(20pt)
  #only("8-")[Schritt 3: Die Ableitungen summieren]
  #only("9-")[$dif/"dx" y = 2x + cos(x)$]
  
  #only("1")[
    #voiceover("Lass uns die Summenregel anwenden, um die Funktion y gleich x Quadrat plus Sinus von x zu differenzieren.")
  ]
  #only("2")[
    #voiceover("Zuerst identifizieren wir die beiden addierten Funktionen.")
  ]
  #only("3")[
    #voiceover("Wir haben f von x gleich x Quadrat")
  ]
  #only("4")[
    #voiceover("und g von x gleich Sinus von x.")
  ]
  #only("5")[
    #voiceover("Als nächstes differenzieren wir jede Funktion separat.")
  ]
  #only("6")[
    #voiceover("Die Ableitung von x Quadrat ist 2x")
  ]
  #only("7")[
    #voiceover("und die Ableitung von Sinus von x ist Cosinus von x.")
  ]
  #only("8")[
    #voiceover("Schließlich summieren wir diese Ableitungen.")
  ]
  #only("9")[
    #voiceover("Somit ist die Ableitung von y gleich 2x plus Cosinus von x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
  #v(40pt)
  #only("1-")[- Summenregel: $dif/"dx" (f(x) + g(x)) = dif/"dx" f(x) + dif/"dx" g(x)$ 🔑]
  #only("2-")[- Vereinfacht Ableitungsberechnungen 🧮]
  #only("3-")[- Gilt für jede Anzahl additiver Terme ➕]
  #only("4-")[- Wesentlich für die Differenzierung komplexer Funktionen 📊]
  
  #only("1")[
    #voiceover("Zusammenfassend besagt die Summenregel für Ableitungen, dass die Ableitung einer Summe gleich der Summe der Ableitungen ist.")
  ]
  #only("2")[
    #voiceover("Diese Regel vereinfacht den Prozess der Berechnung von Ableitungen komplexer Funktionen erheblich.")
  ]
  #only("3")[
    #voiceover("Es ist wichtig zu beachten, dass diese Regel auf jede Anzahl additiver Terme erweitert werden kann.")
  ]
  #only("4")[
    #voiceover("Das Verständnis und die Anwendung der Summenregel ist wesentlich für die Differenzierung komplexerer Funktionen in der Analysis.")
  ]
]