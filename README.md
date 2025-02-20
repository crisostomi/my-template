# py-template

A template to bootstrap Python projects following best practices.

## 🚀 How to Use This Template

You can create a new project using this template in **two ways**:

### 🔹 Option 1: Automatic Setup (Recommended)
Use the `setup.sh` script to automatically download and set up everything.

```bash
curl -fsSL https://raw.githubusercontent.com/grok-ai/py-template/main/setup.sh -o setup.sh && bash setup.sh
```

This will:
- Prompt you for a project name
- Install `uv` if not already installed
- Use **Copier** to create a new project
- Set up dependencies automatically

### 🔹 Option 2: Manual Setup
If you prefer a **manual setup**, you can install the required tools and run Copier yourself.

#### **📌 Prerequisites**
Before running Copier manually, ensure you have [`uv`](https://github.com/astral-sh/uv) (for managing dependencies)

Install it using:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
```

Then, create a new project with:

```bash
uvx copier copy --trust gh:grok-ai/py-template my-new-project
```

### 3. Customize the Project

The script will prompt you for the following configurations:

- **Project Name**: The name of your new project.
- **Python Package Name**: The default Python package name (this will be the directory name in lowercase, no spaces).
- **Description**: A short description of your project.
- **GitHub Username**: Your GitHub username, if you want to push to a GitHub repository.
- **GitHub Project Name**: The name of the GitHub repository, if you want to push to a GitHub repository.
- **License**: Choose a license for your project (e.g., MIT, Apache-2.0).
- **Pre-commit Hooks**: Choose whether to enable pre-commit hooks for your project.

### 4. Manual Push to GitHub (Optional)

If you did not choose to push to GitHub, you can still manually create the repository later and push the project using the following commands:

```bash
# Add the GitHub remote
git remote add origin https://github.com/your/repository

# Push the project
git push -u origin main
```

### 5. Development Setup

Once your project is set up, you can manage the dependencies using `uv`. The setup already takes care of installing `uv` for you and creating a virtual environment in the `.venv` directory.

---

## ✨ Features

- **Version Control**: Initialized with Git.
- **Pre-commit Hooks**: Automatically set up pre-commit hooks for linting and formatting (mostly [Ruff](https://astral.sh/ruff), thanks again, Astral 🚀).
- **Project Structure**: Follows modern Python project conventions, including a `src/` directory for your main code.
- **Minimal and simple setup**: We prioritize simplicity, providing a clean and solid foundation to kickstart your project.

---

## 🔧 Customization

You can modify this template by editing the following:

- **`setup.sh`**: The setup script that runs during initialization. You can add more tasks to automate further project configuration.
- **`pyproject.toml`**: Customize your project's dependencies, configurations, and settings for tools like `pytest`, `ruff`, and more.
- **`.pre-commit-config.yaml`**: Customize the pre-commit hooks configuration.

---

## 📝 License

This project is licensed under the **MIT License**. See [LICENSE](LICENSE) for more details.

---

### **Support**

If you have any issues or suggestions, please feel free to open an issue.

---

## Maintainers

- Valentino Maiorca [@Flegyas](https://github.com/Flegyas)
