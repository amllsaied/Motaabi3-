```markdown
# 🏗️ Technical Architecture & System Design - مُتَابِع

## 1. Architecture Pattern
يعتمد المشروع على **Layered Architecture / Clean Architecture Blueprint**:

```text
lib/
├── core/                   # Shared Infrastructure
│   ├── theme/              # App Palette & Cairo Typography
│   ├── network/            # Dio Client & REST Endpoints
│   └── utils/              # Formatters & Helpers
│
├── features/
│   ├── auth/               # Feature 1: Authentication
│   │   ├── data/           # Firebase Auth Data Source
│   │   └── presentation/   # Login/Register UI & Logic
│   │
│   └── applications/       # Feature 2: Job Applications
│       ├── data/           # Models, ApiService (MockAPI), Repository
│       └── presentation/   # Cubit, Screens, Widgets
│
└── main.dart