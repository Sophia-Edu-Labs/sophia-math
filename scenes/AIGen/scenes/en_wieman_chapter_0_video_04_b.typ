#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Not quite...]
#v(40pt)
#only("1-")[That's not right... ]
#only("1")[
#voiceover("That's not it. The correct answer is 156.96 newtons per meter for the spring constant. Let's walk through the solution step-by-step to see how we arrive at that result.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Given Values]
#v(40pt)
#only("1-")[
- $m = 100g = 0.1"kg"$
- $h = 0.8m$  
- $x = 0.1m$
- $g = 9.81m/s^2$
]
#only("1")[
#voiceover("First, let's review the given values. We have a mass of 100 grams, which is 0.1 kilograms, a height of 0.8 meters, a spring compression distance of 0.1 meters, and the gravitational acceleration of 9.81 meters per second squared.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Energy Equation]
#v(40pt)
#only("1-")[
$1/2 k x^2 = m g h$
]
#only("1")[
#voiceover("The key equation we'll use equates the elastic potential energy of the compressed spring, one-half k x squared, with the gravitational potential energy the pinball will have at the top, m g h.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Solve for k]
#v(40pt)
#only("1-")[
$ 1/2 k x^2 = m g h $
]
#only("2-")[
  $ arrow.b $
$ k x^2 = 2 m g h $
]
#only("3-")[
  $ arrow.b $
$ k = (2 m g h) / x^2 $
]
#only("1")[
#voiceover("To solve for the spring constant k, we first multiply both sides by 2 to eliminate the one-half on the left side.")
]
#only("2")[
#voiceover("This gives us k x squared equals 2 m g h.")  
]
#only("3")[
#voiceover("Then we divide both sides by x squared to isolate k on the left side. We now have the formula for k in terms of the other variables.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitute Values]
#v(40pt)
#only("1-")[
$ k = (2 m g h) / x^2 $
]
#only("2-")[
  $ arrow.b $
$ k = (2 (0.1"kg") (9.81m/s^2) (0.8m)) / (0.1m)^2 $
]
#only("1")[
#voiceover("Now we can substitute in the given values. The mass of 0.1 kilograms, the gravitational acceleration of 9.81 meters per second squared, the height of 0.8 meters, and the compression distance of 0.1 meters.")
]
#only("2")[
#voiceover("This gives us k equals 2 times 0.1 times 9.81 times 0.8, all divided by 0.1 squared.")  
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculate 🧮]
#v(40pt)
#only("1-")[
$ k = (2 (0.1"kg") (9.81m/s^2) (0.8m)) / (0.1m)^2 $
]
#only("2-")[$ arrow.b $
$ k = (1.5696 "kg" dot m/s^2) / (0.01 m^2) $
]
#only("3-")[
  $ arrow.b $
$ k = 156.96 N/m $
]
#only("1")[
#voiceover("In the numerator, we multiply 2 times 0.1 times 9.81 times 0.8. This gives 1.5696 kilogram meters per second squared.")
]
#only("2")[
#voiceover("In the denominator, we square 0.1 to get 0.01 meters squared.")  
]
#only("3")[
#voiceover("Dividing the numerator by the denominator gives us a spring constant of 156.96 newtons per meter. And that's the answer you correctly provided. Well done!")
]
]