#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior]
#v(40pt)
#only("1-")[Herd behavior occurs when individuals \_\_\_\_\_.]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) make independent decisions]#only("2-")[#text(fill:red)[a) make independent decisions]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) follow the actions of a larger group]#only("3-")[#text(fill:green)[b) follow the actions of a larger group]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) rely on heuristics]#only("4-")[#text(fill:red)[c) rely on heuristics]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) avoid risks]#only("5-")[#text(fill:red)[d) avoid risks]]
#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Option a) is incorrect because herd behavior is not about making independent decisions. In fact, it's the opposite.")]
#only("3")[#voiceover("Option b) is the right answer. Herd behavior occurs when people follow the actions of a larger group, rather than making their own independent decisions.")]
#only("4")[#voiceover("Option c) is incorrect. While heuristics are mental shortcuts that can lead to biases, they are not directly related to herd behavior.")]
#only("5")[#voiceover("Option d) is also incorrect. Avoiding risks is not a defining characteristic of herd behavior.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. Understand the concept of herd behavior 🐑]
#v(20pt)
#only("2-")[- Herd behavior is a phenomenon where individuals in a group act collectively without centralized direction]
#v(20pt)
#only("3-")[2. Identify the key characteristic of herd behavior 🔑]
#v(20pt)
#only("4-")[- The main feature is individuals following the actions of a larger group]

#only("1")[#voiceover("Let's go through the solution step by step.")]
#only("2")[#voiceover("First, it's important to understand what herd behavior is. It's a phenomenon where individuals in a group act collectively without centralized direction.")]
#only("3")[#voiceover("Next, we need to identify the key characteristic of herd behavior.")]
#only("4")[#voiceover("The main feature is that individuals follow the actions of a larger group, rather than making independent decisions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. Eliminate the incorrect options ❌]
#v(20pt)
#only("2-")[- Options a), c), and d) do not describe the core aspect of herd behavior]
#v(20pt)
#only("3-")[2. Select the correct answer ✅]
#v(20pt)
#only("4-")[- Option b) correctly identifies that herd behavior involves following the actions of a larger group]

#only("1")[#voiceover("Now, let's eliminate the incorrect options.")]
#only("2")[#voiceover("Options a), c), and d) do not describe the core aspect of herd behavior. They mention independent decisions, heuristics, and risk avoidance, which are not the defining features.")]
#only("3")[#voiceover("Finally, we select the correct answer.")]
#only("4")[#voiceover("Option b) correctly identifies that herd behavior involves following the actions of a larger group, which is the key characteristic we identified earlier.")]
]