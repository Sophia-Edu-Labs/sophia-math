#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Income Effect]
#v(40pt)
The income effect shows changes in consumption due to a change in \_\_\_\_\_.
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) real income]#only("2-")[#text(fill:green)[a) real income]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) price]#only("3-")[#text(fill:red)[b) price]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) utility]#only("4-")[#text(fill:red)[c) utility]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) quantity]#only("5-")[#text(fill:red)[d) quantity]]
#v(40pt)
#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("The income effect indeed shows changes in consumption due to a change in real income.")]
#only("3")[#voiceover("Price is incorrect because price changes are the trigger for the income effect, not what the income effect itself shows.")]
#only("4")[#voiceover("Utility is also incorrect. The income effect does not directly show changes in utility.")]
#only("5")[#voiceover("And quantity is incorrect as well. While consumption quantities may change due to the income effect, the income effect itself shows the change in real income.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Explanation]
#v(40pt)
#only("1-")[1️⃣ The income effect is part of the Hicks Decomposition.]
#v(20pt)
#only("2-")[2️⃣ It isolates the effect of a change in real income on consumption.]
#v(20pt)
#only("3-")[3️⃣ Real income changes because a price change alters purchasing power.]
#v(20pt)
#only("4-")[4️⃣ The income effect shows how this change in real income affects consumption, holding utility constant.]
#v(20pt)
#only("5-")[5️⃣ So the correct answer is a) real income. 🎉]

#only("1")[#voiceover("Let's break this down step by step. First, remember that the income effect is part of the Hicks Decomposition of a price change.")]
#only("2")[#voiceover("The role of the income effect is to isolate the effect of a change in real income on consumption.")]
#only("3")[#voiceover("Now, why does real income change? It's because when a price changes, it alters the consumer's purchasing power.")]
#only("4")[#voiceover("The income effect captures how this change in real income affects the consumer's consumption choices, while holding utility constant.")]
#only("5")[#voiceover("Therefore, the correct answer is a) real income. The income effect shows changes in consumption due to a change in real income.")]
]