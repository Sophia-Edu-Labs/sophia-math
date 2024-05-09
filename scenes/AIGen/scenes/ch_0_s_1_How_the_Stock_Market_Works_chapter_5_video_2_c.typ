#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Market Transactions]
#v(40pt)
Who facilitates transactions between buyers and sellers in the stock market?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Government]#only("2-")[#text(fill:red)[a) Government]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Companies]#only("3-")[#text(fill:red)[b) Companies]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Brokers]#only("4-")[#text(fill:green)[c) Brokers]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Banks]#only("5-")[#text(fill:red)[d) Banks]]

#only("1")[#voiceover("The government is not directly involved in facilitating stock market transactions.")]
#only("2")[#voiceover("While companies issue stocks, they do not facilitate the transactions.")]
#only("3")[#voiceover("Brokers, also known as stockbrokers, are the professionals who facilitate transactions between buyers and sellers in the stock market.")]
#only("4")[#voiceover("While banks may offer brokerage services, they are not the primary facilitators of stock market transactions.")]
#only("5")[#voiceover("Great job! You selected the correct answer.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[The Role of Brokers]
#v(40pt)
#only("1-")[Brokers act as intermediaries in the stock market 🤝]
#v(20pt)
#only("2-")[They execute trades on behalf of their clients 📈]
#v(20pt)
#only("3-")[Brokers provide advice and market insights to investors 💡]
#v(20pt)
#only("4-")[They help ensure fair and orderly market transactions 🏦]

#only("1")[#voiceover("Let's dive deeper into the role of brokers in the stock market.")]
#only("2")[#voiceover("When an investor wants to buy or sell stocks, they place an order with their broker, who then executes the trade on their behalf.")]
#only("3")[#voiceover("In addition to executing trades, brokers often provide advice and market insights to help investors make informed decisions.")]
#only("4")[#voiceover("By acting as intermediaries and following market regulations, brokers help ensure fair and orderly transactions in the stock market.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Stock Market Ecosystem]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import networkx as nx

G = nx.DiGraph()

G.add_node("Investors", pos=(0, 1))
G.add_node("Brokers", pos=(0, 0))
G.add_node("Stock Exchange", pos=(1, 0.5))
G.add_node("Companies", pos=(2, 1))

G.add_edge("Investors", "Brokers", label="Place orders")
G.add_edge("Brokers", "Stock Exchange", label="Execute trades")
G.add_edge("Companies", "Stock Exchange", label="List stocks")
G.add_edge("Stock Exchange", "Investors", label="Price information")

pos = nx.get_node_attributes(G, 'pos')
labels = nx.get_edge_attributes(G, 'label')

nx.draw_networkx_nodes(G, pos, node_size=1000, node_color='lightblue')
nx.draw_networkx_labels(G, pos, font_size=12, font_weight='bold')
nx.draw_networkx_edges(G, pos, edge_color='gray', arrows=True)
nx.draw_networkx_edge_labels(G, pos, edge_labels=labels, font_size=10)

plt.axis('off')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Here's a simplified view of how the different entities interact in the stock market ecosystem.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Brokers facilitate transactions in the stock market 🤝]
#v(20pt)
#only("2-")[- They execute trades on behalf of investors 📈]
#v(20pt)
#only("3-")[- Brokers provide advice and ensure fair market transactions 💡🏦]
#v(20pt)
#only("4-")[- They are a crucial part of the stock market ecosystem 🌐]

#only("1")[#voiceover("To summarize, brokers play a crucial role in facilitating stock market transactions.")]
#only("2")[#voiceover("They execute trades on behalf of investors, acting as intermediaries between buyers and sellers.")]
#only("3")[#voiceover("In addition to trade execution, brokers provide advice and help ensure fair and orderly market transactions.")]
#only("4")[#voiceover("As such, brokers are an essential part of the complex stock market ecosystem, connecting investors, companies, and stock exchanges.")]
]