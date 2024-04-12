FROM python:3.9-slim

# Define o diretório de trabalho dentro do contêiner
WORKDIR /

# Copia todos os arquivos do diretório local para o diretório de trabalho no contêiner
COPY . .

# Instala o Flask durante a construção do contêiner
RUN pip install --no-cache-dir flask

# Expõe a porta 5000 para o mundo externo
EXPOSE 5010

# Define o comando padrão a ser executado quando o contêiner é iniciado
CMD ["python", "app.py"]