# 🔄 User Flow & Navigation Diagram - مُتَابِع

## 1. Main Navigation Flow Diagram

```mermaid
flowchart TD
    A[Splash Screen] --> B{هل المستخدم مسجل؟}
    
    B -- لا --> C[Onboarding Screen]
    C --> D[Login / Register Screen]
    D -- نجاح الدخول --> E[Main Bottom Navigation]
    
    B -- نعم --> E
    
    E --> F[شاشة الرئيسية - Home]
    E --> G[شاشة التقديمات - Applications]
    E --> H[شاشة الحساب - Profile]
    
    F -->|زر أضف تقديم| I[شاشة إضافة تقديم]
    G -->|ضغط على تقديم| J[شاشة تفاصيل التقديم]
    
    I -->|فحص التكرار| K{موجود مسبقاً؟}
    K -- نعم --> L[Bottom Sheet: تنبيه التكرار]
    K -- لا --> M[حفظ التقديم في MockAPI]
    L -->|حفظ رغم ذلك| M
    
    J --> N[تغيير الحالة / تعديل / حذف]
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
