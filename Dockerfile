# ================================
# Step 1: Base Python Image
# ================================
FROM python:3.10-slim

# ================================
# Step 2: Set Working Directory
# ================================
WORKDIR /app

# ================================
# Step 3: Install Dependencies
# ================================
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# ================================
# Step 4: Copy Application Code
# ================================
COPY . .

# ================================
# Step 5: Expose API Port
# ================================
EXPOSE 8000

# ================================
# Step 6: Run FastAPI App
# ================================
# app.main → folder.file
# app → FastAPI instance inside main.py
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
