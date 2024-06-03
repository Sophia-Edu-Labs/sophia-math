#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rational Investors]
#v(40pt)
What do rational investors base their decisions on?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) emotions]#only("2-")[#text(fill:red)[a) emotions]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) past experiences]#only("3-")[#text(fill:red)[b) past experiences]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) all available information]#only("4-")[#text(fill:green)[c) all available information]]
#v(10pt)  
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) market rumors]#only("5-")[#text(fill:red)[d) market rumors]]

#only("1")[#voiceover("That's not quite right. Let's take a look at the correct solution.")]
#only("2")[#voiceover("Emotions are not what rational investors base their decisions on. Rational investors aim to make objective decisions.")]
#only("3")[#voiceover("Past experiences alone are also not enough for rational investors. They consider all relevant information, not just their own experiences.")]
#only("4")[#voiceover("Indeed, rational investors base their decisions on all available information. This is the key assumption of traditional finance.")]
#only("5")[#voiceover("Market rumors are not a reliable basis for investment decisions. Rational investors seek factual information.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)  
1) Traditional finance assumes investors are #text(weight: "bold")[rational].
#v(20pt)
2) Rational investors make decisions based on #text(weight: "bold")[all available information].
#v(20pt)
3) They aim to #text(weight: "bold")[maximize their utility].
#v(20pt)
4) Emotions, past experiences, and rumors are #text(weight: "bold")[not] considered rational bases for decisions.
#v(20pt)
5) Therefore, the correct answer is #text(weight: "bold", fill:green)[c) all available information].

#only("1")[#voiceover("Let's go through the solution step by step. First, remember that traditional finance assumes investors are rational.")]
#only("2")[#voiceover("Rational investors, by definition, make decisions based on all available information. They consider all relevant facts.")]
#only("3")[#voiceover("The goal of rational investors is to maximize their utility or satisfaction. They make choices that they believe will lead to the best outcomes for them.")]
#only("4")[#voiceover("Factors like emotions, past experiences, and market rumors are not considered rational bases for making investment decisions. Rational investors aim to be objective.")]
#only("5")[#voiceover("Therefore, the correct answer is c) all available information. Rational investors in traditional finance base their decisions on all the relevant information available to them.")]
]