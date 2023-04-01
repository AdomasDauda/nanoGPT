FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install torch torchvision torchaudio

COPY . .

CMD [ "python", "train.py", "config/train_comments.py" ]