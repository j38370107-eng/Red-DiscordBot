FROM python:3.11-slim
RUN apt-get update && apt-get install -y --no-install-recommends \
    git build-essential libpq-dev \
    && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir -U "Red-DiscordBot[postgres]"
RUN pip install --no-cache-dir git+https://github.com/AAA3A-AAA3A/AAA3A_utils.git
RUN git clone --depth 1 https://github.com/AAA3A-AAA3A/AAA3A-cogs /cogs/AAA3A-cogs
RUN git clone --depth 1 https://github.com/Just-Jojo/JojoCogs /cogs/JojoCogs
COPY start.sh /start.sh
CMD ["bash", "/start.sh"]
