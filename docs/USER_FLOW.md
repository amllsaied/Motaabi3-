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

