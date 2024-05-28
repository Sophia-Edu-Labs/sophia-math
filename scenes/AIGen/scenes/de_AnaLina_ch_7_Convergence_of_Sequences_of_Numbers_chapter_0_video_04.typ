#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Wiederholung von Folgen 📜]
#v(40pt)
#only("1-")[- Geordnete Liste von Zahlen]
#v(20pt)
#only("2-")[- Oft durch eine Formel für das $n$-te Glied definiert]
#v(20pt)
#only("3-")[- Beispiel: $a_n = 2n + 1$]
#only("1")[
#voiceover("Lass uns wiederholen, was wir über Folgen gelernt haben. Eine Folge ist eine geordnete Liste von Zahlen.")
]
#only("2")[
#voiceover("Folgen werden oft durch eine Formel für das n-te Glied definiert.")
]
#only("3")[
#voiceover("Zum Beispiel ist die Folge a sub n gleich 2n plus 1 durch diese Formel für ihr n-tes Glied definiert.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Konvergenz 🎯]
#v(40pt)
#only("1-")[- Eine Folge konvergiert, wenn ihre Glieder einen bestimmten Wert anstreben, wenn $n → ∞$]
#v(20pt)
#only("2-")[- Beispiel: $a_n = 1/n$ konvergiert gegen 0]
#only("1")[
#voiceover("Wir haben auch über Konvergenz gelernt. Eine Folge konvergiert, wenn ihre Glieder einen bestimmten Wert anstreben, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("Zum Beispiel konvergiert die Folge a sub n gleich 1 durch n gegen 0, wenn n gegen unendlich geht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergenz ♾️]
#v(40pt)
#only("1-")[- Eine Folge divergiert gegen unendlich, wenn ihre Glieder unbegrenzt wachsen, wenn $n → ∞$]
#v(20pt)
#only("2-")[- Beispiel: $a_n = n$ divergiert gegen unendlich]
#only("1")[
#voiceover("Andererseits divergiert eine Folge gegen unendlich, wenn ihre Glieder unbegrenzt wachsen, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("Ein Beispiel für eine divergente Folge ist a sub n gleich n, die gegen unendlich divergiert.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Folgen sind geordnete Listen von Zahlen, oft durch eine Formel definiert]
#v(20pt)
#only("2-")[- Konvergente Folgen streben einen bestimmten Wert an, wenn $n → ∞$]
#v(20pt)
#only("3-")[- Divergente Folgen wachsen unbegrenzt, wenn $n → ∞$]
#only("1")[
#voiceover("Zusammenfassend sind Folgen geordnete Listen von Zahlen, die oft durch eine Formel für das n-te Glied definiert sind.")
]
#only("2")[
#voiceover("Konvergente Folgen streben einen bestimmten Wert an, wenn n gegen unendlich geht.")
]
#only("3")[
#voiceover("Während divergente Folgen unbegrenzt wachsen, wenn n gegen unendlich geht.")
]
]