#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Teilmengen]
#v(40pt)
#only("1-")[
- $A = {1, 2, 3}$
]
#only("2-")[
- $B = {1, 2, 3, 4}$
]
#only("3-")[
- $C = {3, 4, 5}$
]
#v(40pt)
#only("4-")[Welche Aussage ist #text(weight: "bold")[falsch]?]
#v(40pt)
#only("5-")[- $A subset.eq B$]
#v(10pt)
#only("6-")[- $B subset.not A$]
#v(10pt)
#only("7-")[- $A subset B$]
#v(10pt)
#only("8-")[- $C subset B$]

#only("1")[#voiceover("Betrachte die folgenden drei Mengen: A, bestehend aus den Elementen 1, 2 und 3,")]
#only("2")[#voiceover("B, bestehend aus den Elementen 1, 2, 3 und 4,")]
#only("3")[#voiceover("und C, bestehend aus den Elementen 3, 4 und 5.")]
#only("4")[
#voiceover("Welche der folgenden Aussagen über die Beziehungen zwischen diesen Mengen ist falsch?")
]
#only("5")[#voiceover("Ist es die Aussage A ist Teilmenge von B?")]
#only("6")[#voiceover("Oder die Aussage B ist keine Teilmenge von A?")]
#only("7")[#voiceover("Oder ist es die Aussage A ist eine echte Teilmenge von B?")]
#only("8")[#voiceover("Oder, letzte Option: Ist die Aussage C ist eine echte Teilmenge von B falsch?")]
]

#questionDef(
  questionText: "Welche der Aussagen ist falsch?",
  // use latex!
  answerOptions: ("$A\subseteq B$", "$B\\not\\subset$", "$A\subset B$", "$C\subset B$"),
  correctAnswerIndex: 3,
)