#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Time Value of Money Recap 💰⏰]

#v(40pt)

#only("1-")[- Money today is worth more than the same amount in the future]

#v(20pt)

#only("2-")[- Potential earning capacity through:
  - Investment opportunities 📈
  - Interest 🏦
  - Inflation 💸]

#v(40pt)

#only("3-")[
  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
x = np.array([0, 1, 2, 3, 4, 5])
y = 100 * (1.05 ** x)

# Create plot
plt.figure(figsize=(6, 4))
plt.plot(x, y, 'o-', color='blue', label='Money Growth')
plt.xlabel('Time (years)')
plt.ylabel('Money Value ($)')
plt.title('Time Value of Money')
plt.grid(True)
plt.legend()
plt.tight_layout()
plt.show()
```, width: 360pt),
      )
    ]
  ]
]

#only("1")[#voiceover("In this recap, we'll revisit the key concept of the time value of money. The main idea is that money available today is worth more than the same amount in the future.")]

#only("2")[#voiceover("This is due to the potential earning capacity of money over time. Money can grow through investment opportunities, earn interest in savings accounts, or lose purchasing power due to inflation.")]

#only("3")[#voiceover("Here's a graph illustrating the time value of money. You can see that as time progresses, the value of money grows due to the effect of compound interest. In this example, $100 today would grow to about $128 after 5 years at a 5% annual interest rate.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]

#v(40pt)

#only("1-")[- Present Value (PV) vs. Future Value (FV)]

#v(20pt)

#only("2-")[- Discounting: PV = FV / (1 + r)^n]

#v(20pt)

#only("3-")[- Compounding: FV = PV × (1 + r)^n]

#only("1")[#voiceover("The time value of money introduces the concepts of Present Value, or PV, and Future Value, or FV. PV is the value of money today, while FV is the value of money at a future point in time.")]

#only("2")[#voiceover("To find the Present Value, we use discounting. The formula is PV equals FV divided by quantity 1 plus r raised to the power n, where r is the discount rate per period and n is the number of periods.")]

#only("3")[#voiceover("Conversely, to find the Future Value, we use compounding. The formula is FV equals PV times quantity 1 plus r raised to the power n. This is how we can calculate the growth of money over time.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Practical Applications 🏠🏭]

#v(40pt)

#only("1-")[- Real estate investments 🏠]

#v(20pt)

#only("2-")[- Business decision making 💼]

#v(20pt)

#only("3-")[- Personal finance planning 👛]

#only("1")[#voiceover("The time value of money has many practical applications. In real estate, it's used to evaluate the profitability of investments by considering the present value of future cash flows.")]

#only("2")[#voiceover("Businesses use these concepts to make decisions about investments, loans, and budgeting. They can compare the value of different cash flows over time.")]

#only("3")[#voiceover("On a personal level, understanding the time value of money can help with financial planning. It emphasizes the importance of saving and investing early to take advantage of compound growth over time.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion 🎓]

#v(40pt)

#only("1-")[- Money has a time value]

#v(20pt)

#only("2-")[- PV, FV, discounting, compounding]

#v(20pt)

#only("3-")[- Crucial for financial decisions 💡]

#only("1")[#voiceover("In summary, the key lesson is that money has a time value. A dollar today is worth more than a dollar in the future.")]

#only("2")[#voiceover("We learned about Present Value, Future Value, and the processes of discounting and compounding to move money through time.")]

#only("3")[#voiceover("Understanding these concepts is crucial for making informed financial decisions, whether in personal life, business, or investing. The time value of money is a fundamental principle of finance.")]

]