FROM python:3.11

WORKDIR /lab04

COPY resources/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY resources/numeric.csv .
COPY resources/poisoning_lab.ipynb .

EXPOSE 8888

CMD ["jupyter", "notebook", "poisoning_lab.ipynb", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
