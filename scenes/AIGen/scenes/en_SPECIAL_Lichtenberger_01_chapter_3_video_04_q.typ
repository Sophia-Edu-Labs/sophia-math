#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Steel Ships 🚢]
#v(40pt)
#only("1-")[- Most ships are made of steel (density = $7.8 g/"cm"^3$)]
#v(20pt)
#only("2-")[- A steel screw sinks in water 🔩⬇]
#v(20pt)
#only("3-")[Why do steel ships float? 🤔]
#only("1")[
#voiceover("Most ships are made of steel, which has a density of 7 point 8 grams per cubic centimeter.")
]
#only("2")[
#voiceover("A screw made of steel sinks immediately in water.")
]
#only("3")[
#voiceover("So, why do steel ships float?")
]
]


#questionDef(
questionText: "Why do steel ships float even though a steel screw sinks in water?",
answerOptions: ("Steel ships float because their shape allows them to displace enough water to generate a buoyant force that supports their weight.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)