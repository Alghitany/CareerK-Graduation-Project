# 💼 CareerK

**CareerK** is a Flutter-based mobile application that connects **Developers**, **Companies**, and **Customers** in a professional ecosystem. It offers job listings, freelance gigs, and course opportunities — all in one platform.

## 📱 Features

- 👨‍💻 Developer sign-up with profile building, job browsing, and course tracking
- 🏢 Company-side job posting, applicant management, and direct communication
- 👤 Customer access to services and expert hiring
- 💬 Real-time community chat with Socket.io
- 🎓 Course enrollment, certification tracking, and CV generation
- 🌐 Role-based navigation and dynamic UI

## 📂 Project Structure

```bash
lib/
├── core/
│   ├── DI/
│   ├── Networking/
│   ├── Routing/
│   ├── Helpers/
│   ├── Theming/
│   ├── Widgets/
├── features/
│   ├── authentication/
│   │   ├── change_password/
│   │   ├── login/
│   │   ├── onboarding/
│   │   ├── reset_password/
│   │   ├── successful_change_password/
│   │   ├── verify_code/
│   │   ├── widgets/
│   ├── chat_bot/
│   ├── chats/
│   │   ├── all_chats/
│   │   ├── contact_list/
│   │   ├── person_chat/
│   ├── Company/
│   │   ├── home/
│   │   │   ├── main_page/
│   │   │   ├── see_details/
│   │   │   ├── see_resume/
│   │   │   ├── send_offer/
│   │   │   ├── widgets/
│   │   ├── jobs/
│   │   ├── jobs_post/
│   │   │   ├── first/
│   │   │   ├── second/
│   │   │   ├── success/
│   │   ├── profile/
│   │   ├── sign up/
│   │   │   ├── compulsory_data/
│   │   │   ├── contact_information/
│   │   │   ├── enter_location/
│   │   │   ├── fill_profile/
│   │   │   ├── widgets/
│   │   ├── widgets/
│   ├── Customer/
│   │   ├── applied/
│   │   │   ├── first/
│   │   │   ├── second/
│   │   ├── home/
│   │   ├── jobs_post/
│   │   ├── profile/
│   │   ├── sign up/
│   │   │   ├── compulsory_data/
│   │   │   ├── fill_profile/
│   ├── Developer/
│   │   ├── community/
│   │   │   ├── all_communities/
│   │   │   ├── chat/
│   │   ├── courses/
│   │   │   ├── cv_updated/
│   │   │   │   ├── download_cv/
│   │   │   │   ├── successful_update/
│   │   │   ├── main_page/
│   │   │   ├── my_courses/
│   │   │   ├── related_courses/
│   │   │   ├── roadmaps/
│   │   │   ├── specific_category/
│   │   │   ├── specific_course/
│   │   ├── home_main_page/
│   │   ├── jobs/
│   │   │   ├── all_categories/
│   │   │   ├── application_submitted/
│   │   │   ├── apply/
│   │   │   ├── main_page/
│   │   │   ├── search/
│   │   │   ├── service_details/
│   │   ├── profile/
│   │   │   ├── bookmarks/
│   │   │   ├── cv_generate/
│   │   │   │   ├── cv_generated_view/
│   │   │   │   ├── send_data/
│   │   │   ├── edit_profile/
│   │   │   ├── job_applied/
│   │   │   ├── logout/
│   │   │   ├── main_page/
│   │   │   ├── my_cv/
│   │   │   ├── settings/
│   │   │   ├── widgets/
│   │   ├── sign up/
│   │   │   ├── bio_and_skills/
│   │   │   ├── compulsory_data/
│   │   │   ├── fill_your_profile/
│   │   │   ├── enter_location/
│   │   │   ├── optional_data/
│   │   │   ├── selected_courses/
│   │   ├── sign up_completed/
│   │   │   ├── cv_is_done/
│   │   │   ├── cv_downloaded/
│   │   │   ├── ready_to_go/
│   ├── Notifications/
│   ├── Post_details/
│   │   ├── job_details/
│   ├── Search/
│   ├── Sign_up_user_type/
```
## 🧪 How to Run the App

```bash
# Clone the repository
git clone https://github.com/Alghitany/CareerK-Graduation-Project.git
cd CareerK-Graduation-Project

# Install dependencies
flutter pub get

# Run the app
flutter run
```
## Tech Stack

- Flutter (Dart)
- Firebase
- REST API
- Bloc / Cubit for state management
- Socket.IO (for real-time chat)
- Clean Architecture
