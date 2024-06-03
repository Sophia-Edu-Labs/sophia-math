#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Spring Constant Recap]
#v(40pt)
#only("1-")[- Designing a pinball machine launcher 🎰]
#v(20pt)
#only("2-")[- Spring constant $k$ determines spring behavior]
#only("1")[
#voiceover("In this subchapter, we explored the concept of spring constant in the context of designing a pinball machine launcher.")
]
#only("2")[
#voiceover("The spring constant, denoted by k, is a key parameter that determines how a spring behaves under load.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Energy Considerations]
#v(40pt)
#only("1-")[- Equate elastic potential energy and gravitational potential energy]
#v(20pt)
#only("2-")[$ 1/2 k x^2 = m g h $]
#only("1")[
#voiceover("To determine the necessary spring constant, we equated the elastic potential energy stored in the compressed spring with the gravitational potential energy required to launch the pinball to the desired height.")
]
#only("2")[
#voiceover("This relationship is expressed by the equation one-half k x squared equals m g h, where k is the spring constant, x is the spring compression distance, m is the mass of the pinball, g is the gravitational acceleration, and h is the target height.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Calculating Spring Constant]
#v(40pt)
#only("1-")[- Given: $m=100g$, $h=0.8m$, $x=0.1m$, $g=9.81m/s^2$]
#v(20pt)
#only("2-")[- Solve for $k$: $k = 2 m g h / x^2$]
#v(20pt)
#only("3-")[- Result: $k = 156.96 N/m$]
#only("1")[
#voiceover("We were given the mass of the pinball as 100 grams, the desired height as 0.8 meters, the spring compression distance as 0.1 meters, and the gravitational acceleration as 9.81 meters per second squared.")
]
#only("2")[
#voiceover("To solve for the spring constant k, we rearranged the equation to k equals 2 times m times g times h divided by x squared.")
]
#only("3")[
#voiceover("Plugging in the given values, we calculated the required spring constant to be approximately 156.96 newtons per meter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Spring constant is a measure of spring stiffness 📏]
#v(20pt)
#only("2-")[- Higher $k$ means stiffer spring, more force needed for compression]
#v(20pt)
#only("3-")[- Equating energies allows solving for $k$ in practical applications 🎯]
#only("1")[
#voiceover("The key takeaway is that the spring constant is a measure of a spring's stiffness.")
]
#only("2")[
#voiceover("A higher spring constant means a stiffer spring, requiring more force to compress it by a given distance.")
]
#only("3")[
#voiceover("By equating the relevant energies in a system, we can solve for the spring constant needed to achieve a desired outcome, such as launching a pinball to a specific height in a pinball machine.")
]
]