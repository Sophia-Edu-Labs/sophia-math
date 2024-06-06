#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Complex n-th Roots]
#v(40pt)
#only("1-")[- $root(6, -64)$ = ?]
#only("2-")[- $root(6, -64) = root(6, -1 * 64)$]
#only("3-")[- $root(6, -64) = root(6, -1) * root(6, 64)$]
#only("4-")[- $root(6, -64) = -1^(1/6) * 2$]
#only("5-")[- $root(6, -64) = (cos(π/6) + i*sin(π/6)) * 2$]
#only("6-")[- $root(6, -64) = cos(π/6)*2 + i*sin(π/6)*2$]
#only("7-")[- $root(6, -64) = sqrt(3) + i$]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's look at how we can solve this step by step.")
]
#only("2")[
#voiceover("First, we can rewrite the negative 64 as negative 1 times 64. This is because the sixth root of a negative number is a complex number.")
]
#only("3")[
#voiceover("Now, we can use the property of roots that says the root of a product is the product of the roots. So, the sixth root of negative 64 is the sixth root of negative 1 times the sixth root of 64.")
]
#only("4")[
#voiceover("The sixth root of 64 is simply 2. For the sixth root of negative 1, we can use Euler's formula. This says that the n-th root of negative 1 is cos of π divided by n, plus i times sin of π divided by n.")
]
#only("5")[
#voiceover("Applying this formula, we get cos of π over 6, plus i times sin of π over 6, all multiplied by 2.")
]
#only("6")[
#voiceover("Distributing the 2, we get 2 times cos of π over 6, plus 2 times i times sin of π over 6.")
]
#only("7")[
#voiceover("Finally, we can simplify. Cos of π over 6 is equal to the square root of 3 over 2, and sin of π over 6 is 1/2. Multiplying these by 2, we get the square root of 3, plus i.")
]
]