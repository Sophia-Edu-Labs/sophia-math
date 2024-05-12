#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Comparing Trade Volumes]
#v(40pt)
#only("1-")[Which chart type is most effective for comparing the volumes of trades for different stocks on the same chart? 📊]
#v(40pt)
#only("2-")[a) Line chart 📈]
#v(10pt)
#only("3-")[b) Bar chart 📊]
#v(10pt)
#only("4-")[c) Pie chart 🥧]
#v(10pt)
#only("5-")[d) Scatter chart 🎯]
#only("1")[#voiceover("If you want to compare the volumes of trades for different stocks on the same chart, which chart type would be most effective?")]
#only("2")[#voiceover("Would a line chart be the best choice,")]
#only("3")[#voiceover("or maybe a bar chart,")]
#only("4")[#voiceover("how about a pie chart,")]
#only("5")[#voiceover("or would a scatter chart be the most effective for this purpose?")]
]#questionDef(
questionText: "If you want to compare the volumes of trades for different stocks on the same chart, which chart type would be most effective?",
answerOptions: ("Line chart", "Bar chart", "Pie chart", "Scatter chart"),
correctAnswerIndex: 1
)