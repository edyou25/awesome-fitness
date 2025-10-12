# Awesome Fitness - 目录结构说明

## 📁 项目结构概览

```
awesome-fitness/
├── 📚 docs/                    # Sphinx文档源文件
├── 🏋️ knowledge/              # 基础知识库
├── 💪 training-programs/       # 训练计划
├── 🥗 nutrition/              # 营养知识
├── 🏋️ equipment/              # 装备指南
├── 📱 tools/                  # 工具和应用
├── 🔬 research/               # 科学研究
├── 👥 community/              # 社区资源
├── ⚙️ .github/                # GitHub配置
└── 📄 配置文件
```

## 📋 详细目录说明

### 📚 `docs/` - 文档系统
Sphinx文档生成系统的源文件目录，用于构建专业的文档网站。

```
docs/
├── conf.py              # Sphinx配置文件
├── index.rst            # 文档首页
├── overview.rst         # 项目概览
├── contributing.rst     # 贡献指南
├── README.md            # 文档说明
└── _static/             # 静态资源
    └── custom.css       # 自定义样式
```

**功能**：
- 使用Read the Docs主题
- 自动生成HTML文档
- 支持搜索和导航
- 响应式设计

### 🏋️ `knowledge/` - 基础知识库
存储健身基础知识、原理和概念。

**内容类型**：
- 运动生理学
- 训练原理
- 生物力学
- 运动心理学

### 💪 `training-programs/` - 训练计划
包含各种训练方案和计划。

**内容类型**：
- 力量训练计划
- 有氧训练方案
- 柔韧性训练
- 专项运动训练

### 🥗 `nutrition/` - 营养知识
营养学相关的知识和指导。

**内容类型**：
- 宏量营养素
- 微量营养素
- 补剂指南
- 饮食计划

### 🏋️ `equipment/` - 装备指南
健身器材的介绍和使用指南。

**内容类型**：
- 力量训练器材
- 有氧运动器材
- 功能性训练工具
- 家庭健身房配置

### 📱 `tools/` - 工具和应用
数字工具和应用程序推荐。

**内容类型**：
- 健身应用
- 计算器工具
- 追踪工具
- 在线资源

### 🔬 `research/` - 科学研究
最新的科学研究和发现。

**内容类型**：
- 研究论文
- 元分析
- 研究方法
- 学术出版物

### 👥 `community/` - 社区资源
社区和社交平台资源。

**内容类型**：
- 社交媒体
- 专业组织
- 论坛和讨论
- 活动和会议

### ⚙️ `.github/` - GitHub配置
GitHub相关的配置文件。

```
.github/
└── workflows/
    └── docs.yml         # 自动部署工作流程
```

**功能**：
- 自动构建文档
- 部署到GitHub Pages
- CI/CD自动化

## 📄 根目录文件

### 核心配置文件
- `README.md` - 项目主要说明文档
- `CONTRIBUTING.md` - 贡献指南
- `LICENSE` - MIT许可证
- `requirements.txt` - Python依赖包
- `.gitignore` - Git忽略文件配置

### 自动化脚本
- `check-auto-deployment.sh` - 部署状态检查脚本

## 🚀 工作流程

### 文档更新流程
1. 编辑 `docs/` 目录下的源文件
2. 提交更改到Git仓库
3. GitHub Actions自动构建文档
4. 自动部署到GitHub Pages
5. 网站实时更新

### 内容贡献流程
1. 在相应分类目录下添加内容
2. 更新 `docs/` 中的相关文档
3. 提交Pull Request
4. 审核后合并到主分支

## 🎯 设计原则

### 模块化设计
- 每个目录专注于特定领域
- 内容独立且可扩展
- 便于维护和更新

### 文档驱动
- 所有内容都有对应的文档说明
- 使用专业的Sphinx文档系统
- 支持多格式输出

### 自动化部署
- 零人工干预的部署流程
- 版本控制和回滚支持
- 持续集成和部署

## 📊 技术栈

- **文档生成**: Sphinx + Read the Docs主题
- **版本控制**: Git + GitHub
- **自动化**: GitHub Actions
- **托管**: GitHub Pages
- **样式**: 自定义CSS + 响应式设计

## 🔧 维护指南

### 添加新内容
1. 在相应分类目录创建文件
2. 更新文档索引
3. 测试本地构建
4. 提交并推送

### 更新文档
1. 修改 `docs/` 中的源文件
2. 检查构建输出
3. 提交更改
4. 验证自动部署

### 故障排除
- 使用 `check-auto-deployment.sh` 检查部署状态
- 查看GitHub Actions日志
- 检查Sphinx构建输出

---

这个结构设计确保了项目的可扩展性、可维护性和专业性，为健身知识库提供了坚实的基础。
