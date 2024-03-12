#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Mengenbeziehungen]
#v(40pt)
#only("1-")[
- $X = {2, 4, 6, 8}$
]
#only("2-")[
- $Y = {1, 2, 3, 4, 5, 6}$
]
#only("3-")[
- $Z = {4, 6, 8, 10, 12}$
]
#v(40pt)
#only("4-")[Welche Aussage trifft #text(weight: "bold")[zu]?]
#v(40pt)
#only("5-")[- $X subset.eq Z$]
#v(10pt)
#only("6-")[- $Y subset.not X$]
#v(10pt)
#only("7-")[- $Z subset Y$]
#v(10pt)
#only("8-")[- $X subset Y$]
#only("1")[#voiceover("Gegeben sind die folgenden Mengen: X, bestehend aus den geraden Zahlen 2, 4, 6 und 8,")]
#only("2")[#voiceover("üpsilon, bestehend aus den Zahlen 1 bis 6,")]
#only("3")[#voiceover("und Z, bestehend aus den geraden Zahlen 4, 6, 8, 10 und 12.")]
#only("4")[
#voiceover("Welche der folgenden Aussagen über die Beziehungen zwischen diesen Mengen trifft zu?")
]
#only("5")[#voiceover("Ist X eine Teilmenge von Z?")]
#only("6")[#voiceover("Oder ist üpsilon keine echte Teilmenge von X?")]
#only("7")[#voiceover("Oder ist Z eine echte Teilmenge von üpsilon?")]
#only("8")[#voiceover("Oder, letzte Möglichkeit: Ist X eine echte Teilmenge von üpsilon?")]
]
#questionDef(
questionText: "Welche der Aussagen trifft zu?",
// use latex!
answerOptions: ("$X\subseteq Z$", "$Y\not\subset X$", "$Z\subset Y$", "$X\subset Y$"),
correctAnswerIndex: 1,
)