#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stocks in a Company]
#v(40pt)
What do stocks represent in a company?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Debts]#only("2-")[#text(fill:red)[a) Debts]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Ownership]#only("3-")[#text(fill:green)[b) Ownership]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Partnership]#only("4-")[#text(fill:red)[c) Partnership]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Loans]#only("5-")[#text(fill:red)[d) Loans]]

#only("1")[#voiceover("Incorrect answer. Let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a) Debts is incorrect. Stocks do not represent debts owed by the company.")]
#only("3")[#voiceover("Option b) Ownership is the correct answer. Stocks represent ownership in a company.")]
#only("4")[#voiceover("Option c) Partnership is incorrect. Stocks represent ownership, not necessarily a partnership.")]
#only("5")[#voiceover("Option d) Loans is also incorrect. Stocks are not loans given to the company.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Stocks Represent Ownership]
#v(40pt)
#only("1-")[- When you buy a stock, you buy a piece of the company 🧩]
#v(20pt)
#only("2-")[- The more stocks you own, the larger your ownership stake 📈]
#v(20pt)
#only("3-")[- Stockholders are part-owners of the company 👥]
#v(20pt)
#only("4-")[- They have certain rights, like voting on corporate matters 🗳️]

#only("1")[#voiceover("When you purchase a stock, you are essentially buying a piece of the company. You become a shareholder.")]
#only("2")[#voiceover("The more stocks you own, the larger your ownership stake in the company.")]
#only("3")[#voiceover("As a stockholder, you are a part-owner of the company, along with all other shareholders.")]
#only("4")[#voiceover("This ownership comes with certain rights, such as the right to vote on important corporate matters.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Stock Ownership]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt

labels = 'Shareholder A', 'Shareholder B', 'Shareholder C', 'Other Shareholders'
sizes = [15, 30, 20, 35]
explode = (0.1, 0, 0, 0)  

fig1, ax1 = plt.subplots()
ax1.pie(sizes, explode=explode, labels=labels, autopct='%1.1f%%',
        shadow=True, startangle=90)
ax1.axis('equal')  
plt.title("Company Ownership")

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Here's a pie chart visualizing the ownership structure of a hypothetical company. Each slice represents a shareholder's ownership percentage. The larger the slice, the more stocks they own and the larger their ownership stake.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Stocks represent ownership in a company 🏢]
#v(20pt)
#only("2-")[- Stockholders are part-owners 👥]
#v(20pt)
#only("3-")[- Ownership size depends on number of stocks 📊]
#v(20pt)
#only("4-")[- Stockholders have certain rights 📜]

#only("1")[#voiceover("To summarize, stocks represent ownership in a company.")]
#only("2")[#voiceover("When you own stocks, you are a part-owner of the company, along with other stockholders.")]
#only("3")[#voiceover("The size of your ownership depends on how many stocks you own.")]
#only("4")[#voiceover("And as a stockholder, you have certain rights that come with this ownership.")]
]