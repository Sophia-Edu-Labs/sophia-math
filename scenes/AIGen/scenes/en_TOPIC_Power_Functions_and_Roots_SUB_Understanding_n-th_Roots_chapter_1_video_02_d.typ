#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
#v(40pt)
How is the 5th root of 32 written in notation?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect.
#only("-1")[a) $root(2, 32)$]#only("2-")[#text(fill:red)[a) $root(2, 32)$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is incorrect.
#only("-2")[b) $root(3, 32)$]#only("3-")[#text(fill:red)[b) $root(3, 32)$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) $root(4, 32)$]#only("4-")[#text(fill:red)[c) $root(4, 32)$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) $root(5, 32)$]#only("5-")[#text(fill:green)[d) $root(5, 32)$]]
#only("1")[#voiceover("Great job! You've chosen the correct answer.")]
#only("2")[#voiceover("Option a is incorrect because $root(2, 32)$ represents the square root or 2nd root of 32, not the 5th root.")]
#only("3")[#voiceover("Option b is also incorrect as $root(3, 32)$ stands for the cube root or 3rd root of 32.")]
#only("4")[#voiceover("Similarly, option c is wrong since $root(4, 32)$ denotes the 4th root of 32.")]
#only("5")[#voiceover("The correct answer is option d. $root(5, 32)$ is the proper notation for the 5th root of 32.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[In the notation $root(n, a)$:]
#v(20pt)
#only("2-")[- $n$ represents the #text(weight: "bold")[root], i.e., the power to which the result must be raised to get $a$. 📏]
#v(20pt)
#only("3-")[- $a$ is the #text(weight: "bold")[radicand], the number under the root sign. 🔢]
#v(40pt)
#only("4-")[So, for the 5th root of 32, we have:]
#v(20pt)
#only("5-")[- $n = 5$ (it's the 5th root)]
#v(20pt)
#only("6-")[- $a = 32$ (32 is the number we're taking the root of)]
#v(40pt)
#only("7-")[Therefore, the correct notation is $root(5, 32)$. ✅]

#only("1")[#voiceover("Let's break down the notation $root(n, a)$ step by step.")]
#only("2")[#voiceover("The letter $n$ stands for the root. It's the power to which the result must be raised to get the original number $a$.")]
#only("3")[#voiceover("The letter $a$ represents the radicand, which is the number under the root sign.")]
#only("4")[#voiceover("Now, let's apply this to our question about the 5th root of 32.")]
#only("5")[#voiceover("In this case, $n$ equals 5 because we're dealing with the 5th root.")]
#only("6")[#voiceover("And $a$ is 32 since 32 is the number we're taking the root of.")]
#only("7")[#voiceover("Putting it all together, we see that the correct notation for the 5th root of 32 is $root(5, 32)$.")]
]