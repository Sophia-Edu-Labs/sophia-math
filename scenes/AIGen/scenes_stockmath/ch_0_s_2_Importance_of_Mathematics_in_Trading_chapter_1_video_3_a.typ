#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Exchanges]
#v(40pt)
#only("1-")[Which are famous stock exchanges?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) NYSE and NASDAQ]#only("2-")[#text(fill:green)[a) NYSE and NASDAQ]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) FBI and CIA]#only("3-")[#text(fill:red)[b) FBI and CIA]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) NASA and ESA]#only("4-")[#text(fill:red)[c) NASA and ESA]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) FIFA and UEFA]#only("5-")[#text(fill:red)[d) FIFA and UEFA]]
#v(40pt)

#only("1")[#voiceover("Great job, you selected the correct answer!")]
#only("2")[#voiceover("a) NYSE and NASDAQ are indeed famous stock exchanges. The New York Stock Exchange (NYSE) and the National Association of Securities Dealers Automated Quotations (NASDAQ) are two of the largest stock exchanges in the world, both located in the United States.")]
#only("3")[#voiceover("b) FBI and CIA are incorrect. The Federal Bureau of Investigation (FBI) and the Central Intelligence Agency (CIA) are U.S. government agencies involved in law enforcement and intelligence, not stock exchanges.")]
#only("4")[#voiceover("c) NASA and ESA are also incorrect. The National Aeronautics and Space Administration (NASA) and the European Space Agency (ESA) are space agencies, not related to stock trading.")]
#only("5")[#voiceover("And d) FIFA and UEFA are incorrect as well. The Fédération Internationale de Football Association (FIFA) and the Union of European Football Associations (UEFA) are football (soccer) governing bodies, unrelated to stock markets.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[NYSE and NASDAQ]
#v(40pt)
#only("1-")[Here's some more info on these exchanges:]
#v(20pt)
#only("2-")[- NYSE 🗽]
  - Located on Wall Street in New York City
  - Largest stock exchange in the world by market capitalization
#v(10pt)  
#only("3-")[- NASDAQ 💻]
  - Second-largest exchange in the world 
  - Known for listing many technology companies

#only("1")[#voiceover("Let's dive a bit deeper into NYSE and NASDAQ.")]
#only("2")[#voiceover("The New York Stock Exchange, or NYSE, is located on the famous Wall Street in New York City. It's the largest stock exchange in the world by market capitalization, which is the total value of all the companies listed on the exchange.")]
#only("3")[#voiceover("NASDAQ, on the other hand, is the second-largest exchange in the world. It's known for listing many technology companies. In fact, tech giants like Apple, Microsoft, Amazon, Google, and Facebook are all listed on the NASDAQ.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Trading Volume]
#v(40pt)
#only("1-")[Here's a comparison of their daily trading volumes:]
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

exchanges = ['NYSE', 'NASDAQ']
volumes = [3.5, 2.1]  # in billions of shares

plt.figure(figsize=(8, 6))
plt.bar(exchanges, volumes, color=['skyblue', 'lightgreen'])
plt.ylabel('Daily Trading Volume (Billions of Shares)')
plt.title('NYSE vs NASDAQ Trading Volume')
plt.show()
```,
width: 360pt),
)
]
]
]
#v(20pt)
#only("3-")[- NYSE trades around 3.5 billion shares daily 📈]
#only("4-")[- NASDAQ trades around 2.1 billion shares daily 📊]

#only("1")[#voiceover("Now, let's compare the daily trading volumes of these two exchanges.")]
#only("2")[#voiceover("This bar graph shows the average number of shares traded each day on the NYSE and NASDAQ.")]
#only("3")[#voiceover("The NYSE trades around 3.5 billion shares on a typical day.")]
#only("4")[#voiceover("The NASDAQ, in comparison, trades about 2.1 billion shares daily. So while the NASDAQ is known for its tech listings, the NYSE still leads in terms of sheer trading volume.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- NYSE and NASDAQ are the two largest stock exchanges in the world 🌎]
#v(20pt)
#only("2-")[- NYSE is larger in terms of market cap and trading volume 📈]
#v(20pt)
#only("3-")[- NASDAQ is known for listing many tech companies 💻]
#v(20pt)
#only("4-")[- Both play a crucial role in the global financial system 💰]

#only("1")[#voiceover("To sum up, the NYSE and NASDAQ are the two largest stock exchanges globally.")]
#only("2")[#voiceover("The NYSE is larger in terms of the total value of listed companies and the number of shares traded each day.")]
#only("3")[#voiceover("The NASDAQ, while smaller, is particularly important in the technology sector.")]
#only("4")[#voiceover("Together, these two exchanges form a critical part of the global financial system, facilitating the buying and selling of company shares and thereby providing capital for businesses to grow.")]
]