# ⚡ Puppet Bolt YAML Power-Template ⚡

Welcome to the ultimate starter kit for **Puppet Bolt** orchestration! 🚀 This template is engineered for DevOps rebels who want to automate everything using the clean, human-readable power of **YAML**. Stop guessing and start deploying. 🤖✨

---

## 🏗️ Project Anatomy

This is how a professional Bolt project looks. Clean, modular, and ready to scale:

```text
.
├── 01-launch-plan.sh      # 🚀 The "Big Red Button" (Helper script)
├── bolt-project.yaml      # ⚙️ Project Master Configuration
├── inventory.yaml         # 🌐 The Map (Your nodes & targets)
├── params.json            # 📋 Input variables for your runs
├── plans/                 # 🗺️ Workflows (The Logic)
│   └── example_plan.yaml  #    - Your YAML-based master plan
├── tasks/                 # 🛠️ Atomic Actions (The Tools)
│   ├── example_task.json  #    - Task metadata
│   └── example_task.sh    #    - The actual script to run
├── .gitignore             # 🙈 Keeps your secrets & junk out of Git
└── README.md              # 📖 You are here!
```

## 🔥 Quick Start

1. **Clone it**: Get this juice into your local machine. 📥
2. **Target your Nodes**: Open inventory.yaml and add your server IPs or hostnames. 🎯
3. **Ignition**: Run the helper script to execute your first plan:

```
chmod +x 01-launch-plan.sh
./01-launch-plan.sh
```

## 🛠️ Key Components

*   **⚙️ bolt-project.yaml**: The brain. Defines where your modules are and project-wide settings. 🧠
*   **🌐 inventory.yaml**: Your source of truth. Group your servers by environment (dev, prod) and set up SSH/WinRM credentials once. 🔐
*   **🗺️ plans/**: Written in YAML, these allow you to chain tasks, scripts, and commands together without writing a single line of Ruby or Puppet DSL. Pure elegance. 🎨
*   **🛠️ tasks/**: The specialized tools. Use `example_task.sh` for quick scripts and `example_task.json` to define your parameters. 🛠️
*   **🙈 .gitignore**: Pre-configured to keep your `logs/`, `.resource_types/`, and sensitive `rerun.json` files away from the public eye. Safety first! 🛡️


## 🌟 Why this Template?
*   **✅ Zero Friction**: Start automating in minutes, not hours. ⏱️
*   **✅ YAML Driven**: Easy to read, easy to maintain, easy to love. ❤️
*   **✅ Best Practices**: Follows the official Puppet structure for seamless scaling. 📈
