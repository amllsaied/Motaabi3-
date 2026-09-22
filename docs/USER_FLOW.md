# 🔄 User Flow & Navigation Diagram - مُتَابِع

## 1. Main Navigation Flow Diagram
```text
[ Splash Screen ] 
       │
       ▼
[ Is Authenticated? ]
   ├── No ──► [ Onboarding Screen ] ──► [ Login / Register Screen ]
   │                                                 │ (Success)
   │                                                 ▼
   └── Yes ──────────────────────────────────► [ Main Bottom Nav ]
                                                     │
        ┌────────────────────────────────────────────┼────────────────────────────────────────────┐
        ▼                                            ▼                                            ▼
 [ Home Screen ]                            [ Applications Screen ]                       [ Profile Screen ]
  ├─ Stats Dashboard                         ├─ Search Bar & Filter Chips                  ├─ User Info
  ├─ Recent Applications                     ├─ Applications List                          └─ Logout Button
  └─ Floating Add Button                     └─ Application Card Click
        │                                            │
        ▼                                            ▼
 [ Add Application Form ]                  [ Application Details Screen ]
  ├─ Company, Job Title, Platform, Date     ├─ Status Timeline & Details
  ├─ Duplicate Alert Check ──(Triggered)──►  ├─ Change Status Bottom Sheet
  └─ Save Action ──► [MockAPI Post]          └─ Edit / Delete Dialog