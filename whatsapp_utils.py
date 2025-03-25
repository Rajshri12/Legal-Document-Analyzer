from twilio.rest import Client
import os
from dotenv import load_dotenv

load_dotenv()

def send_whatsapp_message(body):
    client = Client(os.getenv("TWILIO_ACCOUNT_SID"), os.getenv("TWILIO_AUTH_TOKEN"))
    
    message = client.messages.create(
        from_=os.getenv("TWILIO_PHONE_NUMBER"),
        body=body,
        to=os.getenv("RECEIVER_PHONE_NUMBER")
    )
    
    print(f"WhatsApp message sent. SID: {message.sid}")
