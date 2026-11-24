<div align="center">

# 🖥️ Product Management — Frontend

**A feature-based React + TypeScript single-page app for managing a product catalog.**

<p>
  <img alt="React" src="https://img.shields.io/badge/React-19-61DAFB?style=for-the-badge&logo=react&logoColor=black" />
  <img alt="TypeScript" src="https://img.shields.io/badge/TypeScript-7-3178C6?style=for-the-badge&logo=typescript&logoColor=white" />
  <img alt="Vite" src="https://img.shields.io/badge/Vite-8-646CFF?style=for-the-badge&logo=vite&logoColor=white" />
  <img alt="Tailwind CSS" src="https://img.shields.io/badge/Tailwind_CSS-4-06B6D4?style=for-the-badge&logo=tailwindcss&logoColor=white" />
  <img alt="TanStack Query" src="https://img.shields.io/badge/TanStack_Query-5-FF4154?style=for-the-badge&logo=reactquery&logoColor=white" />
</p>

[✨ Features](#-features) •
[🚀 Getting Started](#-getting-started) •
[📁 Project Structure](#-project-structure) •
[🧰 Tech Stack](#-tech-stack) •
[🛠️ Scripts](#️-scripts)

</div>

> This is the frontend of the [Product Management Monorepo](../README.md). See the root README for the full architecture overview and the API reference.

---

## ✨ Features

- 📦 Full CRUD UI for products — list, view, create, edit and delete
- 🔄 Server state handled by **TanStack Query** (caching, loading & error states, mutations)
- ✅ Client-side validation with **Zod** + **React Hook Form**
- 🎨 Accessible, themeable components built on **Radix UI** + **Tailwind CSS** (shadcn/ui style)
- 🧭 Client-side routing with **React Router 7**
- ⚡ Instant HMR powered by **Vite**

---

## 🚀 Getting Started

### Prerequisites

- [Node.js](https://nodejs.org/) 20+
- The [backend API](../backend/README.md) running at `http://localhost:5000` (see the root [README](../README.md#-getting-started) to start both apps together)

### Install & run

```bash
npm install
npm run dev
```

Then open **[http://localhost:5173](http://localhost:5173)** in your browser.

### API configuration

The backend base URL is set in [`src/shared/api/config.ts`](src/shared/api/config.ts) — update it if your API runs on a different host or port.

---

## 📁 Project Structure

```text
src/
├── app/              # App root, providers & router
├── features/         # Feature modules, organized by business domain
│   └── products/     # Everything product-related
│       ├── components/
│       ├── hooks/
│       ├── services/
│       ├── types/
│       └── utils/
├── shared/           # Shared API client, components & utils
├── layouts/          # Page layouts
├── pages/            # Route-level pages
└── components/ui/    # Reusable shadcn/ui-style components
```

Code is organized **by feature**, not by technical layer — everything needed for the `products` feature lives together, which keeps the codebase easy to scale as new domains are added.

Path aliases are configured (`@/` → `src/`).

---

## 🧰 Tech Stack

| Category | Tools |
|---|---|
| **Core** | React 19, TypeScript, Vite |
| **Routing** | React Router 7 |
| **Data fetching** | TanStack Query, Axios |
| **Forms & validation** | React Hook Form, Zod, `@hookform/resolvers` |
| **UI** | Tailwind CSS 4, Radix UI primitives, `class-variance-authority`, Lucide icons |
| **Tooling** | ESLint, TypeScript ESLint |

---

## 🛠️ Scripts

| Command | Description |
|---|---|
| `npm run dev` | Start the Vite development server |
| `npm run build` | Type-check and build for production |
| `npm run lint` | Run ESLint |
| `npm run preview` | Preview the production build locally |

---

## 📄 License

Part of the [Product Management Monorepo](../README.md), licensed under the [MIT License](../LICENSE).
