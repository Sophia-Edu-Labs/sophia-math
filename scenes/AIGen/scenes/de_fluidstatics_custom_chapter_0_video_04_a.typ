#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hydraulikheber-Problem]
#v(40pt)
#only("1-")[#text()[Gegeben:
- Hubhöhe $(h_Lift) = 2$ m
- Pumpenhub $(s_Pump) = 50$ cm $= 0.5$ m
- Fläche des Presskolbens $(A_Press) = 400$ cm² $= 0.04$ m²
- Fläche des Pumpkolbens $(A_Pump) = 5$ cm² $= 0.0005$ m²]]
#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Lass uns sehen, wie wir dieses Problem Schritt für Schritt lösen können. Gegeben sind die Hubhöhe von 2 Metern, der Pumpenhub von 50 Zentimetern oder 0,5 Metern, die Fläche des Presskolbens von 400 Quadratzentimetern oder 0,04 Quadratmetern und die Fläche des Pumpkolbens von 5 Quadratzentimetern oder 0,0005 Quadratmetern.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[#text()[Schritt 1: Schreibe die Formel für die Anzahl der Pumpkolbenbewegungen $(n)$ auf:
$$ n = (A_Press \cdot h_Lift) / (A_Pump \cdot s_Pump) $$]]
#only("1")[
#voiceover("Der erste Schritt ist, die Formel für die Anzahl der Pumpkolbenbewegungen, bezeichnet als n, aufzuschreiben. Sie ergibt sich aus der Fläche des Presskolbens multipliziert mit der Hubhöhe, geteilt durch die Fläche des Pumpkolbens multipliziert mit dem Pumpenhub.")
]
#v(40pt)
#only("2-")[#text()[Schritt 2: Setze die gegebenen Werte ein:
$$ n = (0.04 \cdot 2) / (0.0005 \cdot 0.5) $$]]
#only("2")[
#voiceover("Als nächstes setzen wir die gegebenen Werte in die Formel ein. Die Fläche des Presskolbens beträgt 0,04, die Hubhöhe beträgt 2, die Fläche des Pumpkolbens beträgt 0,0005 und der Pumpenhub beträgt 0,5.")
]
#v(40pt)
#only("3-")[#text()[Schritt 3: Führe die Berechnungen durch:
$$ n = 0.08 / 0.00025 = 320 $$]]
#only("3")[
#voiceover("Nun führen wir die Berechnungen durch. 0,04 mal 2 ergibt 0,08, und 0,0005 mal 0,5 ergibt 0,00025. Wenn wir 0,08 durch 0,00025 teilen, erhalten wir 320.")
]
#v(40pt)
#only("4-")[Daher muss der Pumpkolben 320 Mal bewegt werden. 🎉]
#only("4")[
#voiceover("Daher muss der Pumpkolben 320 Mal bewegt werden, um das Objekt auf die gewünschte Höhe zu heben. Gut gemacht!")
]
]