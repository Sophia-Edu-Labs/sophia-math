#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Mengenbeziehungen]
#v(40pt)
#only("1-")[
- $A = {2, 4, 6, 8}$
]
#only("2-")[
- $B = {1, 2, 3, 4, 5, 6}$
]
#only("3-")[
- $C = {4, 6, 8, 10, 12}$
]
#v(40pt)
#only("4-")[Welche Aussage trifft #text(weight: "bold")[zu]?]
#v(40pt)
#only("5-")[- $A subset.eq C$]
#v(10pt)
#only("6-")[- $B subset.not A$]
#v(10pt)
#only("7-")[- $C subset B$]
#v(10pt)
#only("8-")[- $A subset B$]
#only("1")[#voiceover("Gegeben sind die folgenden Mengen: A, bestehend aus den geraden Zahlen 2, 4, 6 und 8,")]
#only("2")[#voiceover("B, bestehend aus den Zahlen 1 bis 6,")]
#only("3")[#voiceover("und C, bestehend aus den geraden Zahlen 4, 6, 8, 10 und 12.")]
#only("4")[
#voiceover("Welche der folgenden Aussagen über die Beziehungen zwischen diesen Mengen trifft zu?")
]
#only("5")[#voiceover("Ist A eine Teilmenge von C?")]
#only("6")[#voiceover("Oder ist B keine echte Teilmenge von A?")]
#only("7")[#voiceover("Oder ist C eine echte Teilmenge von üpsilon?")]
#only("8")[#voiceover("Oder, letzte Möglichkeit: Ist A eine echte Teilmenge von B?")]
]
#questionDef(
questionText: "Welche der Aussagen trifft zu?",
// use latex!
answerOptions: ("$A\subseteq C$", "$B\\not\subset A$", "$C\subset B$", "$A\subset B$"),
correctAnswerIndex: 1,
)