# 📋 Product Requirements Document (PRD) - مُتَابِع

## 1. Product Overview
* **Product Name:** مُتَابِع (Mutaabi3)
* **Tagline:** متنساش قدمت فين.
* **Target Audience:** Mappers, Developers, and Job Seekers.

## 2. Core Functional Requirements
1. **Authentication Module:**
   - تسجيل الدخول وإنشاء حساب بـ Email & Password.
   - حفظ الجلسة ومنع الوصول للشاشات الداخلية بدون تسجيل.

2. **Applications Management Module (CRUD):**
   - **Fields:** Company Name, Job Title, Platform, Applied Date, Status, Job URL, Notes.
   - **Statuses:** تم التقديم | قيد المراجعة | مقابلة | عرض | مرفوض | منسحب.

3. **Smart Duplicate Checker:**
   - فحص اسم الشركة والمسمى الوظيفي محلياً وإظهار Bottom Sheet تحذيري في حالة وجود مطابقة.

4. **Search & Filter:**
   - البحث بالاسم/المسمى الوظيفي + فلترة سريعة بالـ Status Chips.

## 3. Design & UI/UX Guidelines
* **Language & RTL:** لغة عربية 100% باتجاه RTL وخط Cairo.
* **Color Palette:**
  - Primary Navy: `#172B4D`
  - Secondary Slate: `#526777`
  - Accent Teal: `#2A9D8F`
  - Background: `#F7F9FC`
  - Surface: `#FFFFFF`