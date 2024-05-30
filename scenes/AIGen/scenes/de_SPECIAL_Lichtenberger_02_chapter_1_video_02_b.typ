#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Überdruckberechnung]
#v(40pt)
#only("1-")[Gegeben:]
#only("1-")[- Druck im Erdgeschoss: 4,0 bar]
#only("2-")[- Höhenunterschied: 14 m]
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lassen Sie uns trotzdem Schritt für Schritt durchgehen, wie man das Problem löst. Es ist gegeben, dass der Druck im Erdgeschoss 4,0 bar beträgt und dass das Wasserrohr, das uns interessiert, 14 Meter höher liegt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Druckformel]
#v(40pt)
#only("1-")[$ P = P_("Erdgeschoss") + ρ ⋅ g ⋅ h $]
#only("1-")[Wo:]
#only("1-")[- $P$: Druck in Höhe $h$]
#only("1-")[- $P_("Erdgeschoss")$: Druck im Erdgeschoss]
#only("2-")[- $ρ$: Dichte des Wassers (1000 kg/m³)]
#only("2-")[- $g$: Erdbeschleunigung (9,81 m/s²)]
#only("2-")[- $h$: Höhenunterschied]
#only("1")[
#voiceover("Um den Druck in einer anderen Höhe zu berechnen, verwenden wir die Formel: Druck ist gleich dem Druck im Erdgeschoss plus das Produkt aus der Dichte des Wassers, der Erdbeschleunigung und dem Höhenunterschied.")
]
#only("2")[
#voiceover("Hierbei steht ρ für die Dichte des Wassers, die 1000 Kilogramm pro Kubikmeter beträgt, g ist die Erdbeschleunigung, die 9,81 Meter pro Sekunde zum Quadrat beträgt, und h ist der Höhenunterschied, in diesem Fall 14 Meter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Berechnung]
#v(40pt)
#only("1-")[$ P = 4,0 "bar" + 1000 "kg/m³" ⋅ 9,81 "m/s²" ⋅ 14 "m" $]
#only("2-")[$ P ≈ 4,0 "bar" + 1,37 "bar" $]
#only("3-")[$ P ≈ 5,37 "bar" $]
#only("1")[
#voiceover("Setzen wir die Werte ein. Der Druck beträgt 4,0 bar plus 1000 Kilogramm pro Kubikmeter mal 9,81 Meter pro Sekunde zum Quadrat mal 14 Meter.")
]
#only("2")[
#voiceover("Das ergibt ungefähr 4,0 bar plus 1,37 bar.")
]
#only("3")[
#voiceover("Addiert man diese, ergibt sich, dass der Druck im vierten Stock ungefähr 5,37 bar beträgt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Ergebnis]
#v(40pt)
#only("1-")[Der Überdruck im Wasserrohr im vierten Stock ist ungefähr 2,6 bar höher als im Erdgeschoss. 🚰]
#only("1")[
#voiceover("Daher ist der Überdruck im Wasserrohr im vierten Stock ungefähr 2,6 bar höher als im Erdgeschoss. Großartige Arbeit bei der Lösung dieses Problems!")
]
]