#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzen in realen Anwendungen 🌍]
#v(40pt)
#only("1-")[- Grenzen von Folgen sind in verschiedenen realen Anwendungen nützlich]
#v(20pt)
#only("2-")[- Beispiele: Zinseszinsen 💰 und Bevölkerungswachstum 👥]
#only("1")[
#voiceover("Grenzen von Folgen sind nicht nur ein abstraktes mathematisches Konzept. Sie haben praktische Anwendungen in der realen Welt.")
]
#only("2")[
#voiceover("Zum Beispiel können sie verwendet werden, um Zinseszinsen in der Finanzwelt zu berechnen und um das Bevölkerungswachstum in der Biologie zu modellieren.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zinseszinsen 💰]
#v(40pt)
#only("1-")[- Zinseszinsen können mit einer Folge modelliert werden]
#v(20pt)
#only("2-")[$ a_n = (1 + 1/n)^n $, wobei $n$ die Anzahl der Zinsperioden ist]
#v(20pt)
#only("3-")[$ lim_(n -> infinity) a_n = e $]
#only("1")[
#voiceover("Zinseszinsen sind die Addition von Zinsen zum Kapitalbetrag eines Darlehens oder einer Einlage. Sie können mit einer Folge modelliert werden.")
]
#only("2")[
#voiceover("Die Folge $a_n = (1 + 1/n)^n$ modelliert das Wachstum einer Investition, die $n$ Mal pro Jahr verzinst wird.")
]
#only("3")[
#voiceover("Wenn $n$ gegen $infinity$ geht, das heißt, wenn die Zinsen kontinuierlich berechnet werden, ist die Grenze dieser Folge die mathematische Konstante $e$, ungefähr gleich 2.71828.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Bevölkerungswachstum 👥]
#v(40pt)
#only("1-")[- Bevölkerungswachstum kann mit einer Folge modelliert werden]
#v(20pt)
#only("2-")[$ p_n = p_0 (1 + r)^n $, wobei $p_0$ die Anfangsbevölkerung und $r$ die Wachstumsrate ist]
#v(20pt)
#only("3-")[$ lim_(n -> infinity) p_n = infinity $ wenn $r > 0$]
#only("1")[
#voiceover("Das Bevölkerungswachstum ist ein weiteres Gebiet, in dem Grenzen von Folgen eine Rolle spielen.")
]
#only("2")[
#voiceover("Die Folge $p_n = p_0 (1 + r)^n$ modelliert das Wachstum einer Bevölkerung, wobei $p_0$ die Anfangsbevölkerung und $r$ die Wachstumsrate pro Zeitperiode ist.")
]
#only("3")[
#voiceover("Wenn die Wachstumsrate $r$ positiv ist, ist die Grenze dieser Folge, wenn $n$ gegen $infinity$ geht, $infinity$, was auf ein unbegrenztes Bevölkerungswachstum hinweist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🔍]
#v(40pt)
#only("1-")[- Grenzen von Folgen sind in realen Anwendungen nützlich 🌍]
#v(20pt)
#only("2-")[- Zinseszinsen 💰 und Bevölkerungswachstum 👥 können mit Folgen modelliert werden]
#v(20pt)
#only("3-")[- Das Verständnis von Grenzen hilft, langfristiges Verhalten vorherzusagen 📈]
#only("1")[
#voiceover("Zusammenfassend lässt sich sagen, dass Grenzen von Folgen nicht nur ein theoretisches Konzept sind. Sie haben praktische Anwendungen in verschiedenen Bereichen.")
]
#only("2")[
#voiceover("Wir haben gesehen, wie sie Zinseszinsen in der Finanzwelt und das Bevölkerungswachstum in der Biologie modellieren können.")
]
#only("3")[
#voiceover("Durch das Verständnis von Grenzen können wir das langfristige Verhalten dieser Systeme vorhersagen, sei es der endgültige Wert einer Investition oder der Verlauf einer Bevölkerung.")
]
]