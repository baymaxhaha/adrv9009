# adrv9009

一个面向 **C 语言** 团队的项目初始化模板，目标是帮助新人在第一天就能：

1. 明白仓库结构与协作流程。
2. 跑通本地构建与测试。
3. 提交一个合格的 PR。

## 快速开始

### 1) 环境要求

- `gcc` 或 `clang`
- `make`
- `git`

### 2) 构建

```bash
make build
```

### 3) 运行

```bash
make run
```

### 4) 测试

```bash
make test
```

## 目录结构

```text
.
├─ src/                 # 业务代码（当前示例入口：main.c）
├─ tests/               # 测试代码（当前示例：smoke_test.sh）
├─ docs/                # 项目文档（onboarding / architecture 等）
├─ scripts/             # 工具脚本与自动化脚本
├─ .github/workflows/   # CI 配置
├─ Makefile             # 统一命令入口
└─ README.md
```

## 常用命令

- `make build`：编译 `src/main.c` 到 `build/app`
- `make run`：运行可执行文件
- `make test`：执行最小冒烟测试
- `make clean`：清理构建产物
- `make format-check`：检查 C 代码格式（需要 clang-format）

## 协作规范（建议）

- 分支命名：`feature/<name>`、`fix/<name>`
- Commit 建议：Conventional Commits（如 `feat: ...` / `fix: ...`）
- PR 至少包含：背景、改动、验证、风险

## 新人学习路径

请先阅读：`docs/onboarding.md`。
