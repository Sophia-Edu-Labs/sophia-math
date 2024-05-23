#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Sequenzen Rückblick 📜]
#v(40pt)
#only("1-")[- Geordnete Liste von Zahlen]
#v(20pt)
#only("2-")[- Oft durch eine Formel für das $n$-te Glied definiert]
#v(20pt)
#only("3-")[- Beispiel: $a_n = 2n + 1$]
#only("1")[
#voiceover("Lassen Sie uns wiederholen, was wir über Sequenzen gelernt haben. Eine Sequenz ist eine geordnete Liste von Zahlen.")
]
#only("2")[
#voiceover("Sequenzen werden oft durch eine Formel für das n-te Glied definiert.")
]
#only("3")[
#voiceover("Zum Beispiel wird die Sequenz a sub n gleich 2n plus 1 durch diese Formel für ihr n-tes Glied definiert.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Konvergenz 🎯]
#v(40pt)
#only("1-")[- Eine Sequenz konvergiert, wenn ihre Glieder einen bestimmten Wert anstreben, wenn $n → ∞$]
#v(20pt)
#only("2-")[- Beispiel: $a_n = 1/n$ konvergiert gegen 0]
#only("1")[
#voiceover("Wir haben auch über Konvergenz gelernt. Eine Sequenz konvergiert, wenn ihre Glieder einen bestimmten Wert anstreben, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("Zum Beispiel konvergiert die Sequenz a sub n gleich 1 durch n gegen 0, wenn n gegen unendlich geht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergenz ♾️]
#v(40pt)
#only("1-")[- Eine Sequenz divergiert gegen unendlich, wenn ihre Glieder unbegrenzt zunehmen, wenn $n → ∞$]
#v(20pt)
#only("2-")[- Beispiel: $a_n = n$ divergiert gegen unendlich]
#only("1")[
#voiceover("Andererseits divergiert eine Sequenz gegen unendlich, wenn ihre Glieder unbegrenzt zunehmen, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("Ein Beispiel für eine divergente Sequenz ist a sub n gleich n, die gegen unendlich divergiert.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Sequenzen sind geordnete Listen von Zahlen, oft durch eine Formel definiert]
#v(20pt)
#only("2-")[- Konvergente Sequenzen streben einen bestimmten Wert an, wenn $n → ∞$]
#v(20pt)
#only("3-")[- Divergente Sequenzen nehmen unbegrenzt zu, wenn $n → ∞$]
#only("1")[
#voiceover("Zusammenfassend sind Sequenzen geordnete Listen von Zahlen, die oft durch eine Formel für das n-te Glied definiert werden.")
]
#only("2")[
#voiceover("Konvergente Sequenzen streben einen bestimmten Wert an, wenn n gegen unendlich geht.")
]
#only("3")[
#voiceover("Während divergente Sequenzen unbegrenzt zunehmen, wenn n gegen unendlich geht.")
]
]