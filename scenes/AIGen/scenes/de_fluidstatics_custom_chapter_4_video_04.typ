#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Heißluftballonflug 🎈]
#v(40pt)
#only("1-")[
- Bestimmt durch Dichteunterschied
]
#v(20pt)
#only("2-")[
- Erhitzte Luft im Ballon vs. kältere Umgebungsluft
]
#only("1")[
#voiceover("Der Flug eines Heißluftballons wird durch den Dichteunterschied bestimmt")
]
#only("2")[
#voiceover("zwischen der erhitzten Luft im Ballon und der kälteren Umgebungsluft.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Benötigte Berechnungen 📐]
#v(40pt)
#only("1-")[
- Volumen des Ballons
]
#v(20pt)
#only("2-")[
- Maximale Höhe, die der Ballon erreichen kann
]
#only("1")[
#voiceover("Um die Flugdynamik zu verstehen, sind Berechnungen für das Volumen des Ballons erforderlich")
]
#only("2")[
#voiceover("und die maximale Höhe, die der Ballon erreichen kann.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Volumenberechnung 🎈]
#v(40pt)
#only("1-")[
- Formel: $ V = m / (rho_"Luft" - rho_"Gas") $
]
#v(20pt)
#only("2-")[
- $m$ = Gesamtmasse (Ballon, Passagiere, Gondel)
- $rho_"Luft"$ = Dichte der Luft
- $rho_"Gas"$ = Dichte des erhitzten Gases
]
#only("1")[
#voiceover("Das Volumen des Ballons wird mit der Formel V gleich m geteilt durch rho Luft minus rho Gas berechnet,")
]
#only("2")[
#voiceover("wobei m die Gesamtmasse einschließlich Ballon, Passagiere und Gondel ist, rho Luft die Dichte der Luft und rho Gas die Dichte des erhitzten Gases im Ballon.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Berechnung der maximalen Höhe 📏]
#v(40pt)
#only("1-")[
- Formel: $ rho_"Luft"(h) = a e^(-b h) $
]
#v(20pt)
#only("2-")[
- $h$ = Höhe
- $a$, $b$ = Konstanten
]
#v(20pt)
#only("3-")[
- Löse für $h$, wenn $ rho_"Luft"(h) = rho_"Gas" $
]
#only("1")[
#voiceover("Die maximale Höhe, die der Ballon erreichen kann, wird mit der Formel rho Luft von h gleich a mal e hoch minus b mal h berechnet,")
]
#only("2")[
#voiceover("wobei h die Höhe und a und b Konstanten sind.")
]
#only("3")[
#voiceover("Um die maximale Höhe zu finden, lösen wir für h, wenn rho Luft von h gleich rho Gas ist, die Dichte des erhitzten Gases im Ballon.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[
- Der Heißluftballonflug hängt vom Dichteunterschied ab
]
#v(20pt)
#only("2-")[
- Berechnungen für Ballonvolumen und maximale Höhe sind erforderlich
]
#v(20pt)
#only("3-")[
- Das Verständnis dieser Prinzipien ist entscheidend für einen sicheren und effizienten Heißluftballonbetrieb 🎈
]
#only("1")[
#voiceover("Zusammenfassend hängt der Flug eines Heißluftballons vom Dichteunterschied zwischen der erhitzten Luft im Inneren und der kälteren Umgebungsluft ab.")
]
#only("2")[
#voiceover("Berechnungen sind erforderlich, um das Ballonvolumen und die maximale Höhe zu bestimmen, die er erreichen kann.")
]
#only("3")[
#voiceover("Das Verständnis dieser Prinzipien ist entscheidend für einen sicheren und effizienten Heißluftballonbetrieb.")
]
]