#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Choosing the Right Chart]
#v(40pt)
#only("1-")[Which type of chart would you use to track the change in stock prices over time? 📈]
#v(40pt)
#only("2-")[a) Pie chart 🥧]
#v(10pt)
#only("3-")[b) Line chart 📈]
#v(10pt)
#only("4-")[c) Bar chart 📊]  
#v(10pt)
#only("5-")[d) Table 📋]

#only("1")[#voiceover("Let's test your knowledge on choosing the right chart type. Which type of chart would you use to track the change in stock prices over time?")]
#only("2")[#voiceover("Would you use a pie chart,")]  
#only("3")[#voiceover("a line chart,")]
#only("4")[#voiceover("a bar chart,")]
#only("5")[#voiceover("or a table?")]
]#questionDef(
questionText: "Which type of chart would you use to track the change in stock prices over time?",
answerOptions: ("Pie chart", "Line chart", "Bar chart", "Table"),
correctAnswerIndex: 1
)