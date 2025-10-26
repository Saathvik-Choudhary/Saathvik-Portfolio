# Deployment Tasks - Step by Step Guide

## 🎯 Objective
Deploy remaining projects to get live demo links for the portfolio.

---

## ✅ Already Live

### 1. Saathvik Portfolio
- **URL**: https://saathvik-choudhary.github.io/Saathvik-Portfolio/
- **Status**: ✅ Live and Updated
- **Last Commit**: e43b70a

### 2. Sports Events Platform  
- **URL**: https://saathvik-choudhary.github.io/Events_Website/
- **Status**: ✅ Live
- **Auto-deploy**: GitHub Actions configured

---

## 📋 Remaining Projects to Deploy

### 3. AI Travel Buddy
**Type**: FastAPI Backend + React Frontend  
**Deployment Platform**: Render / Railway / Heroku

**Steps:**
1. **Prepare Backend Deployment**:
   ```bash
   cd AI_Travel_Buddy
   # Ensure .env has OPENAI_API_KEY
   git add . && git commit -m "Prepare for deployment"
   ```

2. **Deploy Options**:
   - **Option A**: Render (Free tier)
     - Go to render.com
     - Connect GitHub repo
     - Build command: `pip install -r requirements.txt && python main.py`
     - Start command: `uvicorn main:app --host 0.0.0.0 --port $PORT`
   
   - **Option B**: Railway
     - Go to railway.app
     - New Project → Deploy from GitHub
     - Add OPENAI_API_KEY in environment variables
   
   - **Option C**: Heroku
     ```bash
     heroku create ai-travel-buddy
     heroku config:set OPENAI_API_KEY=your_key
     git push heroku main
     ```

3. **Frontend**: Deploy React build to Vercel or Netlify

**Expected URL**: `https://ai-travel-buddy.onrender.com`

---

### 4. Agentic RAG System
**Type**: Streamlit App  
**Deployment Platform**: Streamlit Cloud (Recommended)

**Steps:**
1. **Verify Prerequisites**:
   ```bash
   cd Rag_Project
   # Check app.py exists and has streamlit.set_page_config
   ```

2. **Deploy to Streamlit Cloud**:
   - Go to https://share.streamlit.io/
   - Sign in with GitHub
   - Click "New app"
   - Select repository: `Saathvik-Choudhary/Rag_Project`
   - Main file path: `app.py`
   - App URL: `app.py`
   - Add secrets: OPENAI_API_KEY, SERPER_API_KEY

3. **Alternative**: Deploy via Streamlit CLI
   ```bash
   streamlit run app.py
   ```

**Expected URL**: `https://agentic-rag.streamlit.app`

---

### 5. Alex - AI Assistant
**Type**: Node.js + React  
**Deployment Platform**: Vercel / Netlify / Railway

**Steps:**
1. **Backend Deployment (Railway/Heroku)**:
   ```bash
   cd Personal_Assistant
   # Backend is in server/ directory
   cd server
   # Deploy to Railway or Heroku
   ```

2. **Frontend Deployment (Vercel)**:
   ```bash
   cd Personal_Assistant/client
   # Build the React app
   npm run build
   # Deploy to Vercel
   vercel deploy
   ```

3. **Or use Docker**:
   ```bash
   # Already has Dockerfile
   docker build -t alex-assistant .
   docker run -p 3000:3000 alex-assistant
   ```

**Expected URL**: `https://alex-ai-assistant.vercel.app`

---

### 6. IDataProfiler
**Type**: Streamlit App  
**Status**: ✅ Already deployed to Azure  
**URL**: Azure Web App (Production)

**Note**: This is already live on Azure, just need the URL

---

### 7. DQSpark
**Type**: Databricks Notebook  
**Status**: 🏢 Enterprise platform  
**Note**: No public deployment - internal Databricks workspace

---

### 8. Instagram Lead Scraper
**Type**: Python CLI Tool  
**Status**: 🔧 Command-line script  
**Note**: No web deployment needed - this is a local automation script

---

## 🚀 Quick Deployment Scripts

### For AI Travel Buddy (Render):
```bash
cd AI_Travel_Buddy
# Create Procfile
echo "web: uvicorn main:app --host 0.0.0.0 --port \$PORT" > Procfile
git add Procfile && git commit -m "Add Procfile for deployment"
git push origin main
```

### For Agentic RAG (Streamlit):
```bash
cd Rag_Project
# Push to GitHub
git push origin main
# Then go to share.streamlit.io and deploy
```

### For Alex Assistant (Vercel):
```bash
cd Personal_Assistant/client
vercel --prod
```

---

## 📸 Getting Project Screenshots

Once deployments are live:

1. **AI Travel Buddy**: Screenshot of the itinerary creation interface
2. **Agentic RAG**: Screenshot of the knowledge assistant UI
3. **Alex Assistant**: Screenshot of the voice-first interface
4. **Sports Events**: Already have screenshots in assets

**Image paths to update in `lib/Data/projects.dart`:**
```dart
image: "assets/ss/ai-travel-buddy.jpg",
screenshot1: "assets/ss/ai-travel-buddy-1.png",
screenshot2: "assets/ss/ai-travel-buddy-2.png",
```

---

## ⚠️ Important Notes

### API Keys Required:
- **OpenAI API Key**: Needed for AI Travel Buddy, Agentic RAG, Alex
- **Serper API Key**: Optional for Agentic RAG (web search)
- **Groq API Key**: For Alex (voice features)

### Environment Variables:
Each deployment platform will need environment variables set:
- `.env` files for local development
- Platform-specific secrets/config for production

---

## 🎯 Deployment Priority

**High Priority** (Easy to deploy):
1. ✅ Portfolio (Already done)
2. ✅ Sports Events (Already done)
3. Agentic RAG (Streamlit Cloud - easiest)
4. AI Travel Buddy (Render - moderate)

**Medium Priority** (Requires more setup):
5. Alex Assistant (Vercel + Railway)

**Low Priority** (Enterprise/CLI):
6. IDataProfiler (Already on Azure - need URL)
7. DQSpark (Enterprise - no public deployment)
8. Instagram Scraper (CLI - no deployment needed)

---

## 📝 Next Actions

After successful deployments, update `lib/Data/projects.dart` with:
1. Live demo URLs
2. Project screenshots
3. Any updated descriptions

Then push and portfolio will auto-deploy with live links!
