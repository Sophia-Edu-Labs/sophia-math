#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Let's think about why someone might want to invest in the stock market.")
]

#text(size: 30pt, weight: "bold")[Why Invest in Stocks? 🤔]
// The title "Why Invest in Stocks?" with a thinking emoji is shown on all slides

#v(40pt)

#only("2-")[In your own words, describe why someone might want to invest in the stock market. Consider factors such as:]
// The prompt for the free response question is shown from slide 2 onward

#v(20pt)

#only("3-")[
- Potential for financial gains 📈
- Opportunity to own part of a company 🏢
- Possibility of earning dividends 💸
- Long-term wealth building 🌱
]
// The bullet points with suggestive emojis are shown from slide 3 onward

#only("2")[
#voiceover("In your own words, describe why someone might want to invest in the stock market.")
]

#only("3")[
#voiceover("Consider factors such as the potential for financial gains, the opportunity to own part of a company, the possibility of earning dividends, and the potential for long-term wealth building.")
]

]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "In your own words, describe why someone might want to invest in the stock market.",
answerOptions: ("A good answer will mention one or more of: potential for financial gains, ownership in companies, dividends, long-term wealth building. The explanation should be in the student's own words and demonstrate understanding.", "The answer does not adequately explain reasons for investing in the stock market or does not use the student's own words."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)