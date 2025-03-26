# CareerK

## 📂 Project Structure

```bash
lib/
│── core/                  # Core functionalities shared across the app
│   ├── DI/                # Dependency Injection setup
│   ├── Networking/        # API and network calls
│   ├── Routing/           # Navigation and route management
│   ├── Helpers/           # Utility functions and helpers
│   ├── Theming/           # Theme and UI styling
│   ├── Widgets/           # Reusable widgets
│
│── features/              # Feature-based modules
│   ├── onboarding/        # Onboarding screens
│   ├── authentication/    # User authentication flows
│   │   ├── login/         # Login screen
│   │   ├── reset_password/ # Reset password screen
│   │   ├── verify_code/   # Code verification screen
│   │   ├── change_password/ # Change password functionality
│   │
│   ├── Developer/         # Developer-specific features
│   │   ├── signup/        # Developer signup process
│   │   │   ├── compulsory_data/
│   │   │   ├── fill_your_profile/
│   │   │   ├── enter_location/
│   │   │   ├── bio_and_skills/
│   │   │   ├── optional_data/
│   │   │   ├── courses_interested_selection/
│   │   ├── signup_completed/  # Signup completion screens
│   │   │   ├── my_cv_is_done/
│   │   │   ├── cv_downloaded_successfully/
│   │   │   ├── ready_to_go/
│   │   ├── home/           # Developer's home features
│   │   │   ├── main_page/
│   │   │   ├── notification/
│   │   │   ├── community/
│   │   │   │   ├── all_communities/
│   │   │   │   ├── community_chat/
│   │   ├── jobs/           # Job-related functionalities
│   │   │   ├── main_page/
│   │   │   ├── services_for_you/
│   │   │   ├── service_details/
│   │   │   ├── related_jobs/
│   │   │   ├── job_details/
│   │   │   ├── job_apply/
│   │   ├── profile/        # Profile settings for developers
│   │   │   ├── settings/
│   │   │   ├── edit_profile/
│   │   │   ├── notification/
│   │   │   ├── saved_jobs/
│   │   │   ├── payment/
│   │   │   │   ├── payment_option/
│   │   │   │   ├── add_new_card/
│   │   │   ├── job_applied/
│   │   ├── courses/        # Developer courses section
│   │   │   ├── main_page/
│   │   │   ├── roadmaps/
│   │   │   ├── course/
│   │   │   ├── categories/
│   │   │   ├── my_courses/
│   │   │   ├── certification/
│   │   │   ├── cv_updated/
│   │   │   │   ├── download_cv/
│   │   │   │   ├── success_update/
│   │
│   ├── Company/            # Company-related features
│   │   ├── signup/
│   │   │   ├── compulsory_data/
│   │   │   ├── fill_your_profile/
│   │   │   ├── company_location/
│   │   │   ├── contact_information/
│   │   ├── home/
│   │   │   ├── main_page/
│   │   │   ├── see_resume/
│   │   │   ├── see_details/
│   │   │   ├── notifications/
│   │   ├── search/
│   │   ├── post_a_job/
│   │   │   ├── post_a_job_1/
│   │   │   ├── post_a_job_2/
│   │   ├── job_details/
│   │   ├── jobs/
│   │   ├── chats/
│   │   │   ├── all_chats/
│   │   │   ├── client_chat/
│   │   ├── send_to_applicants/
│   │   ├── profile/
│   │
│   ├── Customer/           # Customer-specific features
│   │   ├── signup/
│   │   │   ├── compulsory_data/
│   │   │   ├── fill_your_profile/
│   │   │   ├── contact_information/
│
