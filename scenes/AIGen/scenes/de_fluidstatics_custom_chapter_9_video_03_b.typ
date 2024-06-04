#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Maximale Leistungsabgabe]
#v(40pt)
#only("1-")[- Gegeben: $E = 245250$ J, $t = 1$ s]
#v(20pt)
#only("2-")[- Formel: $P = E / t$]
#v(20pt)
#only("3-")[- Berechnung: $P = 245250 / 1 = 245250$ W]
#v(20pt)
#only("4-")[- Antwort: $P = 245250$ W 💡]

#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns trotzdem Schritt für Schritt sehen, wie wir das lösen können. Es ist gegeben, dass die Energie E 245250 Joule und die Zeit t 1 Sekunde beträgt.")
]

#only("2")[
#voiceover("Um die Leistung P zu finden, verwenden wir die Formel P gleich E geteilt durch t, wobei E die Energie und t die Zeit ist.")
]

#only("3")[
#voiceover("Wenn wir die Werte einsetzen, erhalten wir P gleich 245250 geteilt durch 1, was uns 245250 ergibt.")
]

#only("4")[
#voiceover("Daher beträgt die theoretische maximale Leistungsabgabe 245250 Watt. Gut gemacht!")
]
]