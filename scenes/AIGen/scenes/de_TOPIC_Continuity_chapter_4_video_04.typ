#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Kontinuität Üben 🏋️‍♀️]

#v(40pt)

#only("1-")[- Überprüfe den Grenzwert und den Funktionswert an verschiedenen Punkten]
#only("2-")[- Vergleiche Grenzwert und Funktionswert]
#only("3-")[- Bestimme die Kontinuität basierend auf dem Vergleich]

#v(40pt)

#only("1")[
#voiceover("Beim Üben der Kontinuität müssen wir den Grenzwert der Funktion und den Funktionswert an verschiedenen Punkten überprüfen.")
]

#only("2")[
#voiceover("Dann vergleichen wir den Grenzwert und den Funktionswert an jedem Punkt.")
]

#only("3")[
#voiceover("Wenn der Grenzwert und der Funktionswert an einem Punkt gleich sind, ist die Funktion an diesem Punkt stetig. Wenn sie nicht gleich sind oder der Grenzwert nicht existiert, ist die Funktion an diesem Punkt nicht stetig.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 📝]

#v(40pt)

#only("1-")[Betrachte die Funktion $f(x) = (x^2 - 1) / (x - 1)$]

#v(20pt)

#only("2-")[Überprüfe die Kontinuität bei $x = 1$:]
#only("3-")[- $lim_(x -> 1) f(x) = 2$]
#only("4-")[- $f(1)$ ist undefiniert]
#only("5-")[⇒ $f(x)$ ist nicht stetig bei $x = 1$]

#v(20pt)

#only("6-")[Aber $f(x)$ kann bei $x = 1$ stetig gemacht werden, indem $f(1) = 2$ definiert wird]

#only("1")[
#voiceover("Betrachten wir die Funktion f von x gleich x Quadrat minus 1 durch x minus 1.")
]

#only("2")[
#voiceover("Um die Kontinuität bei x gleich 1 zu überprüfen, müssen wir:")
]

#only("3")[
#voiceover("Zuerst den Grenzwert von f von x bestimmen, wenn x sich 1 nähert. Dieser Grenzwert ist gleich 2.")
]

#only("4")[
#voiceover("Als nächstes bewerten wir f bei 1. Allerdings ist f von 1 undefiniert, da dies eine Division durch Null bedeuten würde.")
]

#only("5")[
#voiceover("Da der Grenzwert existiert, aber nicht gleich dem Funktionswert bei x gleich 1 ist, der undefiniert ist, ist f bei x gleich 1 nicht stetig.")
]

#only("6")[
#voiceover("f kann jedoch bei x gleich 1 stetig gemacht werden, indem f von 1 gleich 2 definiert wird, was dem Grenzwert entspricht. Dies ist ein Beispiel für eine Funktion, die an einem Punkt stetig erweiterbar ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]

#v(40pt)

#only("1-")[- Kontinuität erfordert $lim_(x -> a) f(x) = f(a)$]
#only("2-")[- Überprüfe Grenzwerte und Funktionswerte an verschiedenen Punkten]
#only("3-")[- Funktionen können manchmal durch Definition von Werten stetig gemacht werden]

#only("1")[
#voiceover("Die wichtigste Erkenntnis ist, dass für eine Funktion, um an einem Punkt a stetig zu sein, der Grenzwert der Funktion, wenn x sich a nähert, gleich dem Funktionswert bei a sein muss.")
]

#only("2")[
#voiceover("Um Kontinuität zu üben, müssen wir Grenzwerte und Funktionswerte an verschiedenen Punkten überprüfen.")
]

#only("3")[
#voiceover("Einige Funktionen, die nicht stetig sind, können durch die geeignete Definition von Werten an bestimmten Punkten stetig gemacht werden, wodurch sie stetig erweiterbar werden.")
]
]