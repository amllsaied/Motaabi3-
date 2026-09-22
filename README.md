# 📱 تطبيق مُتَابِع (Mutaabi3) - Personal Job Application Tracker

تطبيق موبايل إنتاجي متكامل باللغة العربية لمتابعة وتنظيم تقديمات الوظائف والتدريبات.

> **"متنساش قدمت فين"**

---

## 🌟 المميزات الرئيسية (Key Features)

- 🔐 **مصادقة آمنة:** إنشاء حساب وتسجيل دخول موثوق باستخدام Firebase Authentication.
- 📝 **إدارة التقديمات (CRUD):** إضافة، عرض، تعديل، وحذف التقديمات وربطها أونلاين بـ REST API.
- 🔍 **تصفية وبحث ذكي:** بحث سريع باسم الشركة أو الوظيفة مع فلترة حسب حالة التقديم (`تم التقديم` | `مقابلة` | `عرض` | `مرفوض`).
- ⚠️ **كشف التكرار (Duplicate Alert):** تنبيه ذكي عند محاولة تقديم نفس الوظيفة لشركة مسجلة مسبقاً.
- 🎨 **واجهة عربية أصيلة (100% RTL):** تصميم عصري باستخدام خط Cairo وباليتة ألوان قياسية احترافية.

---

## 🛠️ التقنيات المستخدمة (Tech Stack)

* **Framework:** Flutter
* **Architecture:** Clean / Layered Architecture
* **State Management:** BLoC / Cubit
* **Network & API:** Dio Client & MockAPI.io
* **Authentication:** Firebase Auth

---

## 📚 التوثيق الهندسي الشامل (Documentation)

يمكنك الاطلاع على وثائق المشروع التفصيلية داخل مجلد `docs/`:

* 📄 [Business Requirements Document (BRD)](docs/BRD.md)
* 📋 [Product Requirements Document (PRD)](docs/PRD.md)
* 🔄 [User Flow & Diagrams](docs/USER_FLOW.md)
* 🏗️ [Technical Architecture Specification](docs/ARCHITECTURE.md)

---

## 🚀 كيفية التشغيل (Run Locally)

1. قم بعمل Clone للمشروع:
   ```bash
   git clone [https://github.com/amllsaied/Motaabi3-.git](https://github.com/amllsaied/Motaabi3-.git)