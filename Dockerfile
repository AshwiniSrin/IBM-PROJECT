FROM Python 3.12.8

WORKDIR /app

COPY cicd.py requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8501
CMD [ "streamlit","run", "cicd.py" ]
 
