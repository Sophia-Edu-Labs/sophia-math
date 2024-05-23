#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Inverse Functions]
#v(40pt)
If $f(x)$ and $g(x)$ are inverse functions, what is true about their domains and ranges?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) They are the same]#only("2-")[#text(fill:red)[a) They are the same]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) They are swapped]#only("3-")[#text(fill:green)[b) They are swapped]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) They are complementary]#only("4-")[#text(fill:red)[c) They are complementary]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) They are unrelated]#only("5-")[#text(fill:red)[d) They are unrelated]]
#only("1")[#voiceover("That's right, great job! Let's see why option b is the correct answer.")]
#only("2")[#voiceover("Option a is incorrect. The domains and ranges of inverse functions are not the same, but rather swapped.")]
#only("3")[#voiceover("Option b is correct. When two functions are inverses of each other, their domains and ranges are indeed swapped.")]
#only("4")[#voiceover("Option c is incorrect. Complementary sets are two sets whose union makes up the universal set. This is not the relationship between the domains and ranges of inverse functions.")]
#only("5")[#voiceover("Option d is also incorrect. The domains and ranges of inverse functions are very much related, as they are swapped versions of each other.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Step 1: Understand the concept of inverse functions 🔄]
#v(20pt)
#only("2-")[- If $f(x)$ and $g(x)$ are inverses, then $f(g(x)) = x$ and $g(f(x)) = x$]
#v(40pt)
#only("3-")[Step 2: Consider the implications for domains and ranges 🤔]
#v(20pt)
#only("4-")[- For $f(g(x))$ to equal $x$, the range of $g$ must be a subset of the domain of $f$]
#only("1")[#voiceover("Let's go through this step-by-step.")]
#only("2")[#voiceover("First, recall that if f of x and g of x are inverses, then f of g of x equals x, and g of f of x also equals x.")]
#only("3")[#voiceover("Now, let's think about what this means for the domains and ranges of f and g.")]
#only("4")[#voiceover("For f of g of x to equal x, the output of g, which is the range of g, must be a valid input for f, which is the domain of f.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[- Similarly, for $g(f(x))$ to equal $x$, the range of $f$ must be a subset of the domain of $g$]
#v(40pt)
#only("2-")[Step 3: Conclude that domains and ranges are swapped ✅]
#v(20pt)
#only("3-")[- The domain of $f$ equals the range of $g$, and vice versa]
#only("1")[#voiceover("Similarly, for g of f of x to equal x, the output of f, which is the range of f, must be a valid input for g, which is the domain of g.")]
#only("2")[#voiceover("From these observations, we can conclude that the domains and ranges of inverse functions are swapped.")]
#only("3")[#voiceover("In other words, the domain of f equals the range of g, and the range of f equals the domain of g.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visual Example]
#v(40pt)
Let's visualize this with an example:
#v(20pt)
#only("1-")[Consider $f(x) = x^2$ and $g(x) = sqrt(x)$]
#v(20pt)
#only("2-")[- Domain of $f$: $(-infinity, infinity)$, Range of $f$: $[0, infinity)$]
#v(20pt)
#only("3-")[- Domain of $g$: $[0, infinity)$, Range of $g$: $[0, infinity)$]
#v(20pt)
#only("4-")[Notice how the domain of $f$ equals the range of $g$, and the range of $f$ equals the domain of $g$ 🎯]
#only("1")[#voiceover("Let's look at a concrete example to visualize this concept.")]
#only("2")[#voiceover("Consider the functions f of x equals x squared and g of x equals the square root of x. The domain of f is all real numbers, while its range is all non-negative real numbers.")]
#only("3")[#voiceover("On the other hand, the domain of g is all non-negative real numbers, and its range is also all non-negative real numbers.")]
#only("4")[#voiceover("Observe how the domain of f matches the range of g, and the range of f matches the domain of g. This is precisely what we expect for inverse functions.")]
]
]]]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Inverse functions have swapped domains and ranges 🔀]
#v(20pt)
#only("2-")[- This is a consequence of the definition of inverse functions 📚]
#v(20pt)
#only("3-")[- Understanding this concept is crucial for working with inverses 🧠]
#only("1")[#voiceover("To summarize, the key takeaway is that inverse functions have swapped domains and ranges.")]
#only("2")[#voiceover("This is a direct consequence of the definition of inverse functions, which states that composing a function with its inverse yields the identity function.")]
#only("3")[#voiceover("Understanding this domain-range swapping is crucial for correctly working with inverse functions in various mathematical contexts.")]
]