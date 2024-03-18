#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Bernoulli-Verteilung: Lotterie]
#v(20pt)
#only("2-")[Erfolg: Gewinn > Lospreis]
#v(20pt)
#only("3-")[Erfolg bei:]
#v(10pt)
#only("4-")[
- Kleiner Gewinn (50%): 15 Euro
- Großer Gewinn (10%): 20 Euro
]
#v(20pt)
#only("5-")[$p = P("Kleiner Gewinn") + P("Großer Gewinn")$]
#v(10pt)
#only("6-")[$p = 0.5 + 0.1 = 0.6$]
#only("1")[
#voiceover("Das stimmt, klasse! Lass uns die Lösung anschauen.")
]
#only("2")[
#voiceover("Ein Erfolg liegt vor, wenn der Gewinn größer ist als der Preis für das Los.")
]
#only("3")[
#voiceover("Das ist bei zwei Arten von Losen der Fall:")
]
#only("4")[
#voiceover("Beim kleinen Gewinn mit 50% Wahrscheinlichkeit und beim großen Gewinn mit 10% Wahrscheinlichkeit.")
]
#only("5")[
#voiceover("Die Erfolgswahrscheinlichkeit p ist die Summe der Wahrscheinlichkeiten für einen kleinen und einen großen Gewinn.")
]
#only("6")[
#voiceover("Also ist p gleich 0.5 plus 0.1, was 0.6 ergibt.")
]
]
