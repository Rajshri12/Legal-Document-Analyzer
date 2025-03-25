# 🧾 Legal Document Analyzer 📩

A powerful AI-powered tool that automates the analysis of legal documents. Leveraging **GenAI** for clause extraction and summarization, and integrating **WhatsApp API** for instant notifications, this project brings smart legal insights directly to your fingertips.

---

## 🚀 Features

- 📄 Upload and process legal documents (PDF, DOCX, TXT)
- 🧠 Uses **Generative AI** to:
  - Extract key clauses (e.g., indemnity, termination, liabilities)
  - Summarize lengthy legal text
  - Highlight critical sections
- 📲 Sends insights directly to your WhatsApp via **WhatsApp API**
- 🔐 Ensures data privacy with local document handling

---

## 🛠️ Tech Stack

| Technology         | Purpose                                   |
|--------------------|-------------------------------------------|
| 🐍 Python           | Core programming                         |
| 🧠 GenAI            | Natural Language Understanding & Summarization |
| 💬 WhatsApp API     | User notifications (Twilio / Meta)        |
| 🗄️ MySQL           | Store and manage document metadata        |
| ⚙️ FastAPI / Flask  | Backend API (optional)                   |
| 🌐 ngrok            | Local testing for webhooks                |

---

## 📦 Installation

```bash
git clone https://github.com/Rajshri12/Legal-Document-Analyzer.git
cd Legal-Document-Analyzer
pip install -r requirements.txt
```

---

## ⚙️ Usage

1. Place legal documents in the `/documents` folder.
2. Run the analyzer script:

```bash
python analyze.py
```

3. Receive clause summaries and highlights via WhatsApp.

---

## 🔧 Configuration

Create a `.env` file in the root directory with your API credentials:

```
GENAI_API_KEY=your_openai_or_google_genai_key
WHATSAPP_API_KEY=your_twilio_or_meta_key
WHATSAPP_PHONE_NUMBER=+91XXXXXXXXXX
```

---

## 📊 Sample Output

```
🧾 Document: NDA_Contract_2024.pdf

📌 Summary:
"This agreement outlines confidentiality terms between Party A and Party B..."

🔍 Key Clauses:
- Non-Disclosure: Clause 3
- Termination: Clause 7
- Indemnity: Clause 9

⚠️ Critical Section Highlighted:
"Party A shall not disclose any trade secret for a period of 5 years..."
```

---

## 🏆 Highlights

- Integrated **GenAI** for intelligent summarization
- Real-time clause delivery on **WhatsApp**
- Lightweight, fast, and easy to use
- Ideal for lawyers, legal assistants, or compliance teams

---

## 📚 Future Enhancements

- 🔍 OCR support for scanned documents
- 🌐 Web UI with drag-and-drop document upload
- 🧾 Support for multilingual documents
- 📈 Clause risk scoring and analytics dashboard

---

## 🤝 Contributions

Contributions are welcome!  
Feel free to fork this repo, open issues, or suggest new features.

---

## 📬 Contact

**Rajshree Guru**  
📧 [rajshreeguru0@gmail.com](mailto:rajshreeguru0@gmail.com)  
🔗 [LinkedIn](https://linkedin.com/in/rajshreeguru)  
💻 [GitHub](https://github.com/Rajshri12)

---

## ⭐ Show Your Support

If you found this project useful, leave a ⭐ on the repo and share it with your network!

```