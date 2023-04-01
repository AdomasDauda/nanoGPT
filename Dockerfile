FROM python:3.10.10

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --pre torch -f https://download.pytorch.org/whl/nightly/cpu/torch_nightly.html

COPY . .
ADD data /usr/src/app/data
ADD out /usr/src/app/out

RUN ls
CMD ["python", "train.py"]
CMD ["python", "sample.py"]