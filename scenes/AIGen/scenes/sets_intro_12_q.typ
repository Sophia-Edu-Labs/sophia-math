#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Schnittmengen]
#v(40pt)
#only("1-")[
- $A = {2, 4, 6, 8}$
]
#only("2-")[
- $B = {1, 2, 3, 4}$
]
#only("3-")[
- $C = {3, 4, 5, 6}$
]
#v(40pt)
#only("4-")[Welche Aussage ist #text(weight: "bold")[falsch]?]
#v(40pt)
#only("5-")[- $A sect B = {1, 2, 3, 4}$]
#v(10pt)
#only("6-")[- $B sect C = {3, 4}$]
#v(10pt)
#only("7-")[- $A sect C = {4, 6}$]
#v(10pt)
#only("8-")[- $A sect B sect C = {4}$]
#only("1")[#voiceover("Gegeben sind die folgenden drei Mengen: A, bestehend aus den Elementen 2, 4, 6 und 8,")]
#only("2")[#voiceover("B, bestehend aus den Elementen 1, 2, 3 und 4,")]
#only("3")[#voiceover("und C, bestehend aus den Elementen 3, 4, 5 und 6.")]
#only("4")[
#voiceover("Welche der folgenden Aussagen über die Schnittmengen dieser Mengen ist RICHTIG?")
]
#only("5")[#voiceover("Ist es die Aussage A geschnitten mit B ergibt die Menge bestehend aus 1, 2, 3 und 4?")]
#only("6")[#voiceover("Oder ist die Aussage B geschnitten mit C ergibt die Menge bestehend aus 3 und 4 falsch?")]
#only("7")[#voiceover("Oder ist es die Aussage A geschnitten mit C ergibt die Menge bestehend aus 4 und 6?")]
#only("8")[#voiceover("Oder, letzte Option: Ist die Aussage A geschnitten mit B geschnitten mit C ergibt die Menge bestehend aus 4 falsch?")]
]
#questionDef(
questionText: "Welche der Aussagen über die Schnittmengen ist falsch?",
// use latex!
answerOptions: ("$A \\ \cap B = \{1, 2, 3, 4\}$", "$B \cap C = \{3, 4\}$", "$A \\ \cap C = \{4, 6\}$", "$A \cap B \cap C = \{4\}$"),
correctAnswerIndex: 0,
)