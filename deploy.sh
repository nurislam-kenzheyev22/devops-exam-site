#!/bin/bash
set -e

echo "🚀 DevOps Exam Site Deployment Script"
echo "======================================"
echo ""

# Check if gh is authenticated
if ! gh auth status &>/dev/null; then
    echo "⚠️  GitHub CLI не авторизован."
    echo "📝 Запустите: gh auth login"
    echo "   Затем запустите этот скрипт снова."
    exit 1
fi

REPO_NAME="devops-exam-site"
USERNAME=$(gh api user --jq .login)

echo "✅ GitHub авторизован как: $USERNAME"
echo ""

# Check if repo exists
if gh repo view "$USERNAME/$REPO_NAME" &>/dev/null; then
    echo "📦 Репозиторий уже существует: $REPO_NAME"
    echo "📤 Пушим код..."
    
    # Check if remote exists
    if ! git remote get-url origin &>/dev/null; then
        git remote add origin "git@github.com:$USERNAME/$REPO_NAME.git"
    fi
    
    git push -u origin main
    echo "✅ Код запушен!"
else
    echo "📦 Создаю репозиторий: $REPO_NAME"
    gh repo create "$REPO_NAME" \
        --public \
        --source=. \
        --remote=origin \
        --description="DevOps Exam Preparation Site - Static site with all exam questions and commands" \
        --push
    echo "✅ Репозиторий создан и код запушен!"
fi

echo ""

# Enable GitHub Pages
echo "🌐 Включаю GitHub Pages..."
if echo '{"source":{"branch":"main","path":"/"}}' | \
    gh api repos/$USERNAME/$REPO_NAME/pages -X POST --input - &>/dev/null; then
    echo "✅ GitHub Pages включен!"
else
    echo "⚠️  GitHub Pages нужно включить вручную:"
    echo "   https://github.com/$USERNAME/$REPO_NAME/settings/pages"
    echo "   Branch: main, Folder: / (root)"
fi

echo ""
echo "🎉 Готово!"
echo ""
echo "📱 Ваш сайт будет доступен по адресу:"
echo "   https://$USERNAME.github.io/$REPO_NAME/"
echo ""
echo "📚 Прямые ссылки на секции:"
echo "   https://$USERNAME.github.io/$REPO_NAME/Section1_Linux_Git.html"
echo "   https://$USERNAME.github.io/$REPO_NAME/Section8_Commands.html"
echo ""
echo "⏳ Подождите 1-2 минуты, пока GitHub Pages активируется."
