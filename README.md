# Laravel 12 + Vue + Inertia + ShadCN Starter Kit

This starter kit provides a streamlined foundation for building modern Laravel applications with a Vue frontend using Inertia.js.

## ✨ Features

- **Laravel 12** – A powerful backend framework for modern PHP applications.
- **Vue 3** – Reactive frontend framework using the Composition API.
- **Inertia.js** – Brings single-page app (SPA) behavior to Laravel using Vue without writing an API.
- **TypeScript** – Ensures type safety and maintainable code.
- **Tailwind CSS** – Utility-first CSS framework for building modern interfaces quickly.
- **shadcn-vue** – Beautiful, accessible Vue components built on Radix and Tailwind.
- **Vite** – Lightning-fast dev server and optimized production builds.

## 🚀 Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/your-org/laravel-vue-inertia-kit.git
cd laravel-vue-inertia-kit
```

### 2. Install Dependencies
```bash
composer install
pnpm install
```

### 3. Setup Environment
```bash
cp .env.example .env
php artisan key:generate
```
Update your `.env` file as needed, then run:
```bash
php artisan config:clear
php artisan cache:clear
```

### 4. Run the Development Server
```bash
php artisan serve
pnpm dev
```

## 🧼 After Editing .env
Always run the following after editing `.env`:
```bash
php artisan config:clear
php artisan cache:clear
php artisan route:clear
php artisan view:clear
php artisan queue:restart
```

## 📁 Folder Structure Highlights
- `resources/js/Pages` – Vue pages rendered via Inertia
- `resources/js/Components` – UI components (including shadcn-vue)
- `routes/web.php` – Laravel routes

## ✅ Ready for Production?
Compile assets with:
```bash
pnpm build
```

---
Built for teams who want the simplicity of Laravel with the power of Vue and modern component libraries.

Happy coding! 🎉
