#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Anwendungen von n-ten Wurzeln]
#v(40pt)
Welche der folgenden ist eine Anwendung von n-ten Wurzeln?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) Berechnung von Zinssätzen]#only("2-")[#text(fill:green)[a) Berechnung von Zinssätzen]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-2")[b) Bestimmung von Geschwindigkeiten]#only("3-")[#text(fill:green)[b) Bestimmung von Geschwindigkeiten]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-3")[c) Messung von Entfernungen]#only("4-")[#text(fill:green)[c) Messung von Entfernungen]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-4")[d) Alle oben genannten]#only("5-")[#text(fill:green)[d) Alle oben genannten]]
#only("1")[#voiceover("Großartig! Du hast die richtige Antwort ausgewählt.")]
#only("2")[#voiceover("Die Berechnung von Zinssätzen beinhaltet tatsächlich n-te Wurzeln. Zum Beispiel verwendet die Formel für den jährlichen Prozentsatz oft eine n-te Wurzel, wobei n die Anzahl der Zinsperioden pro Jahr ist.")]
#only("3")[#voiceover("Auch bei der Bestimmung von Geschwindigkeiten werden n-te Wurzeln verwendet. In der Strömungsdynamik ist die n-te Wurzel der mittleren Geschwindigkeit ein verallgemeinertes Mittel, das zur Berechnung der Geschwindigkeit von Flüssigkeiten und Gasen verwendet wird.")]
#only("4")[#voiceover("Auch bei der Messung von Entfernungen können n-te Wurzeln eine Rolle spielen. In der Mathematik gibt die n-te Wurzel der Summe der n-ten Potenzen der Koordinaten den verallgemeinerten mittleren Abstand in einem euklidischen Raum an.")]
#only("5")[#voiceover("Daher sind alle oben genannten - die Berechnung von Zinssätzen, die Bestimmung von Geschwindigkeiten und die Messung von Entfernungen - Anwendungen von n-ten Wurzeln.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[- n-te Wurzeln werden in verschiedenen realen Anwendungen verwendet 🌍]
#v(20pt)
#only("2-")[- Berechnung von Zinssätzen 📈]
  - Formel für den jährlichen Prozentsatz (APY)
  - $APY = (1 + r/n)^n - 1$, wobei $r$ der Nominalzins und $n$ die Anzahl der Zinsperioden pro Jahr ist
#v(20pt)  
#only("3-")[- Bestimmung von Geschwindigkeiten 🚗💨]
  - n-te Wurzel der mittleren Geschwindigkeit in der Strömungsdynamik
  - $v_n = (1/n sum_(i=1)^n v_i^n)^(1/n)$, wobei $v_i$ die einzelnen Geschwindigkeiten sind
#v(20pt)  
#only("4-")[- Messung von Entfernungen 📏]
  - Verallgemeinerter mittlerer Abstand im euklidischen Raum
  - $d_n = (sum_(i=1)^n x_i^n)^(1/n)$, wobei $x_i$ die Koordinaten sind
#v(20pt)  
#only("5-")[Daher ist die richtige Antwort d) Alle oben genannten ✅]

#only("1")[#voiceover("Schauen wir uns das Schritt für Schritt an. n-te Wurzeln werden tatsächlich in verschiedenen realen Anwendungen verwendet.")]
#only("2")[#voiceover("Bei der Berechnung von Zinssätzen wird die Formel für den jährlichen Prozentsatz oft mit einer n-ten Wurzel berechnet, wobei n die Anzahl der Zinsperioden pro Jahr ist. Die Formel lautet: APY ist gleich der n-ten Wurzel der Größe 1 plus r durch n, minus 1, wobei r der Nominalzins ist.")]
#only("3")[#voiceover("Zur Bestimmung von Geschwindigkeiten wird die n-te Wurzel der mittleren Geschwindigkeit in der Strömungsdynamik verwendet. Sie wird als n-te Wurzel des Durchschnitts der n-ten Potenzen der einzelnen Geschwindigkeiten berechnet.")]
#only("4")[#voiceover("Bei der Messung von Entfernungen wird der verallgemeinerte mittlere Abstand in einem euklidischen Raum durch die n-te Wurzel der Summe der n-ten Potenzen der Koordinaten angegeben.")]
#only("5")[#voiceover("Also, alle diese Bereiche - Zinssätze, Geschwindigkeiten und Entfernungen - verwenden n-te Wurzeln. Daher ist die richtige Antwort d) Alle oben genannten.")]
]