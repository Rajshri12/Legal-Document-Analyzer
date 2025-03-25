#!/bin/bash

# Create Python files
cat <<EOF > analyze.py
from genai_utils import summarize_text
from whatsapp_utils import send_whatsapp_message

def read_document(file_path):
    with open(file_path, "r", encoding="utf-8") as file:
        return file.read()

if __name__ == "__main__":
    document_path = "documents/sample_doc.txt"
    content = read_document(document_path)
    
    print("Analyzing document...")
    summary = summarize_text(content)
    
    print("Summary:\\n", summary)
    
    send_whatsapp_message("🧾 Legal Document Summary:\\n" + summary)
EOF

cat <<EOF > genai_utils.py
import openai
import os
from dotenv import load_dotenv

load_dotenv()
openai.api_key = os.getenv("OPENAI_API_KEY")

def summarize_text(text):
    prompt = f"Summarize the following legal document and highlight any important clauses:\\n\\n{text}"
    
    response = openai.ChatCompletion.create(
        model="gpt-3.5-turbo",
        messages=[
            {"role": "user", "content": prompt}
        ],
        max_tokens=500,
        temperature=0.5
    )
    
    summary = response['choices'][0]['message']['content']
    return summary
EOF

cat <<EOF > whatsapp_utils.py
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
EOF

# Create requirements.txt
cat <<EOF > requirements.txt
openai
python-dotenv
twilio
EOF

# Create .env file with placeholders
cat <<EOF > .env
OPENAI_API_KEY=your_openai_api_key
TWILIO_ACCOUNT_SID=your_twilio_sid
TWILIO_AUTH_TOKEN=your_twilio_token
TWILIO_PHONE_NUMBER=whatsapp:+14155238886
RECEIVER_PHONE_NUMBER=whatsapp:+91XXXXXXXXXX
EOF

# Create sample document
cat <<EOF > documents/sample_doc.txt
This Non-Disclosure Agreement (NDA) is made and entered into by and between Party A and Party B...
EOF

echo "✅ Legal Document Analyzer project structure created!"
