# py-template

A template to bootstrap Python projects following best practices.

## 🚀 How to Use This Template

You can create a new project in **two ways**:

### 🔹 Automatic Setup (Recommended)

Run:

```bash
curl -fsSL https://raw.githubusercontent.com/grok-ai/py-template/main/setup.sh -o setup.sh && bash setup.sh
```

This will:
- Install [uv](https://github.com/astral-sh/uv) if needed.
- Use [Copier](https://copier.readthedocs.io/en/stable/) to generate the project.
- Prompt for project configuration (see [Customize the Project](#3-customize-the-project)).
- (Optionally) set up the environment (dependencies, virtual environment).
- Initialize Git and optionally push the repository.

### 🔹 Manual Setup

Install [uv](https://github.com/astral-sh/uv) and set up Copier:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
```

Then, create a new project with:

```bash
uvx copier copy --trust gh:grok-ai/py-template <project-folder>
```

Once completed, the project will be initialized in `<project-folder>`.

---

## 3. Customize the Project

During setup, you will be prompted for the following configurations:

- **Project Folder**: Name of the project folder.
- **Python Package Name**: Defaults to the folder name in lowercase with spaces replaced by underscores.
- **Description**: A short description of your project.
- **Maintainers**: A list of maintainers (name & email).
- **Remote Option** (`remote_option`):
  - **GitHub**: Push the project to a GitHub repository.
  - **Manual**: Provide a custom remote URL (e.g., GitHub, GitLab, Bitbucket).
  - **No Remote**: Skip configuring a remote.
- **Push to Remote** (`push_to_remote`): If using GitHub or manual, decide whether to automatically push after initialization.
- **License**: Choose a license (MIT, Apache-2.0).
- **Use Pre-commit Hooks** (`use_precommit`): Enable or disable pre-commit hooks.
- **Dependencies**: Define dependencies to install.
- **Initialize Environment** (`env_init`): Choose whether to set up a virtual environment immediately.

---

## 4. Manual Push to a Remote Repository (Optional)

If `push_to_remote=false` or no remote was set, you can manually add and push later:

```bash
git remote add origin https://github.com/your/repository
git push -u origin main
```

Use the appropriate URL for GitHub, GitLab, or any other Git host.

---

## 5. Development Setup

Once set up, manage dependencies with uv. The virtual environment is stored in `.venv`.

---

## ✨ Features

- **Version Control**: Automatically initializes a Git repository.
- **Optional Remote Push**: Configure a Git remote (GitHub or manual) and optionally push to it.
- **Pre-commit Hooks**: If enabled, sets up [pre-commit hooks](https://pre-commit.com/).
- **Modern Project Structure**: Uses an organized `src/` layout.
- **Flexible**: Simple configuration logic for licensing, dependencies, and environment setup.

---

## 🔧 Customization

Modify this template by editing:

- `copier.yml`: Adjust or add configuration options.
- `pyproject.toml`: Define dependencies, linting, and testing configurations.
- `.pre-commit-config.yaml`: Manage pre-commit hooks.
- `setup.sh`: Modify automation steps.

---

## 📝 License

This project is licensed under the **MIT License**. See LICENSE for more details.

---

### Support

For issues or suggestions, open an issue on GitHub: https://github.com/grok-ai/py-template/issues

---

## Maintainers

- Valentino Maiorca [@Flegyas](https://github.com/Flegyas)
