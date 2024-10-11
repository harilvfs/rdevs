# Rdevs Documentation

Welcome to the Rdevs documentation! This guide will help you understand how to install, use, and contribute to the Rdevs project.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [Troubleshooting](#troubleshooting)
- [Changelog](#changelog)

## Installation

To get started with Rdevs, follow these steps:

1. **Install Rust**:
   If you don't have Rust installed, you can do so with the following command:
   <pre><code>curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh</code></pre>

2. **Clone the Repository**:
   Clone the Rdevs repository to your local machine:
   <pre><code>git clone https://github.com/your_username/rdevs.git</code></pre>

3. **Navigate to the Project Directory**:
   Change into the project directory:
   <pre><code>cd rdevs</code></pre>

4. **Build the Project**:
   Use Cargo to build the project:
   <pre><code>cargo build</code></pre>

5. **Run the Project**:
   You can run the project using:
   <pre><code>cargo run</code></pre>

## Usage

After installing Rdevs, you can use it to set up your system and run various scripts.

### Main Menu

When you run Rdevs, you will see the main menu with the following options:

- **Arch Setup**: Use this option to install packages and configure your Arch Linux system.
- **Hyprland Setup**: Use this option to set up the Hyprland window manager.
- **Help & Info**: Displays help information about using Rdevs.
- **Exit**: Closes the application.

### Running a Setup

To run a setup, simply navigate to the desired option using the arrow keys and press Enter.

## Contributing to Rdevs

We welcome contributions! Please follow these steps to contribute to Rdevs:

1. **Fork the Repository**: Click the "Fork" button on the top right of the repository page.
2. **Make Changes**: Clone your fork and make changes to the code.
3. **Test Your Changes**: Ensure that your changes do not produce any errors.
   - Run the following commands to enhance your code:
     <pre><code>cargo fmt --all</code></pre>
     <pre><code>cargo clippy</code></pre>
     <pre><code>cargo check</code></pre>
4. **Create a Pull Request**: Once you're satisfied with your changes, submit a pull request to the main repository.

## Troubleshooting

Here are some common issues you might encounter while using Rdevs and their solutions:

### Issue: Rust Not Installed

**Solution**: Follow the installation instructions to install Rust.

### Issue: Errors During Build

**Solution**: Make sure your Rust installation is up-to-date and try running:
<pre><code>cargo update</code></pre>

### Issue: Project Not Running

**Solution**: Ensure you are in the project directory and try running:
<pre><code>cargo run</code></pre>

## Changelog

### Version 1.0.0

- Initial release of Rdevs with basic functionality for system setup.
- Implemented menu options for Arch setup and Hyprland setup.

