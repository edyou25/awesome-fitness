#!/bin/bash

# 自动修复GitHub Pages部署问题的脚本

echo "🔧 自动修复GitHub Pages部署问题..."
echo "=================================="

# 检查当前工作流程
echo "📋 当前工作流程状态："
if [ -f ".github/workflows/docs.yml" ]; then
    echo "✅ 主工作流程文件存在"
else
    echo "❌ 主工作流程文件不存在"
fi

if [ -f ".github/workflows/docs-simple.yml" ]; then
    echo "✅ 简化工作流程文件存在"
else
    echo "❌ 简化工作流程文件不存在"
fi

echo ""
echo "🔄 应用修复方案..."

# 备份原始工作流程
if [ -f ".github/workflows/docs.yml" ]; then
    cp .github/workflows/docs.yml .github/workflows/docs.yml.backup
    echo "📦 已备份原始工作流程文件"
fi

# 使用简化的工作流程
if [ -f ".github/workflows/docs-simple.yml" ]; then
    echo "🔄 切换到简化部署方案..."
    # 暂时禁用主工作流程
    if [ -f ".github/workflows/docs.yml" ]; then
        mv .github/workflows/docs.yml .github/workflows/docs.yml.disabled
    fi
    # 启用简化工作流程
    mv .github/workflows/docs-simple.yml .github/workflows/docs.yml
    echo "✅ 已切换到简化部署方案"
fi

echo ""
echo "📝 提交修复..."
git add .
git commit -m "Fix GitHub Pages deployment - switch to simple workflow"
git push

echo ""
echo "🎯 修复完成！"
echo "=================================="
echo "✅ 已切换到简化的GitHub Pages部署方案"
echo "✅ 已提交并推送修复"
echo ""
echo "📋 下一步："
echo "1. 等待GitHub Actions运行（2-3分钟）"
echo "2. 检查部署状态：./check-deployment.sh"
echo "3. 如果仍有问题，请手动启用GitHub Pages："
echo "   https://github.com/edyou25/awesome-fitness/settings/pages"
echo ""
echo "🔗 相关链接："
echo "• Actions: https://github.com/edyou25/awesome-fitness/actions"
echo "• Pages设置: https://github.com/edyou25/awesome-fitness/settings/pages"
echo "• 网站: https://edyou25.github.io/awesome-fitness/"
