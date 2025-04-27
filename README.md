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
















![Screenshot from 2025-04-27 11-03-48](https://github.com/user-attachments/assets/1f16a7c5-b378-4226-bf3a-5e564a5ab827)


![Screenshot from 2025-04-27 11-05-46](https://github.com/user-attachments/assets/39d9568c-b277-4a0c-b714-94b13eb403ed)

![Screenshot from 2025-04-27 14-02-20](https://github.com/user-attachments/assets/f0fe5d82-77e0-490b-99c3-a140cc93618e)

![Screenshot from 2025-04-27 14-02-20](https://github.com/user-attachments/assets/65029b8b-c3d8-494d-9b2e-89b282471e64)


