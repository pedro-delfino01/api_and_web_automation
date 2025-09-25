# 📘 api_and_web_automation

## 📖 Introdução
O **api_and_web_automation** é um projeto de automação que integra requisições de **APIs** com **tarefas web automatizadas**. Ele utiliza **Python** com bibliotecas de automação e manipulação de dados, permitindo realizar testes, simulações e interações automatizadas tanto em APIs quanto em navegadores.

Esse repositório pode ser usado como **base para estudos**, prototipagem e implementação de fluxos automatizados de integração entre serviços.

---

## 📂 Estrutura do Projeto
A pasta principal do código está localizada em **`src/`**, contendo:

- **Módulos de automação** para APIs e Web.
- **Scripts de execução** para rodar exemplos de testes.
- Arquivos auxiliares de configuração.

---

## 🛠️ Tecnologias Utilizadas
- **Python 3.9+**
- **Requests** – para consumo de APIs.
- **Selenium** – para automação web.
- **dotenv** – para gerenciamento de variáveis de ambiente.

---

## ⚙️ Instalação

Clone o repositório:
```bash
git clone https://github.com/pedro-delfino01/api_and_web_automation.git
cd api_and_web_automation
```

Crie e ative um ambiente virtual:
```bash
python -m venv venv
source venv/bin/activate   # Linux/Mac
venv\Scripts\activate    # Windows
```

Instale as dependências:
```bash
pip install -r requirements.txt
```

---

## 🚀 Uso

1. Configure suas variáveis de ambiente em um arquivo **`.env`**, se necessário (exemplo: URLs de APIs, credenciais, etc.).
2. Execute os scripts de automação:
   ```bash
   python src/nome_do_script.py
   ```
3. Os resultados podem ser impressos no terminal ou salvos em arquivos, dependendo do script.

---

## ✨ Funcionalidades
- Consumo automatizado de **APIs REST**.
- Execução de **fluxos automatizados em navegadores** com Selenium.
- Estrutura simples e extensível para novos cenários de automação.
- Separação de responsabilidades em módulos.

---

## 🐞 Troubleshooting
- **Erro de WebDriver**: verifique se o driver (ex: ChromeDriver) está instalado e compatível com seu navegador.
- **Problemas de conexão em APIs**: confira sua internet e endpoints.
- **Erro de variáveis de ambiente**: confirme se o `.env` está configurado corretamente.

---

## 👨‍💻 Contribuidores
- [Pedro Delfino](https://github.com/pedro-delfino01) – Autor do projeto.

---

## 📜 Licença
Este projeto é distribuído sob a licença **MIT**. Consulte o arquivo [LICENSE](LICENSE) para mais detalhes.
