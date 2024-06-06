#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Potenzfunktionen]
#v(40pt)
#only("1-")[Welche der folgenden Anwendungen ist eine Anwendung von Potenzfunktionen?]
#v(40pt)
#only("-1")[a) Berechnung der Fläche eines Quadrats]
#only("2-")[#text(fill:green)[a) Berechnung der Fläche eines Quadrats]]
#v(10pt)
#only("-2")[b) Modellierung des Bevölkerungswachstums]
#only("3-")[#text(fill:green)[b) Modellierung des Bevölkerungswachstums]]
#v(10pt)
#only("-3")[c) Bestimmung der Geschwindigkeit eines Autos]
#only("4-")[#text(fill:green)[c) Bestimmung der Geschwindigkeit eines Autos]]
#v(10pt)
#only("-4")[d) Alle oben genannten]
#only("5-")[#text(fill:green)[d) Alle oben genannten]]
#v(40pt)

#only("1")[#voiceover("Großartig! Das ist richtig!")]
#only("2")[#voiceover("Potenzfunktionen können tatsächlich zur Berechnung der Fläche eines Quadrats verwendet werden. Wenn die Seitenlänge $s$ ist, wird die Fläche durch die Potenzfunktion $A(s) = s^2$ gegeben.")]
#only("3")[#voiceover("Potenzfunktionen werden auch in der Bevölkerungsmodellierung verwendet. Wenn eine Bevölkerung exponentiell wächst, kann sie durch eine Funktion der Form $P(t) = P_0 e^(kt)$ modelliert werden, wobei $P_0$ die Anfangsbevölkerung, $k$ die Wachstumsrate und $t$ die Zeit ist.")]
#only("4")[#voiceover("Auch bei der Bestimmung der Geschwindigkeit eines Autos spielen Potenzfunktionen eine Rolle. Die kinetische Energie eines fahrenden Autos wird durch $E_k = (1/2) mv^2$ gegeben, wobei $m$ die Masse und $v$ die Geschwindigkeit ist. Die Geschwindigkeit steht in Beziehung zur kinetischen Energie durch eine Potenzfunktion.")]
#only("5")[#voiceover("Tatsächlich sind also alle diese Anwendungen von Potenzfunktionen. Gut gemacht, dass du das erkannt hast!")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Fläche eines Quadrats]
#v(40pt)
#only("1-")[
- Seitenlänge: $s$
- Fläche: $A(s) = s^2$
]
#v(40pt)
#only("2-")[Beispiel: $s = 5$]
#v(20pt)
#only("3-")[$A(5) = 5^2 = 25$]

#only("1")[#voiceover("Schauen wir uns die Fläche eines Quadrats genauer an. Wenn die Seitenlänge $s$ ist, dann wird die Fläche durch die Potenzfunktion $A von s gleich s Quadrat$ gegeben.")]
#only("2")[#voiceover("Zum Beispiel, wenn die Seitenlänge 5 ist,")]
#only("3")[#voiceover("dann ist die Fläche $A von 5$, was gleich $5 Quadrat$, oder 25 Quadrat-Einheiten ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Bevölkerungswachstum]
#v(40pt)
#only("1-")[
- Anfangsbevölkerung: $P_0$
- Wachstumsrate: $k$
- Zeit: $t$
- Bevölkerung: $P(t) = P_0 e^(k t)$
]
#v(40pt)
#only("2-")[Beispiel: $P_0 = 100$, $k = 0.1$, $t = 5$]
#v(20pt)
#only("3-")[$P(5) = 100 e^(0.1 dot 5) ≈ 165$]

#only("1")[#voiceover("Beim Bevölkerungswachstum, wenn $P_0$ die Anfangsbevölkerung ist, $k$ die Wachstumsrate und $t$ die Zeit, dann wird die Bevölkerung zur Zeit $t$ durch $P von t gleich P_0 mal e hoch k t$ gegeben.")]
#only("2")[#voiceover("Zum Beispiel, wenn die Anfangsbevölkerung 100 ist, die Wachstumsrate 0.1 ist, und wir die Bevölkerung nach 5 Zeiteinheiten wissen wollen,")]
#only("3")[#voiceover("berechnen wir $P von 5$, was gleich $100 mal e hoch 0.1 mal 5$, ungefähr 165 ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Kinetische Energie]
#v(40pt)
#only("1-")[
- Masse: $m$
- Geschwindigkeit: $v$
- Kinetische Energie: $E_k = (1/2) m v^2$
]
#v(40pt)
#only("2-")[Beispiel: $m = 1000 "kg"$, $E_k = 250000 "J"$]
#v(20pt)
#only("3-")[$v = root(2, (2 dot 250000)/1000) ≈ 22.4 "m/s"$]

#only("1")[#voiceover("In der Physik wird die kinetische Energie eines bewegten Objekts durch $E_k gleich ein halb mal Masse mal Geschwindigkeit Quadrat$ gegeben. Hier steht die Geschwindigkeit in Beziehung zur kinetischen Energie durch eine Potenzfunktion.")]
#only("2")[#voiceover("Zum Beispiel, wenn ein Auto mit einer Masse von 1000 Kilogramm eine kinetische Energie von 250000 Joule hat,")]
#only("3")[#voiceover("können wir seine Geschwindigkeit finden, indem wir die Gleichung $250000 gleich ein halb mal 1000 mal v Quadrat$ für $v$ lösen. Dies ergibt $v gleich die Quadratwurzel aus 2 mal 250000 geteilt durch 1000$, ungefähr 22.4 Meter pro Sekunde.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[Potenzfunktionen 📈 haben viele Anwendungen:]
#v(20pt)
#only("2-")[- Flächenberechnung 🟥]
#v(10pt)
#only("3-")[- Modellierung von Bevölkerungen 👥📈]
#v(10pt)
#only("4-")[- Bestimmung von Geschwindigkeiten 🚗💨]
#v(10pt)
#only("5-")[- Und viele mehr! 🌟]

#only("1")[#voiceover("Zusammenfassend haben Potenzfunktionen eine Vielzahl von Anwendungen.")]
#only("2")[#voiceover("Sie können zur Berechnung von Flächen verwendet werden,")]
#only("3")[#voiceover("zur Modellierung des Bevölkerungswachstums,")]
#only("4")[#voiceover("zur Bestimmung der Geschwindigkeit von bewegten Objekten,")]
#only("5")[#voiceover("und vieles mehr. Das Verständnis von Potenzfunktionen ist in vielen Bereichen der Mathematik und Wissenschaft von entscheidender Bedeutung.")]
]