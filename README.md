🔧 Features Implemented

Implemented authentication flow including:

Login

Sign Up

Email Verification

Logout

Built the Home feature to display:

Categories

Products

Created a Drawer that displays the user’s information

🌐 Endpoints Used

POST /auth/login – for user login

POST /auth/register – for user registration

POST /auth/verify-email – for email verification

POST /auth/logout – for logging out the user

GET /categories – to fetch all categories

## 🧱 State Management & Architecture
- Used **Bloc/Cubit** for state management.  
- The project is organized into **three main layers**:
  - **UI Layer:** Contains all screens and widgets responsible for the app’s interface.  
  - **Logic Layer:** Includes all Cubits that handle the app’s state and logic.  
  - **Data Layer:** Contains Repositories and API Services for handling data and network requests.  
- Implemented **dependency injection** using `get_it` for better scalability and clean structure.

## 📱 App Screenshots

**Login Screen**  
![Login Screen](assets/screenshots/login.png)

**Sign Up Screen**  
![Sign Up Screen](assets/screenshots/signup.png)

**Email Verification Screen**  
![Email Verification Screen](assets/screenshots/verify_email.png)

**Home Screen**  
![Home Screen](assets/screenshots/home.png)

**Drawer Screen**  
![Drawer Screen](assets/screenshots/drawer.png)

**Logout Screen**  
![Logout Screen](assets/screenshots/logout.png)

GET /products – to fetch all products

GET /user/profile – to fetch user data for the drawer
