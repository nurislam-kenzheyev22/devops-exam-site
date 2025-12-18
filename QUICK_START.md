# 🚀 Быстрый старт

## Шаг 1: Авторизация в GitHub (один раз)

```bash
gh auth login
```

Выбери:
- GitHub.com
- HTTPS
- Авторизация через браузер (или токен)

## Шаг 2: Запуск деплоя

```bash
cd ~/Downloads/devops-exam-site
./deploy.sh
```

Скрипт автоматически:
- ✅ Создаст репозиторий на GitHub
- ✅ Запушит весь код
- ✅ Включит GitHub Pages

## Шаг 3: Готово!

Через 1-2 минуты сайт будет доступен:
- Главная: `https://nurislam-kenzheyev22.github.io/devops-exam-site/`
- Секции: `https://nurislam-kenzheyev22.github.io/devops-exam-site/Section8_Commands.html`

---

## Альтернатива (без GitHub CLI)

Если не хочешь использовать GitHub CLI:

1. Создай репозиторий на GitHub вручную: `devops-exam-site` (публичный)

2. Выполни команды:
```bash
cd ~/Downloads/devops-exam-site
git remote add origin git@github.com:nurislam-kenzheyev22/devops-exam-site.git
git push -u origin main
```

3. В GitHub: Settings → Pages → Branch: main, Folder: /root
