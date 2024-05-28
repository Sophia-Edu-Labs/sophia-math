#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("In diesem Video werden wir den Hauptunterschied zwischen der Slutsky-Zerlegung und der Hicks-Zerlegung zusammenfassen.")
]
#text(size: 30pt, weight: "bold")[Slutsky vs Hicks Zerlegung]
// Der Titel "Slutsky vs Hicks Zerlegung" wird auf dieser Folie angezeigt
#v(40pt)
#only("2")[
#voiceover("Die Slutsky-Zerlegung und die Hicks-Zerlegung sind zwei Methoden zur Analyse der Auswirkungen einer Preisänderung auf das Verbraucherverhalten. Obwohl sie Ähnlichkeiten aufweisen, gibt es einen wesentlichen Unterschied zwischen ihnen.")
]
#only("2-")[
- Beide zerlegen die Wirkung einer Preisänderung 📊
- Wesentlicher Unterschied: was konstant gehalten wird 🔑
]
// Die Aufzählungspunkte werden ab Folie 2 angezeigt
]

#slide()[
#only("1")[
#voiceover("Die Slutsky-Zerlegung hält das reale Einkommen konstant, wenn die Wirkung einer Preisänderung analysiert wird.")
]
#text(size: 30pt, weight: "bold")[Slutsky Zerlegung]
// Der Titel "Slutsky Zerlegung" wird auf dieser Folie angezeigt
#v(40pt)
#only("2-")[
- Hält das reale Einkommen konstant 💰
- Trennt die Wirkung in Substitutions- und Einkommenseffekte
]
// Die Aufzählungspunkte werden ab Folie 2 angezeigt
#only("2")[
#voiceover("Sie trennt die Wirkung der Preisänderung in Substitutions- und Einkommenseffekte.")
]
]

#slide()[
#only("1")[
#voiceover("Die Hicks-Zerlegung hingegen hält den Nutzen konstant.")
]
#text(size: 30pt, weight: "bold")[Hicks Zerlegung]
// Der Titel "Hicks Zerlegung" wird auf dieser Folie angezeigt
#v(40pt)
#only("2-")[
- Hält den Nutzen konstant 😊
- Trennt die Wirkung in Substitutions- und Einkommenseffekte
]
// Die Aufzählungspunkte werden ab Folie 2 angezeigt
#only("2")[
#voiceover("Wie die Slutsky-Zerlegung trennt sie auch die Wirkung in Substitutions- und Einkommenseffekte.")
]
]

#slide()[
#only("1")[
#voiceover("Zusammengefasst ist der Hauptunterschied:")
]
#text(size: 30pt, weight: "bold")[Hauptunterschied]
#v(40pt)
#only("2-")[
- Slutsky-Zerlegung: hält das reale Einkommen konstant 💰
- Hicks-Zerlegung: hält den Nutzen konstant 😊
]
#only("2")[
#voiceover("Die Slutsky-Zerlegung hält das reale Einkommen konstant, während die Hicks-Zerlegung den Nutzen konstant hält.")
]
#only("3")[
#voiceover("Dieser Unterschied führt zu leicht unterschiedlichen Interpretationen der Substitutions- und Einkommenseffekte, aber beide Methoden liefern wertvolle Einblicke in das Verbraucherverhalten.")
]
]