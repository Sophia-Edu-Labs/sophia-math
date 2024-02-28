import os
from openai import OpenAI
from dotenv import load_dotenv, find_dotenv
import json


class ChatBot:
    def __init__(self):
        load_dotenv(find_dotenv(usecwd=True))
        self.client = OpenAI()
        self.messages = []
        self.responses = []

    def start_conversation(self, message):
        self.messages = [{"role": "user", "content": message}]
        response = self.client.chat.completions.create(
            messages=self.messages,
            model="gpt-4-turbo-preview",
        )
        self.responses.append(response.choices[0].message)
        self.print_user_message(message)
        self._print_response_content(response)

    def continue_conversation(self, message):
        self.messages.append({"role": "user", "content": message})
        response = self.client.chat.completions.create(
            messages=self.messages,
            model="gpt-4-turbo-preview",
        )
        self.responses.append(response.choices[0].message)
        self.print_user_message(message)
        self._print_response_content(response)

    def get_responses(self):
        return [message["content"] for message in self.messages if message["role"] == "assistant"]

    def _print_response_content(self, response):
        # Assuming the response structure has a list of messages, and you want the last one's content
        if response.choices and len(response.choices) > 0:
            print("Chat:\n\n")
            print(response.choices[0].message.content)
            print("\n")

    def print_user_message(self, message):
        print(f"User: \n\n{message}\n")




def get_video(exercise):


    # Open the JSON file for reading
    with open("prompts.json", 'r') as file:
        # Parse the JSON data from the file
        data = json.load(file)
    # Assuming 'exampleKey' is a key in your JSON file whose value is the string you want to import
    prompts = data['prompts']    
    

    bot = ChatBot()
    bot.start_conversation(prompts[0]+exercise)
    for i in range(1, len(prompts)):
        bot.continue_conversation(prompts[i])

    print("Final Slideshow:\n\n")
    print(bot.responses[-1].content)



first_exercise = """
Gegeben sei die Funktion 
$f(x)=e^(2x^2)-4e^x+4$.
Was ist die Ableitung dieser Funktion?
                """


get_video(first_exercise)

