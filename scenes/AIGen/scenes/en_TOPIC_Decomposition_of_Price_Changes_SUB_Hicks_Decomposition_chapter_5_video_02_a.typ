#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise 1]
#v(40pt)
Which decomposition holds utility constant?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) Hicks]#only("2-")[#text(fill:green)[a) Hicks]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Slutsky]#only("3-")[#text(fill:red)[b) Slutsky]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Both]#only("4-")[#text(fill:red)[c) Both]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Neither]#only("5-")[#text(fill:red)[d) Neither]]

#only("1")[#voiceover("Great job! You've selected the correct answer.")]
#only("2")[#voiceover("a) Hicks decomposition indeed holds utility constant. Let's see why this is the case and why the other options are incorrect.")]
#only("3")[#voiceover("b) Slutsky decomposition is incorrect because it holds real income, not utility, constant.")]
#only("4")[#voiceover("c) Both is incorrect because only Hicks, not Slutsky, holds utility constant.")]
#only("5")[#voiceover("d) Neither is also incorrect because Hicks does hold utility constant.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[- Hicks decomposition separates the effect of a price change into:]
#v(20pt)
#only("2-")[  1. Substitution effect 🔄]
#v(10pt)
#only("3-")[  2. Income effect 💰]
#v(20pt)
#only("4-")[- It does this by holding #text(weight: "bold")[utility] constant.]
#v(20pt)
#only("5-")[- In contrast, Slutsky decomposition holds #text(weight: "bold")[real income] constant.]

#only("1")[#voiceover("Let's break this down step by step.")]
#only("2")[#voiceover("First, Hicks decomposition separates the effect of a price change into the substitution effect, which captures the change in consumption due to the change in relative prices,")]
#only("3")[#voiceover("and the income effect, which captures the change in consumption due to the change in purchasing power.")]
#only("4")[#voiceover("The key point is that Hicks decomposition does this by holding utility constant. This means it looks at how consumption changes while keeping the consumer at the same level of satisfaction.")]
#only("5")[#voiceover("On the other hand, Slutsky decomposition holds real income, not utility, constant. So Hicks is the one that specifically holds utility constant.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Hicks decomposition holds #text(weight: "bold")[utility] constant. ✅]
#v(20pt)
#only("2-")[- Slutsky decomposition holds #text(weight: "bold")[real income] constant. ❌]
#v(20pt)
#only("3-")[So, the correct answer is: #text(weight: "bold")[a) Hicks].]

#only("1")[#voiceover("To summarize, Hicks decomposition is the one that holds utility constant when separating the effects of a price change.")]
#only("2")[#voiceover("Slutsky decomposition, in contrast, holds real income constant.")]
#only("3")[#voiceover("Therefore, the correct answer to the question 'Which decomposition holds utility constant?' is a) Hicks.")]
]