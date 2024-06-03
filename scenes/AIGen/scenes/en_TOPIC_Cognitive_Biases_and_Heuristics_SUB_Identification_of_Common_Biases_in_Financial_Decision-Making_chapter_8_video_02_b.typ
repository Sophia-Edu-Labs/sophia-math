#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hindsight Bias]
#v(40pt)
What is hindsight bias?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) Predicting future events accurately]#only("2-")[#text(fill:red)[a) Predicting future events accurately]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Seeing past events as predictable]#only("3-")[#text(fill:green)[b) Seeing past events as predictable]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) Ignoring past events]#only("4-")[#text(fill:red)[c) Ignoring past events]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]
#only("1")[#voiceover("That's right, great job!")]
#only("2")[#voiceover("a) Predicting future events accurately is incorrect. Hindsight bias is not about predicting the future, but about perceiving the past.")]
#only("3")[#voiceover("b) Seeing past events as predictable is the correct answer. Hindsight bias is the tendency to see events, after they have occurred, as having been predictable.")]
#only("4")[#voiceover("c) Ignoring past events is also incorrect. Hindsight bias doesn't involve ignoring the past, but rather seeing it as more predictable than it was.")]
#only("5")[#voiceover("And d) None of the above is incorrect, because one of the options, b), is indeed the correct definition of hindsight bias.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Hindsight Bias Explained]
#v(40pt)
#only("1-")[Hindsight bias is the tendency to...]
#v(20pt)
#only("2-")[🔍 See past events]
#v(10pt)
#only("3-")[📈 As more predictable than they were]
#v(10pt)
#only("4-")[⏰ After they have occurred]
#v(40pt)
#only("5-")[It's like saying "I knew it all along" after something has happened, even if you didn't predict it beforehand. 🔮]
#only("1")[#voiceover("Let's break down the concept of hindsight bias.")]
#only("2")[#voiceover("Hindsight bias involves looking at past events...")]
#only("3")[#voiceover("...and seeing them as more predictable than they actually were at the time...")]
#only("4")[#voiceover("...after those events have already taken place.")]
#only("5")[#voiceover("It's like claiming 'I knew it all along' after something has happened, even if you didn't actually predict it beforehand. Hindsight bias can make us believe we had more foresight than we really did.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example of Hindsight Bias]
#v(40pt)
#only("1-")[Imagine a surprising election result. 🗳️]
#v(20pt)
#only("2-")[After the election, many people might claim the outcome was obvious and predictable. 🔍]
#v(20pt) 
#only("3-")[But before the election, the same outcome was seen as unlikely. 🤔]
#v(20pt)
#only("4-")[This is hindsight bias - seeing an event as more predictable after it has occurred. 📈]
#only("1")[#voiceover("Let's consider an example to illustrate hindsight bias.")]
#only("2")[#voiceover("Imagine there's a surprising result in an election. After the election, many people might claim that the outcome was obvious and predictable based on various factors.")]
#only("3")[#voiceover("However, before the election took place, the same outcome was likely seen as improbable or uncertain by most people.")]
#only("4")[#voiceover("This shift in perception - seeing the event as more predictable after it has happened compared to before - is a clear example of hindsight bias in action.")]
]