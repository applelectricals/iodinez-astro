# iodineZ Website

A modern Astro website for iodineZ - Pharmaceutical Chemical Export from India.

## Tech Stack

- **Framework**: [Astro](https://astro.build) v4
- **Styling**: [Tailwind CSS](https://tailwindcss.com) v4
- **Deployment**: Docker + nginx

## Development

```bash
# Install dependencies
npm install

# Start development server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

## Deployment to Coolify

### Option 1: Docker Compose (Recommended)

1. Push this repository to GitHub/GitLab
2. In Coolify, create a new service and select "Docker Compose"
3. Connect your repository
4. Deploy!

### Option 2: Dockerfile

1. In Coolify, create a new service and select "Dockerfile"
2. Connect your repository
3. Set port to 80
4. Deploy!

### Option 3: Static Site (Nixpacks)

1. In Coolify, create a new application
2. Select "Static" as the build pack
3. Set build command: `npm run build`
4. Set publish directory: `dist`
5. Deploy!

## Project Structure

```
├── public/             # Static assets
├── src/
│   ├── components/     # Reusable Astro components
│   ├── layouts/        # Page layouts
│   ├── pages/          # Route pages
│   │   ├── products/   # Product detail pages
│   │   ├── about.astro
│   │   └── contact.astro
│   └── styles/         # Global CSS
├── astro.config.mjs    # Astro configuration
├── Dockerfile          # Docker build config
├── docker-compose.yml  # Compose config
└── nginx.conf          # Nginx server config
```

## Pages

- **Home** (`/`) - Hero, products, export process, certifications
- **Products** (`/products`) - Product listing
- **Product Details** (`/products/[slug]`) - 8 product pages
- **About** (`/about`) - Company info, services, partners
- **Contact** (`/contact`) - Contact form, FAQ

## Contact Form

The contact form uses Formspree. To enable:

1. Create a form at [formspree.io](https://formspree.io)
2. Replace `YOUR_FORM_ID` in `src/pages/contact.astro` with your form ID

Alternatively, you can integrate with any form backend or serverless function.

## License

© 2024 iodineZ. All rights reserved.
