# تطبيق مُتَابِع (Mutaabi3) - Personal Job Application Tracker

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" />
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" />
  <img src="https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black" />
  <img src="https://img.shields.io/badge/REST_API-MockAPI-blue?style=for-the-badge" />
</p>

---

## عن التطبيق (Overview)

تطبيق **"مُتَابِع"** هو أداة إنتاجية شخصية موجهة بالكامل باللغة العربية (RTL) لمساعدة المطورين والباحثين عن عمل في تتبع كافة تقديمات الوظائف والتدريبات في مكان واحد بدون تشتت.

> **الشعار الأساسي:** *"متنساش قدمت فين."*

---

## المميزات الرئيسية (Key Features)

* **مصادقة موثوقة:** تسجيل الدخول وإنشاء الحساب بواسطة **Firebase Authentication**.
* **إدارة التقديمات (CRUD):** إضافة، عرض، تعديل، وحذف التقديمات عبر **REST API** أونلاين.
* **بحث وتصفية ذكية:** فلترة سريعة حسب حالة التقديم (`تم التقديم` | `قيد المراجعة` | `مقابلة` | `عرض` | `مرفوض` | `منسحب`).
* **كشف التكرار (Duplicate Alert):** تنبيه ذكي لتجنب إعادة التقديم لشركة مسجلة مسبقاً.
* **واجهة عربية أصيلة (100% RTL):** تصميم قياسي باستخدام خط `Cairo` وباليتة ألوان هادئة واحترافية.

---

## البناء البرمجي (Tech Stack)

* **Framework:** Flutter (Dart)
* **Architecture:** Layered / Clean Architecture Blueprint
* **State Management:** Flutter BLoC / Cubit
* **Networking & REST API:** Dio Client & MockAPI.io
* **Authentication:** Firebase Auth
* **Typography:** Google Fonts (Cairo)

---

## التوثيق الهندسي المكتمل (Documentation)

يمكنك الاطلاع على تفاصيل التحليل الفني والوظيفي من خلال الوثائق الموجودة في مجلد `docs/`:

| الوثيقة | الوصف |
| :--- | :--- |
| **[Business Requirements (BRD)](docs/BRD.md)** | أهداف المشروع التجارية، المشكلة، والـ KPIs. |
| **[Product Requirements (PRD)](docs/PRD.md)** | المواصفات الوظيفية والتصميمية الكاملة. |
| **[User Flow Diagrams](docs/USER_FLOW.md)** | مخططات التنقل بين الشاشات ورحلة المستخدم. |
| **[Technical Architecture](docs/ARCHITECTURE.md)** | هيكلية الكود ودورة حركة البيانات (Sequence Diagram). |

---

## هيكلية المشروع (Project Architecture)

```text
lib/
├── core/                   # Theme, Palette, Network Client & Utilities
│   ├── theme/
│   └── network/
│
├── features/               # Modular Features
│   ├── auth/               # Firebase Auth Flow (Login & Register)
│   └── applications/       # Job Applications Flow (CRUD & Cubit)
│       ├── data/           # Models, ApiService (MockAPI), Repositories
│       └── presentation/   # Cubit, Screens, Widgets
│
└── main.dart               # Entry Point
