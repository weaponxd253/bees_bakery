# Bee's Bakery App

Bee's Bakery is a Flutter application designed for a bakery shop. It allows users to browse through different deals, categories, and items, add items to their cart, and proceed to checkout. The app also includes user authentication features such as sign in, sign up, and password reset.

## Features

- **Sign In and Sign Up**: Users can create an account or sign in to their existing account.
- **Forgot Password**: Users can reset their password if they forget it.
- **Browse Items**: Users can browse through deals, categories, and individual items.
- **Add to Cart**: Users can add items to their cart.
- **Checkout**: Users can proceed to checkout and place their order.
- **Order Confirmation**: Users receive an order confirmation after placing their order.

## Screens

1. **Sign In Screen**
2. **Sign Up Screen**
3. **Forgot Password Screen**
4. **Home Screen**: Displays deals, categories, and browse sections.
5. **Cart Screen**: Displays items added to the cart.
6. **Checkout Screen**: Collects shipping address and payment details.
7. **Order Confirmation Screen**: Displays order confirmation details.

   

## Installation

1. **Clone the repository:**

    ```sh
    git clone https://github.com/yourusername/bees_bakery.git
    ```

2. **Navigate to the project directory:**

    ```sh
    cd bees_bakery
    ```

3. **Install the dependencies:**

    ```sh
    flutter pub get
    ```

4. **Run the app:**

    ```sh
    flutter run
    ```
    

## Project Structure

```plaintext
lib/
├── main.dart
├── models/
│   └── item.dart
├── pages/
│   ├── browse_detail_page.dart
│   ├── cart_page.dart
│   ├── category_detail_page.dart
│   ├── checkout_page.dart
│   ├── confirmation_page.dart
│   ├── deal_detail_page.dart
│   ├── forgot_password_page.dart
│   ├── home_page.dart
│   ├── sign_in_page.dart
│   └── sign_up_page.dart
└── providers/
    ├── cart_provider.dart
    └── item_provider.dart
```

## Dependencies
provider: ^6.0.0
cupertino_icons: ^1.0.6
Ensure these dependencies are added in your pubspec.yaml file.

## Usage

**Sign In**
- Navigate to the sign-in screen on app start.
- Enter email and password to sign in.

  
**Sign Up**
- Navigate to the sign-up screen from the sign-in screen.
- Enter email, password, and confirm the password to create a new account.

  
**Forgot Password**
- Navigate to the forgot password screen from the sign-in screen.
- Enter email to receive a password reset link.

  
**Browse and Add to Cart**
-Browse through deals, categories, and individual items.
-Add items to the cart from the home screen.


**Checkout and Order Confirmation**
- Proceed to checkout from the cart screen.
- Enter shipping address and payment details.
- Receive order confirmation after placing the order.
  
## License
This project is licensed under the MIT License.

## Author
This project was developed by Xavier Denson.
