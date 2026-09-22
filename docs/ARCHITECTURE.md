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
```
## 2. System Data Flow & Sequence Diagram

```mermaid
sequenceDiagram
    autonumber
    actor User as المستخدم
    participant App as تطبيق Flutter (مُتَابِع)
    participant Auth as Firebase Auth
    participant API as MockAPI REST Service

    User->>App: فتح التطبيق
    App->>Auth: التحقق من الجلسة (Check Current User)
    Auth-->>App: إرجاع الـ userId (UID)
    
    alt إضافة تقديم جديد
        User->>App: إدخال بيانات التقديم
        App->>App: فحص التكرار محلياً (Duplicate Check)
        App->>API: إرسال طلب POST مع الـ userId
        API-->>App: استجابة 201 Created
        App-->>User: إظهار رسالة "تم الحفظ بنجاح"
    else جلب التقديمات
        App->>API: إرسال طلب GET المفلتر بالـ userId
        API-->>App: إرجاع قائمة التقديمات (JSON)
        App-->>User: عرض التقديمات في الكروت
    end
