# DevOps Exam Preparation Site

Static site with all exam preparation materials for DevOps final (Kenzheyev Nurislam).

## Structure

- `index.html` — main page (Section 1: Linux & Git)
- `Section1_Linux_Git.html` — Linux & Git questions
- `Section2_Gradle.html` — Gradle & build
- `Section3_Docker.html` — Docker & containerization
- `Section4_Jenkins.html` — CI/CD & Jenkins
- `Section5_Kubernetes.html` — Kubernetes
- `Section6_Ansible.html` — Ansible
- `Section7_DevOps_Concepts.html` — DevOps concepts
- `Section8_Commands.html` — Lifecoding & lifewriting commands (33 commands)

## How to host on GitHub Pages

1. Create an empty public repo on GitHub, for example `devops-exam-site`.
2. In terminal:

```bash
cd ~/Downloads/devops-exam-site
git init
git add .
git commit -m "feat: add DevOps exam preparation static site"
git branch -M main
# replace YOUR_USER and REPO with your values
git remote add origin git@github.com:YOUR_USER/devops-exam-site.git
git push -u origin main
```

3. In GitHub repo settings: **Settings → Pages**:
   - Source: `Branch: main`, `Folder: /root`.

4. Your site will be available at:

```text
https://YOUR_USER.github.io/devops-exam-site/
```

Then you and your friends can open any section directly, for example:

- `https://YOUR_USER.github.io/devops-exam-site/Section8_Commands.html`
- `https://YOUR_USER.github.io/devops-exam-site/Section5_Kubernetes.html`
