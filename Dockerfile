FROM python:3.11

WORKDIR /lab04

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY numeric.csv .
COPY poisoning_lab.ipynb .

EXPOSE 8888

CMD ["jupyter", "notebook", "poisoning_lab.ipynb", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
