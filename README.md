# 🚀 Rails Dockerized App

This is a simple **Ruby on Rails** application configured to run with **PostgreSQL** using **Docker and Docker Compose**. Inspired by the `tushartuteja/rails-docker-compose-example` repository, this setup runs the app and database in separate containers for easier development and deployment.

---

## 🧱 Tech Stack

- **Ruby** 3.2
- **Rails** ~> 7.1
- **PostgreSQL** 14
- **Docker** & **Docker Compose**

---

## 📁 Project Structure




. ├── Dockerfile ├── docker-compose.yml ├── entrypoint.sh ├── Gemfile ├── Gemfile.lock ├── .dockerignore ├── config/ │ └── database.yml (modified for ENV) ├── app/ (Rails app code) └── ...



---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/yourusername/your-rails-docker-app.git
cd your-rails-docker-app


docker-compose build

docker-compose run web rails new . --force --no-deps --database=postgresql


default: &default
  adapter: postgresql
  encoding: unicode
  host: <%= ENV['DATABASE_HOST'] %>
  username: <%= ENV['DATABASE_USERNAME'] %>
  password: <%= ENV['DATABASE_PASSWORD'] %>
  pool: 5

development:
  <<: *default
  database: <%= ENV['DATABASE_NAME'] %>


docker-compose up
