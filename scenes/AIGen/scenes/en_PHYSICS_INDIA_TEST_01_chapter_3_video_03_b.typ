#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Work Done by Electric Field]
#v(40pt)

#only("1-")[- Electric field: $E = 10 "V/m"$]
#v(20pt)
#only("2-")[- Distance: $d = 5 "mm" = 5 × 10^(-3) "m"$]
#v(20pt)
#only("3-")[- Given: $1.6 × 10^(-4) "J"$ for $10^6$ electrons through $1 "V"$]

#only("1")[
#voiceover("Not quite. Let's review the correct solution step by step. We're given an electric field of 10 volts per meter.")
]
#only("2")[
#voiceover("The electron moves a distance of 5 millimeters, which we need to convert to meters. 5 millimeters is equal to 5 times 10 to the power of negative 3 meters.")
]
#only("3")[
#voiceover("We're also given that 1.6 times 10 to the power of negative 4 joules of work is done to move 1 million electrons through a potential difference of 1 volt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculating Work]
#v(40pt)

#only("1-")[1. Find potential difference: $V = E × d$]
#v(20pt)
#only("2-")[   $V = 10 "V/m" × 5 × 10^(-3) "m" = 5 × 10^(-2) "V"$]
#v(20pt)
#only("3-")[2. Work for $10^6$ electrons through this $V$:]
#v(20pt)
#only("4-")[   $W_("million") = (1.6 × 10^(-4) "J") × (5 × 10^(-2))$]
#v(20pt)
#only("5-")[   $W_("million") = 8 × 10^(-6) "J"$]

#only("1")[
#voiceover("Now, let's calculate the work. First, we need to find the potential difference. The potential difference V is equal to the electric field E multiplied by the distance d.")
]
#only("2")[
#voiceover("Plugging in our values, we get 10 volts per meter times 5 times 10 to the power of negative 3 meters, which equals 5 times 10 to the power of negative 2 volts.")
]
#only("3")[
#voiceover("Next, we calculate the work done for 1 million electrons through this potential difference.")
]
#only("4")[
#voiceover("We multiply 1.6 times 10 to the power of negative 4 joules by 5 times 10 to the power of negative 2.")
]
#only("5")[
#voiceover("This gives us 8 times 10 to the power of negative 6 joules for 1 million electrons.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Calculation]
#v(40pt)

#only("1-")[3. Work for one electron:]
#v(20pt)
#only("2-")[   $W = W_("million") / 10^6$]
#v(20pt)
#only("3-")[   $W = (8 × 10^(-6) "J") / 10^6$]
#v(20pt)
#only("4-")[   $W = 8 × 10^(-12) "J"$]

#only("1")[
#voiceover("Finally, we need to find the work done on a single electron.")
]
#only("2")[
#voiceover("To do this, we divide the work done for 1 million electrons by 1 million.")
]
#only("3")[
#voiceover("That's 8 times 10 to the power of negative 6 joules divided by 10 to the power of 6.")
]
#only("4")[
#voiceover("This gives us our final answer: 8 times 10 to the power of negative 12 joules. This is the work done on a single electron in this electric field.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)

#only("1-")[- Electric field: $E = 10 "V/m"$ 🔌]
#v(20pt)
#only("2-")[- Distance: $d = 5 "mm" = 5 × 10^(-3) "m"$ 📏]
#v(20pt)
#only("3-")[- Potential difference: $V = 5 × 10^(-2) "V"$ ⚡]
#v(20pt)
#only("4-")[- Work done: $W = 8 × 10^(-12) "J"$ 💪]

#only("1")[
#voiceover("Let's summarize what we've learned. We started with an electric field of 10 volts per meter.")
]
#only("2")[
#voiceover("The electron moved a distance of 5 millimeters, which we converted to 5 times 10 to the power of negative 3 meters.")
]
#only("3")[
#voiceover("We calculated the potential difference to be 5 times 10 to the power of negative 2 volts.")
]
#only("4")[
#voiceover("And finally, we found that the work done on a single electron is 8 times 10 to the power of negative 12 joules. This problem shows how even tiny amounts of work can be significant when dealing with particles as small as electrons!")
]
]