#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Problem]
#v(40pt)
#only("1-")[Berechne den neuen Wasserdruck im Erdgeschoss, wenn der Wasserspiegel um 2 m sinkt. Verwende $ p = rho dot g dot h $. (Antwort in bar)]
#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Gegeben]
#v(40pt)
#only("1-")[- Wasserspiegel sinkt um 2 m]
#v(20pt)
#only("2-")[- $ rho $ von Wasser = 1000 kg/m³]
#v(20pt)
#only("3-")[- $ g $ = 9,81 m/s²]
#v(20pt) 
#only("4-")[- Ursprünglicher Druck im Erdgeschoss = 4 bar]
#only("1")[
#voiceover("Es ist gegeben, dass der Wasserspiegel um 2 Meter sinkt.")
]
#only("2")[
#voiceover("Wir wissen auch, dass die Dichte von Wasser, bezeichnet mit rho, 1000 Kilogramm pro Kubikmeter beträgt.")
]
#only("3")[
#voiceover("Die Erdbeschleunigung, bezeichnet mit g, beträgt 9,81 Meter pro Sekunde zum Quadrat.")
]
#only("4")[
#voiceover("Und der ursprüngliche Druck im Erdgeschoss betrug 4 bar.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1]
#v(40pt)
#only("1-")[Berechne die Druckänderung ($Δp$) aufgrund des 2 m Abfalls des Wasserspiegels.]
#v(20pt)
#only("2-")[$ Δp = rho dot g dot Δh $]
#v(20pt)
#only("3-")[$ Δp = 1000 dot 9.81 dot 2 $]
#v(20pt)
#only("4-")[$ Δp = 19620 $ Pa]
#only("1")[
#voiceover("Zuerst müssen wir die Druckänderung, bezeichnet mit delta p, aufgrund des 2 Meter Abfalls des Wasserspiegels berechnen.")
]
#only("2")[
#voiceover("Wir können die Formel delta p gleich rho mal g mal delta h verwenden, wobei delta h die Höhenänderung ist.")
]
#only("3")[
#voiceover("Indem wir die Werte einsetzen, erhalten wir delta p gleich 1000 mal 9,81 mal 2.")
]
#only("4")[
#voiceover("Dies ergibt eine Druckänderung von 19620 Pascal.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2]
#v(40pt)
#only("1-")[Konvertiere $Δp$ von Pascal in bar.]
#v(20pt)
#only("2-")[1 bar = 100000 Pa]
#v(20pt)
#only("3-")[$ Δp = (19620 / 100000) $ bar]
#v(20pt)
#only("4-")[$ Δp = 0.1962 $ bar]
#only("1")[
#voiceover("Als nächstes müssen wir diese Druckänderung von Pascal in bar umrechnen.")
]
#only("2")[
#voiceover("Wir wissen, dass 1 bar gleich 100000 Pascal ist.")
]
#only("3")[
#voiceover("Also können wir 19620 durch 100000 teilen, um die Druckänderung in bar zu erhalten.")
]
#only("4")[
#voiceover("Dies ergibt eine Druckänderung von 0,1962 bar.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3]
#v(40pt)
#only("1-")[Berechne den neuen Druck im Erdgeschoss.]
#v(20pt)
#only("2-")[Neuer Druck = Ursprünglicher Druck - $Δp$]
#v(20pt)
#only("3-")[Neuer Druck = 4 - 0.1962]
#v(20pt)
#only("4-")[Neuer Druck = 3.8038 bar 🎉]
#only("1")[
#voiceover("Schließlich können wir den neuen Druck im Erdgeschoss berechnen.")
]
#only("2")[
#voiceover("Der neue Druck wird der ursprüngliche Druck minus der Druckänderung sein.")
]
#only("3")[
#voiceover("Also nehmen wir 4 und ziehen 0,1962 ab.")
]
#only("4")[
#voiceover("Dies ergibt einen neuen Druck im Erdgeschoss von 3,8038 bar. Und das ist die Lösung!")
]
]