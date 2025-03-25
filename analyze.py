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
    
    print("Summary:\n", summary)
    
    send_whatsapp_message("🧾 Legal Document Summary:\n" + summary)
