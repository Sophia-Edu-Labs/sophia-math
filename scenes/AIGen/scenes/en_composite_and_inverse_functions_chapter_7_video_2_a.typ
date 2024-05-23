#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Composite Functions]
#v(40pt)
In which field might composite functions be particularly useful?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[d) All of the above]#only("2-")[#text(fill:green)[d) All of the above]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[a) Physics]#only("3-")[#text(fill:red)[a) Physics]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[b) Economics]#only("4-")[#text(fill:red)[b) Economics]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[c) Biology]#only("5-")[#text(fill:red)[c) Biology]]

#only("1")[#voiceover("That's not quite right. Let me show you the correct solution...")]
// Very briefly Talk about d and why it is correct
#only("2")[#voiceover("d) All of the above. Composite functions are indeed useful in various fields, including physics, economics, and biology.")]
// Very briefly Talk about a and why it is incorrect on its own
#only("3")[#voiceover("a) Physics alone is not the complete answer. While composite functions are certainly used in physics, they are not limited to just this field.")]
// Very briefly Talk about b and why it is incorrect on its own  
#only("4")[#voiceover("b) Economics alone is also not the complete answer. Composite functions are used in economics, but their applications extend beyond this single field.")]
// Very briefly Talk about c and why it is incorrect on its own
#only("5")[#voiceover("c) Biology alone is similarly incomplete. Composite functions find use in biological modeling, but they are not restricted to biology.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Applications 🌍]
#v(40pt)
#only("1-")[Let's look at some examples:]
#v(20pt)
#only("2-")[- #text(fill:orange)[Physics 🔭]: Modeling velocity as a function of time]
#only("3-")[- #text(fill:green)[Economics 📈]: Modeling supply as a function of demand]  
#only("4-")[- #text(fill:blue)[Biology 🧬]: Modeling population growth as a function of resources]

#only("1")[#voiceover("Let's explore some specific applications of composite functions in these fields.")]
#only("2")[#voiceover("In physics, we often model velocity as a function of time. If we further model time as a function of another variable, we end up with a composite function for velocity.")]
#only("3")[#voiceover("In economics, supply can be modeled as a function of price, which in turn can be a function of demand. Again, this leads to a composite function.")]  
#only("4")[#voiceover("In biology, population growth can be modeled as a function of available resources, which may themselves be a function of environmental factors. Once more, we have a composite function.")]
#only("5")[#voiceover("As you can see, composite functions are a powerful tool for modeling complex relationships across various scientific domains.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Composite functions combine simpler functions to model complex relationships]
#v(20pt)  
#only("2-")[- They are used in many fields, including physics, economics, and biology]
#v(20pt)
#only("3-")[- Understanding composite functions is crucial for advanced mathematical modeling 🧮]

#only("1")[#voiceover("To summarize, composite functions allow us to combine simpler functions to model more complex relationships.")]
#only("2")[#voiceover("They find applications across many scientific fields, including but not limited to physics, economics, and biology.")]
#only("3")[#voiceover("As such, a solid grasp of composite functions is essential for anyone looking to engage in advanced mathematical modeling in these and other areas.")]
]