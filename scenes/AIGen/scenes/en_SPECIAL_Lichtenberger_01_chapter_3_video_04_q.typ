#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Steel Ships and Buoyancy]
#v(40pt)

#only("1-")[- Most ships are made of steel (p_steel = 7.8 g/cm³) 🚢]
#v(20pt)
#only("2-")[- A screw made of steel sinks immediately in water 🌊]
#v(40pt)
#only("3-")[Why do steel ships float? 🤔]

#only("1")[
#voiceover("Most ships are made of steel, which has a density of 7.8 grams per cubic centimeter.")
]
#only("2")[
#voiceover("A screw made of steel sinks immediately when placed in water.")
]
#only("3")[
#voiceover("So, why do steel ships float?")
]
]#questionDef(
questionText: "Most ships are made of steel ($p_{steel} = 7.8 \, \text{g/cm}^3$). A screw made of steel sinks immediately in water. Why do steel ships float?",
answerOptions: ("Steel ships float because they have a larger shape and therefore a larger volume, which allows them to displace enough water to generate a buoyant force that supports their weight.", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)