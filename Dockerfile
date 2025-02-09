FROM python:3.10.10

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --pre torch -f https://download.pytorch.org/whl/nightly/cpu/torch_nightly.html

COPY . .
COPY data /usr/src/app

CMD ["python", "-u", "train.py"]
RUN ls