#!/bin/bash

# 检查GitHub Actions部署状态的脚本

echo "🔍 检查Awesome Fitness部署状态..."
echo "=================================="

# 获取最新的workflow运行状态
echo "📊 获取最新部署状态..."

# 使用GitHub CLI检查状态（如果安装了的话）
if command -v gh &> /dev/null; then
    echo "使用GitHub CLI检查状态..."
    gh run list --repo edyou25/awesome-fitness --limit 1
else
    echo "GitHub CLI未安装，请访问以下链接查看状态："
    echo "🔗 https://github.com/edyou25/awesome-fitness/actions"
fi

echo ""
echo "📋 部署信息："
echo "• 仓库: https://github.com/edyou25/awesome-fitness"
echo "• Actions: https://github.com/edyou25/awesome-fitness/actions"
echo "• 网站: https://edyou25.github.io/awesome-fitness/ (部署完成后可用)"
echo ""

# 检查网站是否可访问
echo "🌐 检查网站可访问性..."
if curl -s -o /dev/null -w "%{http_code}" https://edyou25.github.io/awesome-fitness/ | grep -q "200"; then
    echo "✅ 网站已成功部署并可访问！"
    echo "🔗 访问地址: https://edyou25.github.io/awesome-fitness/"
else
    echo "⏳ 网站正在部署中或尚未部署完成..."
    echo "请稍等几分钟后再次检查"
fi

echo ""
echo "💡 提示："
echo "• 部署通常需要2-5分钟完成"
echo "• 如果部署失败，请检查Actions页面的错误信息"
echo "• 确保GitHub Pages已启用"
