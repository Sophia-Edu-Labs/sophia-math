#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hydraulik Rückblick 🔧]
#v(40pt)
#only("1-")[- Hydraulische Systeme heben schwere Objekte mit Flüssigkeitsdruck an 🏋️]
#only("1")[
#voiceover("Hydraulische Systeme verwenden Flüssigkeitsdruck, um schwere Objekte anzuheben.")
]
#v(20pt)
#only("2-")[- Wichtige Berechnungen beinhalten Kraft, Fläche und Druck 📏]
#only("2")[
#voiceover("Die wichtigsten Berechnungen in der Hydraulik beinhalten Kraft, Fläche und Druck.")
]
#v(20pt)
#only("3-")[$ F = P dot A $]
#only("3")[
#voiceover("Kraft ist gleich Druck mal Fläche.")
]
#v(20pt)
#only("4-")[$ P = F / A $]
#only("4")[
#voiceover("Druck ist gleich Kraft geteilt durch Fläche.")
]
#v(20pt)
#only("5-")[- Druck wird in einer Flüssigkeit gleichmäßig in alle Richtungen übertragen 🌊]
#only("5")[
#voiceover("Druck wird in einer Flüssigkeit gleichmäßig in alle Richtungen übertragen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispielproblem 🧩]
#v(40pt)
#only("1-")[Ein hydraulischer Lift hebt einen 6000 kg schweren Schiffsmotor um 2,0 m an.]
#only("1")[
#voiceover("Betrachten wir ein Beispielproblem. Ein hydraulischer Lift hebt einen 6000 Kilogramm schweren Schiffsmotor um 2,0 Meter an.")
]
#v(20pt)
#only("2-")[- Pumpenkolbenfläche: 5,0 cm²]
#only("2")[
#voiceover("Der Pumpenkolben hat eine Fläche von 5,0 Quadratzentimetern.")
]
#v(10pt)
#only("3-")[- Presskolbenfläche: 400 cm²]
#only("3")[
#voiceover("Der Presskolben hat eine Fläche von 400 Quadratzentimetern.")
]
#v(20pt)
#only("4-")[Berechne:]
#only("4")[
#voiceover("Wir sollen berechnen:")
]
#v(10pt)
#only("5-")[1. Flüssigkeitsdruck]
#only("5")[
#voiceover("Erstens, den Flüssigkeitsdruck.")
]
#v(10pt)
#only("6-")[2. Kraft der Pumpe]
#only("6")[
#voiceover("Zweitens, die Kraft der Pumpe.")
]
#v(10pt)
#only("7-")[3. Anzahl der Pumpenkolbenhübe (jeweils 50 cm)]
#only("7")[
#voiceover("Und drittens, die Anzahl der Pumpenkolbenhübe, wobei jeder Hub 50 Zentimeter beträgt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungen 🎯]
#v(40pt)
#only("1-")[1. Flüssigkeitsdruck: 14,7 bar]
#only("1")[
#voiceover("Der Flüssigkeitsdruck beträgt 14,7 bar.")
]
#v(10pt)
#only("2-")[$ P = (m dot g) / A_("Presskolben") $]
#only("2")[
#voiceover("Dies wird mit der Formel berechnet: Druck ist gleich Masse des Objekts mal Erdbeschleunigung, geteilt durch die Fläche des Presskolbens.")
]
#v(20pt)
#only("3-")[2. Pumpenkraft: 740 N]
#only("3")[
#voiceover("Die Kraft der Pumpe beträgt 740 Newton.")
]
#v(10pt)
#only("4-")[$ F = P dot A_("Pumpenkolben") $]
#only("4")[
#voiceover("Dies wird berechnet als Druck mal Fläche des Pumpenkolbens.")
]
#v(20pt)
#only("5-")[3. Pumpenkolbenhübe: 320]
#only("5")[
#voiceover("Die Anzahl der erforderlichen Pumpenkolbenhübe beträgt 320.")
]
#v(10pt)
#only("6-")[$ n = (A_("Presskolben") / A_("Pumpenkolben")) dot ("Hubhöhe" / "Hublänge") $]
#only("6")[
#voiceover("Dies wird berechnet, indem das Verhältnis der Presskolbenfläche zur Pumpenkolbenfläche mit dem Verhältnis der Hubhöhe zur Hublänge multipliziert wird.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Hydraulik verwendet Flüssigkeitsdruck, um schwere Lasten zu heben 💪]
#only("1")[
#voiceover("Die wichtigsten Erkenntnisse sind: Hydraulik verwendet Flüssigkeitsdruck, um schwere Lasten zu heben.")
]
#v(20pt)
#only("2-")[- Druck, Kraft und Fläche sind miteinander verknüpft 🔄]
#only("2")[
#voiceover("Druck, Kraft und Fläche sind miteinander verknüpft.")
]
#v(20pt)
#only("3-")[- Berechnungen beinhalten Verhältnisse von Kolbenflächen und Distanzen 📐]
#only("3")[
#voiceover("Und Berechnungen beinhalten oft Verhältnisse von Kolbenflächen und Distanzen.")
]
#v(20pt)
#only("4-")[- Das Verständnis dieser Prinzipien ist entscheidend für die Konstruktion von Hydrauliksystemen 🏗️]
#only("4")[
#voiceover("Das Verständnis dieser Prinzipien ist entscheidend für die Konstruktion effektiver Hydrauliksysteme.")
]
]