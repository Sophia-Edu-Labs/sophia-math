#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hydraulikheber-Problem]
#v(40pt)
#only("1-")[- Ein 6000 kg schwerer Schiffsmotor um 2,0 m anheben 🚢]
#v(20pt)
#only("2-")[- Pumpkolbenfläche: 5,0 cm² 🔺]
#v(20pt)
#only("3-")[- Presskolbenfläche: 400 cm² 🔻]
#v(20pt)
#only("4-")[- Gesucht: Druck in der Flüssigkeit? 🌊]
#only("1")[
#voiceover("Keine Sorge, das war nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen. Wir müssen einen Schiffsmotor mit einer Masse von 6000 kg um eine Höhe von 2,0 Metern mit einem Hydraulikheber anheben.")
]
#only("2")[
#voiceover("Die Fläche des Pumpkolbens beträgt 5,0 Quadratzentimeter.")
]
#only("3")[
#voiceover("Und die Fläche des Presskolbens beträgt 400 Quadratzentimeter.")
]
#only("4")[
#voiceover("Unsere Aufgabe ist es, den Druck in der Flüssigkeit zu finden.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Vorgehensweise]
#v(40pt)
#only("1-")[1. Kraft auf den Presskolben berechnen 🔻]
#v(20pt)
#only("2-")[2. Kraft verwenden, um den Druck zu finden 🌊]
#only("1")[
#voiceover("Um dies zu lösen, berechnen wir zuerst die Kraft, die auf den Presskolben wirkt.")
]
#only("2")[
#voiceover("Dann verwenden wir diese Kraft, um den Druck in der Flüssigkeit zu bestimmen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Kraft auf den Presskolben]
#v(40pt)
#only("1-")[- Kraft = Masse × Beschleunigung]
#v(20pt)
#only("2-")[$ F = m g $]
#v(20pt)
#only("3-")[$ F = 6000 "kg" × 9.81 "m/s²" $]
#v(20pt)
#only("4-")[$ F = 58860 "N" $]
#only("1")[
#voiceover("Die Kraft auf den Presskolben ist das Gewicht des Schiffsmotors, also seine Masse mal die Beschleunigung durch die Schwerkraft.")
]
#only("2")[
#voiceover("Die Kraft F ist also gleich der Masse m mal g, der Gravitationsbeschleunigung.")
]
#only("3")[
#voiceover("Wenn wir die Werte einsetzen, haben wir 6000 Kilogramm mal 9,81 Meter pro Sekunde zum Quadrat.")
]
#only("4")[
#voiceover("Das ergibt eine Kraft von 58860 Newton.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Druck in der Flüssigkeit]
#v(40pt)
#only("1-")[- Druck = Kraft ÷ Fläche]
#v(20pt)
#only("2-")[$ P = F / A $]
#v(20pt)
#only("3-")[$ P = 58860 "N" / 400 "cm²" $]
#v(20pt)
#only("4-")[$ P = 147.15 "N/cm²" $]
#v(20pt)
#only("5-")[$ P = 14.715 "N/mm²" = 14.7 "bar" $]
#only("1")[
#voiceover("Nun, der Druck ist definiert als Kraft pro Flächeneinheit.")
]
#only("2")[
#voiceover("Der Druck P ist also gleich der Kraft F geteilt durch die Fläche A.")
]
#only("3")[
#voiceover("Wir haben eine Kraft von 58860 Newton und eine Fläche von 400 Quadratzentimetern für den Presskolben.")
]
#only("4")[
#voiceover("Wenn wir diese Werte teilen, erhalten wir einen Druck von 147,15 Newton pro Quadratzentimeter.")
]
#only("5")[
#voiceover("Umgerechnet in Standard-Einheiten entspricht dies 14,715 Newton pro Quadratmillimeter oder ungefähr 14,7 bar.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Kraft auf den Presskolben: $58860 "N"$ 🔻]
#v(20pt)
#only("2-")[- Druck in der Flüssigkeit: $14.7 "bar"$ 🌊]
#only("1")[
#voiceover("Zusammengefasst beträgt die Kraft, die auf den Presskolben wirkt, 58860 Newton.")
]
#only("2")[
#voiceover("Und der Druck in der Hydraulikflüssigkeit beträgt ungefähr 14,7 bar.")
]
]