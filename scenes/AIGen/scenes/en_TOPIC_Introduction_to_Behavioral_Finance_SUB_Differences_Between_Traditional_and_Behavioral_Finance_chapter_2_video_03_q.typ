#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rational Investors]
// The title "Rational Investors" is shown on this slide
#v(40pt)
#only("1-")[According to traditional finance, rational investors base their decisions on \_\_\_\_\_.]
// The statement with the blank is shown from slide 1 onward
#v(40pt)
#only("2-")[a) emotions 😢]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) past experiences 📜]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) all available information ℹ️]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) market rumors 🗣️]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on rational investors in traditional finance. According to traditional finance, rational investors base their decisions on blank.")]
#only("2")[#voiceover("Do they base their decisions on emotions,")]
#only("3")[#voiceover("or do they base their decisions on past experiences,")]
#only("4")[#voiceover("or maybe they base their decisions on all available information,")]
#only("5")[#voiceover("or do they base their decisions on market rumors?")]
]#questionDef(
questionText: "According to traditional finance, rational investors base their decisions on ______.",
answerOptions: ("emotions", "past experiences", "all available information", "market rumors"),
correctAnswerIndex: 2,
)