#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Lassen Sie uns die ersten Eigenschaften linearer Abbildungen rekapitulieren.")
]
#text(size: 30pt, weight: "bold")[Erste Eigenschaften linearer Abbildungen]
#v(40pt)
#only("2-")[- Wenn $T$ eine lineare Abbildung ist, dann:]
#v(20pt)
#only("3-")[  1. $T(0) = 0$]
#v(20pt)
#only("4-")[  2. $T(c u + d v) = c T(u) + d T(v)$]
#v(40pt)
#only("2")[
#voiceover("Wenn T eine lineare Abbildung ist, dann hat sie zwei wichtige Eigenschaften.")
]
#only("3")[
#voiceover("Erstens, T des Nullvektors ist gleich dem Nullvektor.")
]
#only("4")[
#voiceover("Zweitens, T einer Linearkombination der Vektoren u und v ist gleich der gleichen Linearkombination von T von u und T von v.")
]
#only("5")[
#voiceover("Diese Eigenschaften gelten für beliebige Vektoren u und v sowie beliebige Skalare c und d.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Bedeutung 🌟]
#v(40pt)
#only("1-")[- Grundlegende Eigenschaften linearer Abbildungen]
#v(20pt)
#only("2-")[- Verwendet in Beweisen und Berechnungen]
#v(20pt)
#only("3-")[- Charakterisieren das Verhalten linearer Abbildungen]
#only("1")[
#voiceover("Diese Eigenschaften sind grundlegend für lineare Abbildungen.")
]
#only("2")[
#voiceover("Sie werden häufig in Beweisen und Berechnungen verwendet, die lineare Abbildungen betreffen.")
]
#only("3")[
#voiceover("Sie charakterisieren, wie sich lineare Abbildungen in Bezug auf Vektoraddition und Skalierung verhalten.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
#v(40pt)
#only("1-")[Für eine lineare Abbildung $T$:]
#v(20pt)
#only("2-")[1. $ T(0) = 0$]
#v(20pt)
#only("3-")[2. $T(c u + d v) = c T(u) + d T(v)$]
#v(20pt)
#only("4-")[   für beliebige $u, v$ und $c, d$]
#only("1")[
#voiceover("Zusammenfassend gilt für eine lineare Abbildung T,")
]
#only("2")[
#voiceover("T des Nullvektors ist gleich dem Nullvektor,")
]
#only("3")[
#voiceover("und T einer Linearkombination der Vektoren u und v ist gleich der gleichen Linearkombination von T von u und T von v,")
]
#only("4")[
#voiceover("und dies gilt für beliebige Vektoren u und v sowie beliebige Skalare c und d.")
]
]