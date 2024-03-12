#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Schnittmengen]
#v(40pt)
#only("1-")[
- $X = {2, 4, 6, 8}$
]
#only("2-")[
- $Y = {1, 2, 3, 4}$
]
#only("3-")[
- $Z = {3, 4, 5, 6}$
]
#v(40pt)
#only("4-")[Welche Aussage ist #text(weight: "bold")[falsch]?]
#v(40pt)
#only("5-")[- $X sect Y = {1, 2, 3, 4}$]
#v(10pt)
#only("6-")[- $Y sect Z = {3, 4}$]
#v(10pt)
#only("7-")[- $X sect Z = {4, 6}$]
#v(10pt)
#only("8-")[- $X sect Y sect Z = {4}$]
#only("1")[#voiceover("Gegeben sind die folgenden drei Mengen: X, bestehend aus den Elementen 2, 4, 6 und 8,")]
#only("2")[#voiceover("Y, bestehend aus den Elementen 1, 2, 3 und 4,")]
#only("3")[#voiceover("und Z, bestehend aus den Elementen 3, 4, 5 und 6.")]
#only("4")[
#voiceover("Welche der folgenden Aussagen über die Schnittmengen dieser Mengen ist RICHTIG?")
]
#only("5")[#voiceover("Ist es die Aussage X geschnitten mit Y ergibt die Menge bestehend aus 1, 2, 3 und 4?")]
#only("6")[#voiceover("Oder ist die Aussage Y geschnitten mit Z ergibt die Menge bestehend aus 3 und 4 falsch?")]
#only("7")[#voiceover("Oder ist es die Aussage X geschnitten mit Z ergibt die Menge bestehend aus 4 und 6?")]
#only("8")[#voiceover("Oder, letzte Option: Ist die Aussage X geschnitten mit Y geschnitten mit Z ergibt die Menge bestehend aus 4 falsch?")]
]
#questionDef(
questionText: "Welche der Aussagen über die Schnittmengen ist falsch?",
// use latex!
answerOptions: ("$X \\ \cap Y = \{1, 2, 3, 4\}$", "$Y \cap Z = \{3, 4\}$", "$X \\ \cap Z = \{4, 6\}$", "$X \cap Y \cap Z = \{4\}$"),
correctAnswerIndex: 0,
)