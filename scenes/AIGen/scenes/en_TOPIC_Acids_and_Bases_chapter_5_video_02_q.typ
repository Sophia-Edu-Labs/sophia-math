#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculating pH]
// The title "Calculating pH" is shown on this slide
#v(40pt)
#only("1-")[What is the formula to calculate pH from hydrogen ion concentration $[H^+]$?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $"pH" = log[H^+]$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $"pH" = -log[H^+]$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $"pH" = 14 - log[H^+]$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $"pH" = [H^+]$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on calculating pH. What is the formula to calculate pH from hydrogen ion concentration, denoted as H plus in square brackets?")]
#only("2")[#voiceover("Is it pH equals log of H plus concentration,")]
#only("3")[#voiceover("or is it pH equals negative log of H plus concentration,")]
#only("4")[#voiceover("or maybe pH equals 14 minus log of H plus concentration,")]
#only("5")[#voiceover("or is it simply pH equals H plus concentration?")]
]
#questionDef(
questionText: "What is the formula to calculate pH from hydrogen ion concentration $[H^+]$?",
answerOptions: ("$pH = \log[H^+]$", "$pH = -\log[H^+]$", "$pH = 14 - \log[H^+]$", "$pH = [H^+]$"),
correctAnswerIndex: 1,
)