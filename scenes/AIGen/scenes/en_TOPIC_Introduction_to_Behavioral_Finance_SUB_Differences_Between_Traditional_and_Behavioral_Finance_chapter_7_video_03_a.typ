#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Efficient Market Hypothesis (EMH)]
#v(40pt)
#only("1-")[According to EMH, asset prices \_\_\_\_\_.]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) are random]#only("2-")[#text(fill:red)[a) are random]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) reflect all available information]#only("3-")[#text(fill:green)[b) reflect all available information]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) are influenced by emotions]#only("4-")[#text(fill:red)[c) are influenced by emotions]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) are predictable]#only("5-")[#text(fill:red)[d) are predictable]]
#only("1")[#voiceover("That's okay! Let's go through the correct solution step-by-step to understand why.")]
#only("2")[#voiceover("Option a) is incorrect. The EMH does not suggest that asset prices are random. Instead, it suggests that they are determined by all available information.")]
#only("3")[#voiceover("Option b) is the correct answer. The EMH states that asset prices fully reflect all available information at any given time. This is the core idea of market efficiency.")]
#only("4")[#voiceover("Option c) is incorrect. The EMH assumes that investors are rational and that their decisions are based on information, not emotions.")]
#only("5")[#voiceover("Option d) is also incorrect. If asset prices already reflect all available information, it means that they are not predictable. No one can consistently achieve higher returns than the market average.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1) The Efficient Market Hypothesis (EMH) is a cornerstone of traditional finance. 📊]
#v(20pt)
#only("2-")[2) It states that asset prices fully reflect all available information at any given time. ℹ]
#v(20pt)
#only("3-")[3) This implies that markets are efficient and that asset prices adjust quickly to new information. ⚡]

#only("1")[#voiceover("First, let's recall that the EMH is a key concept in traditional finance.")]
#only("2")[#voiceover("The main idea of EMH is that asset prices fully incorporate all available information at any point in time.")]
#only("3")[#voiceover("This means that markets are considered efficient, and prices quickly adjust to any new information that becomes available.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1) As a result, it is impossible to consistently achieve returns higher than the market average. 🚫]
#v(20pt)
#only("2-")[2) Therefore, according to EMH, asset prices reflect all available information. ✅]

#only("1")[#voiceover("As a consequence, it's not possible to consistently beat the market or achieve returns higher than the market average.")]
#only("2")[#voiceover("Therefore, we can conclude that according to the EMH, asset prices reflect all available information, which is why option b) is the correct answer.")]
]