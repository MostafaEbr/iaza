# The ADDRESS INVESTMENT - Simple e-commerce App.

## Overview
This is a sleek e-commerce app built using Flutter, allowing users to browse products, view details, add items to the cart, place orders, and edit products efficiently. The app features local cart management, product pagination, and a smooth checkout experience.
## Features
- 🛍 Product Browsing – Users can explore a list of products.
- 🔍 Product Details – View detailed information about each product.
- 🛒 Cart Management – Add/remove items from the cart using Hive or Isar.
- 📦 Checkout Process – Place orders seamlessly.
- ✏ Edit Products – Update product details without reloading the entire page.
- 📱 Cross-Platform – Runs smoothly on Android and iOS.

## Tech Stack
- Framework: Flutter
- State Management: BloC (Business Logic Component)
- Local Storage: Hive (for cart management)
- Networking: HTTP package for API calls
- Navigation: go_router
- API Source: FakeAPI (Postman)


## Installation

### Prerequisites
- Flutter (Version 3.27.1)
- Dart SDK

### Steps
1. Clone the repository:
   ```sh
   git clone https://github.com/MostafaEbr/iaza.git
   cd iaza/app
   ```
2. Install dependencies:
   ```sh
   flutter clean
   flutter pub get
   ```

3. Generate code for Freezed & Retrofit:
   ```sh
   flutter pub run build_runner build --delete-conflicting-outputs
   ```
   
4. Run the project:
   ```sh
   flutter run
   flutter run --no-sound-null-safety
   ```

## Deployment
To build and deploy the Flutter app:
1. Build the project:
   ```sh
   flutter build apk
   flutter build ios 
   ```
