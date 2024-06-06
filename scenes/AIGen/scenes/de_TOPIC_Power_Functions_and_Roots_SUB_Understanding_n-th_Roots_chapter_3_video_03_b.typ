#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachung von n-ten Wurzeln]
#v(40pt)
#only("1-")[- $root(4, 81)$]
// Das ursprüngliche Problem wird auf allen Folien angezeigt
#v(20pt)
#only("2-")[- $root(4, 3^4)$]
// Der erste Schritt wird ab Folie 2 angezeigt
#v(20pt)
#only("3-")[- $(3^4)^(1/4)$]
// Der zweite Schritt wird ab Folie 3 angezeigt
#v(20pt)
#only("4-")[- $3^(4/4)$]
// Der dritte Schritt wird ab Folie 4 angezeigt
#v(20pt)
#only("5-")[- $3^1$]
// Der vierte Schritt wird ab Folie 5 angezeigt
#v(20pt)
#only("6-")[- $3$]
// Die endgültige Antwort wird ab Folie 6 angezeigt
#only("1")[
#voiceover("Das war nicht ganz richtig. Lass uns gemeinsam durchgehen, wie wir die vierte Wurzel von 81 vereinfachen können.")
]
#only("2")[
#voiceover("Zuerst können wir erkennen, dass 81 eine perfekte vierte Potenz ist. Tatsächlich ist es 3 hoch 4.")
]
#only("3")[
#voiceover("Nun können wir die Eigenschaft nutzen, dass die vierte Wurzel einer Zahl dasselbe ist wie das Erheben dieser Zahl zur Potenz von einem Viertel.")
]
#only("4")[
#voiceover("Als nächstes können wir die Potenzregel für Exponenten verwenden. Wenn wir eine Potenz potenzieren, multiplizieren wir die Exponenten.")
]
#only("5")[
#voiceover("Vier geteilt durch vier ist eins.")
]
#only("6")[
#voiceover("Und drei hoch eins ist einfach drei. Daher vereinfacht sich die vierte Wurzel von 81 zu 3.")
]
]