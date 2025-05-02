# Guia de configuração e uso

Este projeto utiliza o N8N e a API do WhatsApp (WAHA) para criar workflows automatizados. Siga os passos abaixo para configurar e executar o ambiente.

---

## Pré-requisitos

- **Docker Desktop**
- **Docker Compose**
- **Make**

---
## Instalação
```
$ git clone https://github.com/bladellano/n8n-waha.git

$ cd n8n-waha

$ make install
```
---
- **Variáveis de Ambiente n8n**:
  - `GENERIC_TIMEZONE=America/Sao_Paulo`
  - `WEBHOOK_URL=http://host.docker.internal:5678`

- **Variáveis de ambiente waha**:
  - `WHATSAPP_DEFAULT_ENGINE=NOWEB`
  - `WHATSAPP_HOOK_EVENTS=message`
  - `WHATSAPP_HOOK_URL={HOOK_URL}`

---

## Instalação de dependências no n8n

No N8N, instale a extensão para integração com a API WAHA:

```bash
@devlikeapro/n8n-nodes-waha
```

---

## Criação de workflow

Crie um workflow simples no N8N: um bot que responde a mesma mensagem recebida (ping-pong).
