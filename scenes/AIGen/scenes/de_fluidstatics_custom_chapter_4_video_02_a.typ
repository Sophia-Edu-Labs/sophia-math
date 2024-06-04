#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Berechnung des Ballonvolumens 🎈]
#v(40pt)
#only("1-")[#text(size: 24pt, weight: "bold")[Gegeben:]]
#v(20pt)
#only("2-")[- Gesamte Masse zum Heben: $m = 640$ kg]
#v(10pt)
#only("3-")[- Luftdichte bei 464 m: $rho_"Luft" = 1.188$ kg/m³]
#v(10pt)
#only("4-")[- Gasdichte: $rho_"Gas" = 0.60$ kg/m³]
#v(10pt)
#only("5-")[- Formel: $V = m / (rho_"Luft" - rho_"Gas")$]

#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen.")
]
#only("2")[
#voiceover("Zuerst haben wir die gesamte Masse, die gehoben werden muss, die 640 Kilogramm beträgt. Dies umfasst den Ballon, die Passagiere und die Gondel.")
]
#only("3")[
#voiceover("Als nächstes haben wir die Luftdichte in einer Höhe von 464 Metern, die 1.188 Kilogramm pro Kubikmeter beträgt.")
]
#only("4")[
#voiceover("Wir haben auch die Dichte des im Ballon verwendeten Gases, die 0.60 Kilogramm pro Kubikmeter beträgt.")
]
#only("5")[
#voiceover("Die Formel zur Berechnung des minimalen Volumens des Ballons lautet V gleich m geteilt durch rho Luft minus rho Gas, wobei V das Volumen, m die Gesamtmasse, rho Luft die Luftdichte und rho Gas die Gasdichte ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung 🧮]
#v(40pt)
#only("1-")[#text(size: 24pt, weight: "bold")[Schritt 1: Werte einsetzen]]
#v(20pt)
#only("2-")[$ V = 640 / (1.188 - 0.60) $]
#v(10pt)
#only("3-")[#text(size: 24pt, weight: "bold")[Schritt 2: Nenner vereinfachen]]
#v(20pt)  
#only("4-")[$ V = 640 / 0.588 $]
#v(10pt)
#only("5-")[#text(size: 24pt, weight: "bold")[Schritt 3: Volumen berechnen]]
#v(20pt)
#only("6-")[$ V = 1088.44$ m³]
#v(10pt)
#only("7-")[#text(size: 24pt, weight: "bold")[Schritt 4: Auf nächste ganze Zahl runden]]
#v(20pt)
#only("8-")[$ V = 1088$ m³]

#only("1")[
#voiceover("Nun, lass uns das Problem lösen. Im ersten Schritt setzen wir die gegebenen Werte in die Formel ein.")
]
#only("2")[
#voiceover("Also, V gleich 640 geteilt durch 1.188 minus 0.60.")
]
#only("3")[
#voiceover("Im nächsten Schritt vereinfachen wir den Nenner.")
]
#only("4")[
#voiceover("1.188 minus 0.60 ergibt 0.588. Unsere Gleichung lautet also V gleich 640 geteilt durch 0.588.")
]
#only("5")[
#voiceover("Nun können wir das Volumen berechnen, indem wir 640 durch 0.588 teilen.")
]
#only("6")[
#voiceover("Dies ergibt ein Volumen von 1088.44 Kubikmetern.")
]
#only("7")[
#voiceover("Da wir aufgefordert sind, auf die nächste ganze Zahl zu runden, führen wir den letzten Schritt durch.")
]
#only("8")[
#voiceover("Das Runden von 1088.44 auf die nächste ganze Zahl ergibt 1088 Kubikmeter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Das minimale Volumen des Ballons, das benötigt wird, um eine Gesamtmasse von 640 kg in Uster zu heben, beträgt #text(fill: green)[1088 m³].]

#only("1")[
#voiceover("Daher beträgt das minimale Volumen des Ballons, das benötigt wird, um eine Gesamtmasse von 640 Kilogramm in Uster zu heben, 1088 Kubikmeter. Gute Arbeit bei der Lösung dieses Problems!")
]
]