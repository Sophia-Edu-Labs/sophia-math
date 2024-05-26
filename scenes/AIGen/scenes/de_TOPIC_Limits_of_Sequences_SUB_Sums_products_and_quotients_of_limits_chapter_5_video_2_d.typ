#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Anwendungen in der realen Welt]
#v(40pt)
#only("1-")[Welches der folgenden ist ein Beispiel für eine Anwendung von Grenzwerten von Folgen in der realen Welt?]
#v(40pt)
#only("-1")[a) Berechnung von Zinseszinsen]
#only("2-")[#text(fill:green)[a) Berechnung von Zinseszinsen]]
#v(10pt)
#only("-1")[b) Bevölkerungswachstum]
#only("3-")[#text(fill:green)[b) Bevölkerungswachstum]]
#v(10pt)
#only("-1")[c) Sowohl a als auch b]
#only("4-")[#text(fill:green)[c) Sowohl a als auch b]]
#v(10pt)
#only("-1")[d) Weder a noch b]
#only("5-")[#text(fill:red)[d) Weder a noch b]]
#v(40pt)
#only("1")[#voiceover("Leider nicht ganz richtig. Hier ist das Video zur Erklärung.")]
#only("2")[#voiceover("Die Berechnung von Zinseszinsen ist in der Tat ein Beispiel für eine Anwendung von Grenzwerten von Folgen in der realen Welt.")]
#only("3")[#voiceover("Das Bevölkerungswachstum ist ebenfalls eine Anwendung von Grenzwerten von Folgen in der realen Welt.")]
#only("4")[#voiceover("Die richtige Antwort ist also c) Sowohl a als auch b. Sowohl die Berechnung von Zinseszinsen als auch das Bevölkerungswachstum sind Beispiele für Anwendungen von Grenzwerten von Folgen in der realen Welt.")]
#only("5")[#voiceover("Die Antwort d) Weder a noch b ist falsch, da sowohl die Berechnung von Zinseszinsen als auch das Bevölkerungswachstum Anwendungen von Grenzwerten von Folgen in der realen Welt sind.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[1. Verstehe das Konzept der Grenzwerte von Folgen 📚]
#v(20pt)
#only("2-")[2. Erkenne, dass Zinseszinsen eine Folge darstellen 💰]
#v(20pt)
#only("3-")[   - Jedes Glied stellt den Betrag nach einem Zeitraum dar]
#v(20pt)
#only("4-")[   - Der Grenzwert ist der Betrag, wenn die Anzahl der Zeiträume $arrow infinity$ geht]
#only("1")[#voiceover("Um dieses Problem zu lösen, gehen wir Schritt für Schritt vor.")]
#only("2")[#voiceover("Zuerst müssen wir verstehen, was Grenzwerte von Folgen sind. Sie beschreiben das Verhalten einer Folge, wenn der Index gegen unendlich geht.")]
#only("3")[#voiceover("Nun denken wir über Zinseszinsen nach. Sie beinhalten eine Folge, bei der jedes Glied den Betrag nach einem bestimmten Zeitraum darstellt.")]
#only("4")[#voiceover("Der Grenzwert dieser Folge wäre der Betrag, wenn die Anzahl der Zinseszinsperioden gegen unendlich geht.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[1. Erkenne, dass das Bevölkerungswachstum eine Folge darstellt 👥]
#v(20pt)
#only("2-")[   - Jedes Glied stellt die Bevölkerung nach einem Zeitraum dar]
#v(20pt)
#only("3-")[   - Der Grenzwert ist die Bevölkerung, wenn die Zeit $arrow infinity$ geht]
#v(20pt)
#only("4-")[2. Schließe, dass beide reale Anwendungen von Grenzwerten von Folgen sind ✅]
#only("5")[#voiceover("Ähnlich kann auch das Bevölkerungswachstum durch eine Folge modelliert werden.")]
#only("6")[#voiceover("Jedes Glied in der Folge stellt die Bevölkerung nach einem bestimmten Zeitraum dar.")]
#only("7")[#voiceover("Der Grenzwert dieser Folge wäre die Bevölkerung, wenn die Zeit gegen unendlich geht.")]
#only("8")[#voiceover("Daher können wir schließen, dass sowohl die Berechnung von Zinseszinsen als auch das Bevölkerungswachstum reale Anwendungen von Grenzwerten von Folgen sind.")]
]