#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Überblick: Faktorisierung quadratischer Gleichungen 🧮]
  #v(40pt)
  #only("1-")[- Quadratische Gleichungen treten in vielen realen Problemen auf 🌍]
  #only("2-")[- Die Faktorisierung ist eine Schlüsselmethodik, um sie zu lösen ✅]
  #only("3-")[- Lass uns den Prozess Schritt für Schritt durchgehen 📝]
  
  #only("1")[
    #voiceover("Lass uns die Faktorisierung quadratischer Gleichungen durchgehen. Quadratische Gleichungen sind in vielen realen Problemen wichtig, von der Physik bis zur Wirtschaft.")
  ]
  #only("2")[
    #voiceover("Die Faktorisierung ist eine mächtige Methode, um diese Gleichungen zu lösen. Sie ermöglicht es uns, komplexe Ausdrücke in einfachere Teile zu zerlegen.")
  ]
  #only("3")[
    #voiceover("Wir werden den Prozess Schritt für Schritt durchgehen, um unser Verständnis aufzufrischen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Faktorisierungsprozess 🔍]
  #v(40pt)
  #only("1-")[1️⃣ Identifiziere die quadratische Gleichung: $a x^2 + b x + c = 0$]
  #only("2-")[2️⃣ Schreibe sie als Produkt um: $(x + p)(x + q) = 0$]
  #only("3-")[3️⃣ Finde $p$ und $q$, wobei $p + q = b/a$ und $p \cdot q = c/a$]
  #only("4-")[4️⃣ Löse: $x = -p$ oder $x = -q$]
  
  #only("1")[
    #voiceover("Zuerst identifizieren wir unsere quadratische Gleichung in der Standardform a x quadrat plus b x plus c gleich null.")
  ]
  #only("2")[
    #voiceover("Als nächstes versuchen wir, dies als Produkt von zwei Binomen umzuschreiben: x plus p mal x plus q gleich null.")
  ]
  #only("3")[
    #voiceover("Um p und q zu finden, verwenden wir zwei Bedingungen: p plus q gleich b durch a und p mal q gleich c durch a.")
  ]
  #only("4")[
    #voiceover("Schließlich lösen wir die Gleichung. Die Lösungen sind x gleich minus p oder x gleich minus q.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Beispiel und Zusammenfassung 📚]
  #v(20pt)
  #only("1-")[Beispiel: $x^2 + 5x + 6 = 0$]
  #only("2-")[$(x + 2)(x + 3) = 0$]
  #only("3-")[Lösungen: $x = -2$ oder $x = -3$]
  #v(20pt)
  #only("4-")[Zusammenfassung:
  - Die Faktorisierung vereinfacht das Lösen 🔑
  - Funktioniert für viele quadratische Gleichungen 📊
  - Übung verbessert Geschwindigkeit und Genauigkeit 🏋️]
  
  #only("1")[
    #voiceover("Schauen wir uns ein schnelles Beispiel an. Betrachte die Gleichung x quadrat plus 5x plus 6 gleich null.")
  ]
  #only("2")[
    #voiceover("Wir können dies faktorisieren als x plus 2 mal x plus 3 gleich null.")
  ]
  #only("3")[
    #voiceover("Die Lösungen sind x gleich minus 2 oder x gleich minus 3.")
  ]
  #only("4")[
    #voiceover("Zusammenfassend vereinfacht die Faktorisierung den Prozess des Lösens quadratischer Gleichungen. Sie funktioniert für viele quadratische Gleichungen, und mit Übung wirst du deine Geschwindigkeit und Genauigkeit verbessern.")
  ]
]