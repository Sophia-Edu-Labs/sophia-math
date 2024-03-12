#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Vereinigung von Mengen]
#v(40pt)
#only("1-")[
- $A = {1, 2, 3}$
]
#only("2-")[
- $B = {3, 4, 5}$
]
#only("3-")[
- $C = {2, 4, 6}$
]
#v(40pt)
#only("4-")[Welche Aussage ist #text(weight: "bold")[falsch]?]
#v(40pt)
#only("5-")[- $A union B = {1, 2, 3, 4, 5}$]
#v(10pt)
#only("6-")[- $B union C = {2, 3, 4, 5, 6}$]
#v(10pt)
#only("7-")[- $A union C = {1, 2, 3, 4, 5, 6}$]
#v(10pt)
#only("8-")[- $A union B union C = {1, 2, 3, 4, 5, 6}$]
#only("1")[#voiceover("Gegeben sind die folgenden drei Mengen: A, bestehend aus den Elementen 1, 2 und 3,")]
#only("2")[#voiceover("B, bestehend aus den Elementen 3, 4 und 5,")]
#only("3")[#voiceover("und C, bestehend aus den Elementen 2, 4 und 6.")]
#only("4")[
#voiceover("Welche der folgenden Aussagen über die Vereinigungen dieser Mengen ist FALSCH?")
]
#only("5")[#voiceover("Ist es die Aussage A vereinigt mit B ergibt die Menge bestehend aus 1, 2, 3, 4 und 5?")]
#only("6")[#voiceover("Oder ist die Aussage B vereinigt mit C ergibt die Menge bestehend aus 2, 3, 4, 5 und 6 falsch?")]
#only("7")[#voiceover("Oder ist es die Aussage A vereinigt mit C ergibt die Menge bestehend aus 1, 2, 3, 4, 5 und 6?")]
#only("8")[#voiceover("Oder, letzte Option: Ist die Aussage A vereinigt mit B vereinigt mit C ergibt die Menge bestehend aus 1, 2, 3, 4, 5 und 6 falsch?")]
]
#questionDef(
questionText: "Welche der Aussagen über die Vereinigungen ist falsch?",
// use latex!
answerOptions: ("$A \\ \cup B = \{1, 2, 3, 4, 5\}$", "$B \cup C = \{2, 3, 4, 5, 6\}$", "$A \\ \cup C = \{1, 2, 3, 4, 5, 6\}$", "$A \cup B \cup C = \{1, 2, 3, 4, 5, 6\}$"),
correctAnswerIndex: 2,
)