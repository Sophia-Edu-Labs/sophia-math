#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition]
#v(40pt)
#only("1-")[What does Slutsky Decomposition separate the effect of a price change into?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) Substitution and income effects]#only("2-")[#text(fill:green)[a) Substitution and income effects]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Supply and demand effects]#only("3-")[#text(fill:red)[b) Supply and demand effects]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Elasticity and inelasticity effects]#only("4-")[#text(fill:red)[c) Elasticity and inelasticity effects]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Marginal and average effects]#only("5-")[#text(fill:red)[d) Marginal and average effects]]
#v(40pt)

#only("1")[#voiceover("Sorry, that's incorrect. Let's take a look at the correct solution.")]
// Very briefly Talk about a and why it is correct
#only("2")[#voiceover("a) Substitution and income effects is indeed what Slutsky Decomposition separates the effect of a price change into.")]
// Very briefly Talk about b and why it is incorrect
#only("3")[#voiceover("b) Supply and demand effects is incorrect. While price changes do affect supply and demand, that's not what Slutsky Decomposition specifically looks at.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("c) Elasticity and inelasticity effects is also incorrect. Elasticity measures how responsive quantity demanded is to a change in price, but it's not the focus of Slutsky Decomposition.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And d) Marginal and average effects is incorrect as well. These terms relate to how additional units affect total utility or cost, but not to price changes.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition]
#v(40pt)
#only("1-")[Separates the effect of a price change into:]
#v(20pt)
#only("2-")[1️ #text(weight: "bold")[Substitution Effect]]
#v(10pt)
#only("3-")[- Change in consumption due to change in relative prices]
#only("4-")[- Holding utility constant]
#v(20pt)
#only("5-")[2️ #text(weight: "bold")[Income Effect]]
#v(10pt)
#only("6-")[- Change in consumption due to change in purchasing power]
#only("7-")[- Resulting from the price change]

#only("1")[#voiceover("Let's break down how Slutsky Decomposition works.")]
#only("2")[#voiceover("First, it identifies the substitution effect.")]
#only("3")[#voiceover("This is the change in consumption that happens because the relative prices of goods have changed.")]
#only("4")[#voiceover("Importantly, this is considered while holding the consumer's utility constant.")]
#only("5")[#voiceover("Second, it identifies the income effect.")]
#only("6")[#voiceover("This is the change in consumption that happens because the consumer's purchasing power has changed.")]
#only("7")[#voiceover("This change in purchasing power is a result of the price change.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mathematical Representation]
#v(40pt)
#only("1-")[Slutsky Equation:]
#v(20pt)
#only("2-")[$ dif x_1/dif p_1 = (dif x_1/dif p_1)_u + x_1 (dif x_1/dif I) $]
#v(20pt)
#only("3-")[Where:]
#v(10pt)
#only("4-")[- $ dif x_1/dif p_1 $ is the total effect]
#only("5-")[- $ (dif x_1/dif p_1)_u $ is the substitution effect]
#only("6-")[- $ x_1 (dif x_1/dif I) $ is the income effect]

#only("1")[#voiceover("The Slutsky Decomposition can be represented mathematically by the Slutsky equation.")]
#only("2")[#voiceover("The equation states that the total effect of a price change on the quantity demanded of a good is equal to the substitution effect plus the income effect.")]
#only("3")[#voiceover("In the equation,")]
#only("4")[#voiceover("dif x 1 over dif p 1 represents the total effect,")]
#only("5")[#voiceover("the term in parentheses represents the substitution effect,")]
#only("6")[#voiceover("and x 1 multiplied by dif x 1 over dif I represents the income effect.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[Slutsky Decomposition: 🔍]
#v(20pt)
#only("2-")[- Separates effect of price change into substitution and income effects]
#v(10pt)
#only("3-")[- Substitution effect: change in relative prices, holding utility constant]
#v(10pt)
#only("4-")[- Income effect: change in purchasing power due to price change]
#v(20pt)
#only("5-")[Mathematically: $ dif x_1/dif p_1 = (dif x_1/dif p_1)_u + x_1 (dif x_1/dif I) $]

#only("1")[#voiceover("To summarize, Slutsky Decomposition is a tool that")]
#only("2")[#voiceover("separates the effect of a price change into the substitution effect and the income effect.")]
#only("3")[#voiceover("The substitution effect captures the change in consumption due to a change in relative prices, holding utility constant,")]
#only("4")[#voiceover("while the income effect captures the change in consumption due to a change in purchasing power resulting from the price change.")]
#only("5")[#voiceover("This decomposition is represented mathematically by the Slutsky equation.")]
]