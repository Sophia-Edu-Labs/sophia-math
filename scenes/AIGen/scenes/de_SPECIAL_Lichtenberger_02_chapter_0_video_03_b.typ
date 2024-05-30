#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung 2: Pumpenkraft]
#v(40pt)
#only("1-")[
- Gegeben:
  - Druck: $P = 14.7 "bar"$
  - Fläche des Pumpenkolbens: $A_("pump") = 5.0 "cm"^2$
]
#only("2-")[- Formel: $F = P dot A$]
#only("3-")[- Lösung: $F = 14.7 "bar" dot 5.0 "cm"^2 = 73.5 "N"$]
#only("4-")[- Richtige Antwort: 740 N 🎉]

#only("1")[
#voiceover("Das war leider nicht korrekt. Lass uns die Lösung überprüfen. Wir haben einen Druck von 14,7 bar und die Fläche des Pumpenkolbens beträgt 5,0 Quadratzentimeter.")
]
#only("2")[
#voiceover("Um die Kraft zu berechnen, verwenden wir die Formel F gleich P mal A, wobei F die Kraft, P der Druck und A die Fläche ist.")
]
#only("3")[
#voiceover("Setzen wir die Werte ein, erhalten wir F gleich 14,7 bar mal 5,0 Quadratzentimeter, was 73,5 Newton ergibt.")
]
#only("4")[
#voiceover("Die richtige Antwort ist jedoch 740 Newton. Lass uns sehen, warum...")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Einheitenumrechnung]
#v(40pt)
#only("1-")[- Druck: $1 "bar" = 10^5 "Pa"$ (Pascal)]
#only("2-")[- Fläche: $1 "cm"^2 = 10^(-4) "m"^2$]
#only("3-")[- Lösung: $F = 14.7 dot 10^5 "Pa" dot 5.0 dot 10^(-4) "m"^2 = 735 "N" ≈ 740 "N"$]
#only("4-")[- Richtige Antwort: 740 N ✅]

#only("1")[
#voiceover("Der Schlüssel liegt hier in der Einheitenumrechnung. Ein Bar entspricht 10 hoch 5 Pascal.")
]
#only("2")[
#voiceover("Und ein Quadratzentimeter entspricht 10 hoch minus 4 Quadratmeter.")
]
#only("3")[
#voiceover("Wenn wir diese umgerechneten Einheiten einsetzen, erhalten wir F gleich 14,7 mal 10 hoch 5 Pascal mal 5,0 mal 10 hoch minus 4 Quadratmeter. Das ergibt 735 Newton, was auf 740 Newton gerundet wird.")
]
#only("4")[
#voiceover("Und das ist die richtige Antwort, die Du angegeben hast. Fantastische Arbeit! Denke daran, immer Deine Einheiten zu überprüfen und sie gegebenenfalls umzurechnen. 🌟")
]
]