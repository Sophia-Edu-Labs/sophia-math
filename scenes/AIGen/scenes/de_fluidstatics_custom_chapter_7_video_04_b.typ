#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Schwimmendes Haus Problem 🏠]
#v(40pt)
#only("1-")[
- Gegeben:
  - Gewicht des Hauses: 50 Tonnen (50.000 kg) 
  - Verdrängtes Wasser: 50 m³
  - Tiefgang (Tiefe unter Wasser): 0,5 m
]
#v(20pt)
#only("2-")[
- Gesucht: Oberfläche der Plattform
]
#v(20pt)
#only("3-")[
- Formel: $A = V / "Tiefgang"$
  - $A$: Oberfläche
  - $V$: Volumen des verdrängten Wassers
  - "Tiefgang": Tiefe unter Wasser
]
#only("1")[
#voiceover("Das war leider nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen. Es ist gegeben, dass das schwimmende Haus 50 Tonnen oder 50.000 Kilogramm wiegt und 50 Kubikmeter Wasser verdrängt. Der Tiefgang, also die Tiefe der Plattform unter Wasser, beträgt 0,5 Meter.")
]
#only("2")[
#voiceover("Wir müssen die Oberfläche der Plattform finden.")
]
#only("3")[
#voiceover("Die Formel, die wir verwenden werden, ist A gleich V geteilt durch den Tiefgang, wobei A die Oberfläche, V das Volumen des verdrängten Wassers und der Tiefgang die Tiefe unter Wasser ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Lösung 🧮]
#v(40pt)
#only("1-")[
- Werte einsetzen:
  - $V = 50$ m³
  - "Tiefgang" $= 0,5$ m
]
#v(20pt)
#only("2-")[
- Berechnung:
  $A = 50 / 0,5 = 100$ m²
]
#v(20pt)
#only("3-")[
Daher beträgt die Oberfläche der Plattform 100 Quadratmeter. 🎉
]
#only("1")[
#voiceover("Setzen wir die Werte, die wir kennen, in die Formel ein. Das Volumen des verdrängten Wassers, V, beträgt 50 Kubikmeter, und der Tiefgang beträgt 0,5 Meter.")
]
#only("2")[
#voiceover("Jetzt können wir berechnen. A ist gleich 50 geteilt durch 0,5, was uns 100 ergibt.")
]
#only("3")[
#voiceover("Daher beträgt die Oberfläche der Plattform 100 Quadratmeter. Großartige Arbeit bei der Lösung dieses Problems!")
]
]