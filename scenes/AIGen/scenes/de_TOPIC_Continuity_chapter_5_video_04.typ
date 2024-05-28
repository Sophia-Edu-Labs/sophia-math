#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Kontinuierliche Erweiterbarkeit 🌉]
#v(40pt)
#only("1-")[- Eine Funktion kann kontinuierlich gemacht werden, indem man Werte an bestimmten Punkten definiert/neu definiert]
#v(20pt)
#only("2-")[- Beispiel: $f(x) = (x^2 - 1)/(x - 1)$]
#only("1")[
#voiceover("Eine Funktion wird als kontinuierlich erweiterbar bezeichnet, wenn sie durch Definieren oder Neudefinieren ihrer Werte an bestimmten Punkten kontinuierlich gemacht werden kann.")
]
#only("2")[
#voiceover("Betrachte zum Beispiel die Funktion f von x gleich x Quadrat minus 1 geteilt durch x minus 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Die Funktion vereinfachen 🧮]
#v(40pt)
#only("1-")[- Vereinfachen: $f(x) = (x^2 - 1)/(x - 1) = x + 1$ für $x \neq 1$]
#v(20pt)
#only("2-")[- $f(1)$ ist undefiniert 🚫]
#only("1")[
#voiceover("Wir können diese Funktion vereinfachen. Für x ungleich 1 vereinfacht sie sich zu x plus 1.")
]
#only("2")[
#voiceover("Jedoch ist die Funktion bei x gleich 1 undefiniert, da wir durch null teilen würden.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Die Funktion erweitern 🔧]
#v(40pt)
#only("1-")[- Definiere $f(1) = 2$]
#v(20pt)
#only("2-")[- Jetzt, $lim_(x -> 1) (x + 1) = 2$]
#only("1")[
#voiceover("Um die Funktion kontinuierlich zu machen, können wir f von 1 gleich 2 definieren.")
]
#only("2")[
#voiceover("Jetzt ist der Limes von x plus 1, wenn x gegen 1 geht, gleich 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Kontinuität erreicht ✅]
#v(40pt)
#only("1-")[- $f(x)$ ist jetzt kontinuierlich bei $x = 1$]
#v(20pt)
#only("2-")[- $f(x)$ war kontinuierlich erweiterbar]
#only("1")[
#voiceover("Daher ist die Funktion f jetzt kontinuierlich bei x gleich 1.")
]
#only("2")[
#voiceover("Wir sagen, dass die ursprüngliche Funktion kontinuierlich erweiterbar war, weil wir sie durch Definieren eines Wertes am problematischen Punkt kontinuierlich machen konnten.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Kontinuierlich erweiterbare Funktionen können kontinuierlich gemacht werden 🌉]
#v(20pt)
#only("2-")[- Definiere/neu definiere Werte an problematischen Punkten 🔧]
#v(20pt)
#only("3-")[- Überprüfe Limes und Funktionswerte auf Kontinuität ✅]
#only("1")[
#voiceover("Zusammenfassend sind kontinuierlich erweiterbare Funktionen solche, die kontinuierlich gemacht werden können.")
]
#only("2")[
#voiceover("Dies geschieht durch Definieren oder Neudefinieren von Werten an problematischen Punkten, an denen die Funktion undefiniert oder diskontinuierlich ist.")
]
#only("3")[
#voiceover("Um die Kontinuität zu überprüfen, stellen wir sicher, dass die Limes und die Funktionswerte an diesen Punkten nach der Erweiterung übereinstimmen.")
]
]