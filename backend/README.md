<div align="center">

# ⚙️ Product Management — Backend API

**A .NET 10 Web API built with Clean Architecture, serving a Swagger-documented product catalog.**

<p>
  <img alt=".NET" src="https://img.shields.io/badge/.NET-10-512BD4?style=for-the-badge&logo=dotnet&logoColor=white" />
  <img alt="C#" src="https://img.shields.io/badge/C%23-ASP.NET_Core-239120?style=for-the-badge&logo=csharp&logoColor=white" />
  <img alt="Swagger" src="https://img.shields.io/badge/Swagger-OpenAPI-85EA2D?style=for-the-badge&logo=swagger&logoColor=black" />
</p>

[🏗️ Architecture](#️-architecture) •
[🚀 Getting Started](#-getting-started) •
[📡 API Reference](#-api-reference) •
[📏 Business Rules](#-business-rules)

</div>

> This is the backend of the [Product Management Monorepo](../README.md). See the root README for the full architecture diagram and a combined getting-started guide.

---

## 🏗️ Architecture

Clean Architecture with a clear separation of concerns and an inward dependency flow: **API → Application → Domain**, with Infrastructure plugged in via interfaces and registered at startup.

| Layer | Project | Responsibility |
|---|---|---|
| 🌐 Presentation | [`Product.Api`](src/Product.Api) | HTTP endpoints, DI wiring, Swagger/CORS (composition root) |
| 🧠 Application | [`Product.Application`](src/Product.Application) | Use cases, DTOs, and interfaces (depends on Domain) |
| 💎 Domain | [`Product.Domain`](src/Product.Domain) | Core entities + business invariants (no dependencies) |
| 🗄️ Infrastructure | [`Product.Infrastructure`](src/Product.Infrastructure) | Repository implementations + in-memory data seeding (implements Application interfaces) |

---

## 🚀 Getting Started

### Prerequisites

- [.NET SDK](https://dotnet.microsoft.com/download) 10.0 or later

### Run

```bash
dotnet run --project src/Product.Api/Product.Api.csproj
```

| Service | URL |
|---|---|
| ⚙️ API | http://localhost:5000 |
| 📖 Swagger UI | http://localhost:5000/swagger |

No database setup required — products are stored in-memory and seeded with test data on startup.

---

## 📡 API Reference

Base route: `/api/Products`

| Method | Endpoint | Description | Success |
|:---:|---|---|:---:|
| `GET` | `/api/Products` | List all products | `200` |
| `GET` | `/api/Products/{id}` | Get a product by ID | `200` |
| `POST` | `/api/Products` | Create a product | `201` |
| `PUT` | `/api/Products/{id}` | Update a product | `200` |
| `DELETE` | `/api/Products/{id}` | Delete a product | `204` |

Errors return `400` (validation), `404` (not found), `409` (business rule violation) or `500`. Full request/response examples are available in Swagger UI and in the [root README](../README.md#-api-reference).

---

## 📏 Business Rules

- 💲 Product price minimum is `10`
- 📦 Stock cannot go below zero; stock adjustments require positive quantities
- 🔘 Products can be active/inactive
- 🏷️ Discounts are limited to 0–50% and cannot reduce price below `10`

---

## 📄 License

Part of the [Product Management Monorepo](../README.md), licensed under the [MIT License](../LICENSE).
