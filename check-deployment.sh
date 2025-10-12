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
    echo "❌ 网站部署失败或GitHub Pages未启用"
    echo ""
    echo "🔧 自动修复建议："
    echo "1. 检查GitHub Pages设置："
    echo "   https://github.com/edyou25/awesome-fitness/settings/pages"
    echo "2. 确保Source设置为 'Deploy from a branch' 或 'GitHub Actions'"
    echo "3. 如果使用GitHub Actions，确保工作流程文件正确"
    echo ""
    echo "📋 手动启用GitHub Pages的步骤："
    echo "1. 访问仓库设置页面"
    echo "2. 滚动到 'Pages' 部分"
    echo "3. 在 'Source' 下选择 'GitHub Actions'"
    echo "4. 保存设置"
fi

echo ""
echo "💡 提示："
echo "• 部署通常需要2-5分钟完成"
echo "• 如果部署失败，请检查Actions页面的错误信息"
echo "• 确保GitHub Pages已启用"
