#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Mappings]
#v(40pt)
What does a linear mapping preserve?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Vector addition]#only("2-")[#text(fill:red)[a) Vector addition]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Scalar multiplication]#only("3-")[#text(fill:red)[b) Scalar multiplication]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Both vector addition and scalar multiplication]#only("4-")[#text(fill:green)[c) Both vector addition and scalar multiplication]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Neither]#only("5-")[#text(fill:red)[d) Neither]]

#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
// Very briefly Talk about a and why it is incorrect
#only("2")[#voiceover("Option a) Vector addition is partially correct, but not the full answer. A linear mapping preserves more than just vector addition.")]
// Very briefly Talk about b and why it is incorrect
#only("3")[#voiceover("Option b) Scalar multiplication is also partially correct, but again, not the complete answer.")]
// Very briefly Talk about c and why it is correct
#only("4")[#voiceover("Option c) Both vector addition and scalar multiplication is indeed the correct choice. A linear mapping preserves both of these properties.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("Option d) Neither is clearly incorrect, as we've seen that a linear mapping does preserve some properties.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Explanation]
#v(40pt)
#only("1-")[Let's understand why c) is the correct answer. 🤔]
#v(20pt)
#only("2-")[A linear mapping $T: V \\to W$ preserves:]
#v(20pt)
#only("3-")[- Vector addition: $T(u + v) = T(u) + T(v)$ ➕]
#v(10pt)
#only("4-")[- Scalar multiplication: $T(c v) = c T(v)$ ✖]
#v(20pt)
#only("5-")[These are the defining properties of a linear mapping. 📏]
#v(20pt)
#only("6-")[If a mapping preserves both, it's linear. If it lacks either, it's not. 🧮]

#only("1")[#voiceover("Let's go through a step-by-step explanation of why option c) Both vector addition and scalar multiplication is the correct answer.")]
#only("2")[#voiceover("By definition, a linear mapping T from V to W preserves two key properties:")]
#only("3")[#voiceover("First, it preserves vector addition. This means that T of u plus v equals T of u plus T of v, for any vectors u and v in V.")]
#only("4")[#voiceover("Second, it preserves scalar multiplication. This means that T of c times v equals c times T of v, for any vector v in V and scalar c.")]
#only("5")[#voiceover("These two properties - preserving vector addition and scalar multiplication - are the defining characteristics of a linear mapping.")]
#only("6")[#voiceover("If a mapping preserves both of these properties, it is a linear mapping. If it lacks either of these properties, it is not a linear mapping.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- A linear mapping preserves both vector addition and scalar multiplication. ✅]
#v(20pt)
#only("2-")[- $T(u + v) = T(u) + T(v)$ and $T(c v) = c T(v)$ 🔑]
#v(20pt)
#only("3-")[- These properties define a linear mapping. 📐]
#v(20pt)
#only("4-")[Great work on identifying the correct answer! 🌟]

#only("1")[#voiceover("To recap, a linear mapping preserves both vector addition and scalar multiplication.")]
#only("2")[#voiceover("In mathematical notation, this means that T of u plus v equals T of u plus T of v, and T of c times v equals c times T of v.")]
#only("3")[#voiceover("These two properties are the key defining characteristics of a linear mapping.")]
#only("4")[#voiceover("Great work on identifying the correct answer and understanding the properties of linear mappings!")]
]