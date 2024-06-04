#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[- Gegeben: $p = 1471500 "Pa"$, $A = 5 "cm"^2$]
#v(20pt)
#only("2-")[- Fläche in $"m"^2$ umrechnen: $A = 0.0005 "m"^2$]
#v(20pt)
#only("3-")[- Formel verwenden: $F = p dot A$]
#v(20pt)
#only("4-")[- Einsetzen: $F = 1471500 "Pa" dot 0.0005 "m"^2$]
#v(20pt)
#only("5-")[- Berechnen: $F = 735.75 "N"$]
#only("1")[
#voiceover("Leider ist das nicht korrekt. 😔 Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben den Druck $p$ mit 1471500 Pascal und die Fläche $A$ des Pumpenkolbens mit 5 Quadratzentimetern gegeben.")
]
#only("2")[
#voiceover("Zuerst müssen wir die Fläche von Quadratzentimetern in Quadratmeter umrechnen, da der Druck in Pascal angegeben ist, was Newton pro Quadratmeter entspricht. 5 Quadratzentimeter sind gleich 0.0005 Quadratmeter.")
]
#only("3")[
#voiceover("Als nächstes verwenden wir die Formel $F = p dot A$, wobei $F$ die Kraft, $p$ der Druck und $A$ die Fläche ist.")
]
#only("4")[
#voiceover("Setzen wir die Werte ein, erhalten wir $F = 1471500 "Pa" dot 0.0005 "m"^2$.")
]
#only("5")[
#voiceover("Wenn wir das berechnen, erhalten wir $F = 735.75 "N"$. Daher beträgt die notwendige Kraft der Pumpe 735.75 Newton. 💪")
]
]