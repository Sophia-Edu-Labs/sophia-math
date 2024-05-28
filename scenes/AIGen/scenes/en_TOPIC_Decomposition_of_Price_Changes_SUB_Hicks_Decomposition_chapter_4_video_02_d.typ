#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hicks Decomposition]
#v(40pt)
#only("1-")[What type of demand function is used in Hicks Decomposition?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) Compensated demand]#only("2-")[#text(fill:green)[a) Compensated demand]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Uncompensated demand]#only("3-")[#text(fill:red)[b) Uncompensated demand]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Market demand]#only("4-")[#text(fill:red)[c) Market demand]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Aggregate demand]#only("5-")[#text(fill:red)[d) Aggregate demand]]
#v(40pt)

#only("1")[#voiceover("Not quite. Let's go over the correct solution.")]
// Very briefly Talk about a and why it is correct
#only("2")[#voiceover("a) Compensated demand is indeed the type of demand function used in Hicks Decomposition. Compensated demand functions hold utility constant, which is a key aspect of Hicks Decomposition.")]
// Very briefly Talk about b and why it is incorrect
#only("3")[#voiceover("b) Uncompensated demand is incorrect. Uncompensated demand functions do not hold utility constant, which is necessary for Hicks Decomposition.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("c) Market demand is also incorrect. Market demand refers to the total demand for a good or service in a marketplace, not a specific type of demand function.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And d) Aggregate demand is incorrect as well. Aggregate demand is the total demand for all goods and services in an economy, not a specific type of demand function.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Compensated Demand Functions]
#v(40pt)
#only("1-")[Key characteristics: 🔑]
#v(20pt)
#only("2-")[- Hold utility constant 📊]
#only("3-")[- Isolate substitution effect 🔄]
#only("4-")[- Mathematical notation: $h(p, u)$ 🧮]
#v(40pt)
#only("5-")[Used in Hicks Decomposition to separate price effects into: 💰➕🔄]
#v(20pt)
#only("6-")[1. Substitution Effect]
#only("7-")[2. Income Effect]

#only("1")[#voiceover("Let's dive a bit deeper into compensated demand functions and their role in Hicks Decomposition.")]
#only("2")[#voiceover("The key characteristic of compensated demand functions is that they hold utility constant.")]
#only("3")[#voiceover("By holding utility constant, compensated demand functions isolate the substitution effect, which shows how consumption changes when prices change, keeping utility constant.")]
#only("4")[#voiceover("Mathematically, a compensated demand function is typically written as h of p and u, where p represents prices and u represents the utility level.")]
#only("5")[#voiceover("In Hicks Decomposition, compensated demand functions are used to separate the effects of a price change into two parts:")]
#only("6")[#voiceover("First, the substitution effect, which we just discussed,")]
#only("7")[#voiceover("And second, the income effect, which shows how consumption changes due to a change in real income after adjusting for the substitution effect.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Hicks Decomposition uses compensated demand functions 📈]
#v(20pt)
#only("2-")[- Compensated demand holds utility constant 📊]
#v(20pt)
#only("3-")[- Separates price effects into substitution and income effects 🔄💰]
#v(20pt)
#only("4-")[- Key tool for analyzing consumer behavior 🧐]

#only("1")[#voiceover("To recap, Hicks Decomposition uses compensated demand functions,")]
#only("2")[#voiceover("which hold utility constant,")]
#only("3")[#voiceover("to separate the effects of a price change into substitution and income effects.")]
#only("4")[#voiceover("This makes Hicks Decomposition a key tool for analyzing consumer behavior and understanding how consumers respond to price changes.")]
]