#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Air Pressure at Lakes 🌊]
#v(40pt)
#only("1-")[At which lake is the air pressure highest (assuming the same weather conditions)?]
#v(40pt)
#only("2-")[a) At Lake Zurich]
#v(10pt)
#only("3-")[b) At Lake Neuchâtel]
#v(10pt)
#only("4-")[c) At Lake Klöntal]
#v(10pt)  
#only("5-")[d) At Lake Maggiore]
#only("1")[#voiceover("Let's test your understanding of air pressure at different altitudes. At which lake is the air pressure highest, assuming the same weather conditions at all lakes?")]
#only("2")[#voiceover("Is it at Lake Zurich,")]
#only("3")[#voiceover("or at Lake Neuchâtel,")]
#only("4")[#voiceover("or maybe at Lake Klöntal,")]
#only("5")[#voiceover("or is it at Lake Maggiore?")]
]#questionDef(
questionText: "At which lake is the air pressure highest (assuming the same weather conditions)?",  
answerOptions: ("At Lake Zurich", "At Lake Neuchâtel", "At Lake Klöntal", "At Lake Maggiore"),
correctAnswerIndex: 3
)