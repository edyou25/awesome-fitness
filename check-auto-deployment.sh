#!/bin/bash

REPO_OWNER="edyou25"
REPO_NAME="awesome-fitness"
GH_PAGES_URL="https://${REPO_OWNER}.github.io/${REPO_NAME}/"
ACTIONS_URL="https://github.com/${REPO_OWNER}/${REPO_NAME}/actions"

echo "🚀 检查Awesome Fitness自动部署状态..."
echo "=================================="

# 检查GitHub Actions工作流程状态
echo "📊 检查GitHub Actions状态..."
if command -v gh &> /dev/null; then
    echo "使用GitHub CLI检查最新工作流程运行..."
    LATEST_RUN=$(gh run list --workflow docs.yml --json status,conclusion,createdAt,url --jq '.[0]' --repo "${REPO_OWNER}/${REPO_NAME}")
    
    if [ -n "$LATEST_RUN" ] && [ "$LATEST_RUN" != "null" ]; then
        STATUS=$(echo "$LATEST_RUN" | jq -r '.status')
        CONCLUSION=$(echo "$LATEST_RUN" | jq -r '.conclusion')
        CREATED_AT=$(echo "$LATEST_RUN" | jq -r '.createdAt')
        URL=$(echo "$LATEST_RUN" | jq -r '.url')
        
        echo "• 最新运行状态: $STATUS"
        echo "• 运行结果: $CONCLUSION"
        echo "• 创建时间: $CREATED_AT"
        echo "• 运行链接: $URL"
        
        if [ "$STATUS" = "completed" ] && [ "$CONCLUSION" = "success" ]; then
            echo "✅ 自动部署成功完成！"
        elif [ "$STATUS" = "in_progress" ] || [ "$STATUS" = "queued" ]; then
            echo "🔄 自动部署正在进行中..."
        elif [ "$CONCLUSION" = "failure" ]; then
            echo "❌ 自动部署失败，请检查错误信息"
        fi
    else
        echo "• 未找到最近的工作流程运行"
    fi
else
    echo "GitHub CLI未安装，请手动访问Actions页面："
    echo "🔗 ${ACTIONS_URL}"
fi

echo ""
echo "📋 部署信息："
echo "• 仓库: https://github.com/${REPO_OWNER}/${REPO_NAME}"
echo "• Actions: ${ACTIONS_URL}"
echo "• 网站: ${GH_PAGES_URL}"

# 检查网站可访问性
echo ""
echo "🌐 检查网站可访问性..."
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" "${GH_PAGES_URL}")
if [ "$HTTP_CODE" = "200" ]; then
    echo "✅ 网站正常运行 (HTTP $HTTP_CODE)"
    echo "🔗 访问地址: ${GH_PAGES_URL}"
    
    # 检查网站内容是否是最新的
    echo ""
    echo "🔍 检查网站内容更新..."
    if curl -s "${GH_PAGES_URL}" | grep -q "edyou25/awesome-fitness"; then
        echo "✅ 网站内容已更新（包含最新的GitHub链接）"
    else
        echo "⚠️  网站内容可能不是最新的"
    fi
else
    echo "❌ 网站访问失败 (HTTP $HTTP_CODE)"
fi

echo ""
echo "💡 自动部署说明："
echo "• 每次推送到main分支都会自动触发部署"
echo "• 部署通常需要2-3分钟完成"
echo "• 如果部署失败，请检查Actions页面的错误信息"
echo "• 工作流程文件: .github/workflows/docs.yml"

echo ""
echo "🛠️  手动触发部署："
echo "• 推送任何更改到main分支"
echo "• 或者访问Actions页面手动运行工作流程"
