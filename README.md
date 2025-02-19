# py-template

A template to bootstrap Python projects following best practices.

## 🚀 How to Use This Template

Follow these steps to create a new project using this template:

### 1. Create a New Project Directory

First, navigate to the directory where you want to create your new project.

```bash
cd /path/to/your/projects
```

### 2. Run the Setup Script

You can use the `setup.sh` script to initialize your project based on this template. The script will help you set up your project directory, initialize version control, and (optionally) push to a specified GitHub repository.

Run the following command to automatically download and run the `setup.sh` script:

```bash
curl -fsSL https://raw.githubusercontent.com/grok-ai/py-template/main/setup.sh | bash
```

This command will:

- Download the `setup.sh` script from GitHub.
- Execute it, which will prompt you for some initial configurations like the **project name**, **Python package name**, **GitHub username**, and **repository details**.
- Initialize the project directory, configure Git, and optionally push to a GitHub repository, which must be manually created beforehand (if push_to_repo is set to true during setup).

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
git remote add origin https://github.com/{{ github_username }}/{{ github_project }}

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
