# Docker Database Collection

A collection of ready-to-use Docker Compose configurations for popular databases. Simply download and run with `docker compose up -d` to get your database environment up and running in seconds.

## 🚀 Quick Start

1. **Download/Clone the repository**
   ```bash
   git clone https://github.com/husejinbg/dockerdb.git
   cd dockerdb
   ```

2. **Choose your database and start it**
   ```bash
   # Navigate to the database folder you want to use
   cd mysql        # or postgresql, or oracle
   
   # Start the database
   docker compose up -d
   ```

3. **Connect to your database**

## 📊 Available Databases

### MySQL 8
- **Location**: `mysql/`
- **Command**: `docker compose up -d`
- **Connection Details**:
  - Host: `localhost`
  - Port: `3307`
  - Database: `mydatabase`
  - JDBC URL: `jdbc:mysql://localhost:3307/mydatabase`
  - Username: `myuser`
  - Password: `userpassword`
  - Root Password: `rootpassword`

### PostgreSQL 17
- **Location**: `postgresql/`
- **Command**: `docker compose up -d`
- **Connection Details**:
  - Host: `localhost`
  - Port: `5433`
  - Database: `mydatabase`
  - JDBC URL: `jdbc:postgresql://localhost:5433/mydatabase`
  - Username: `myuser`
  - Password: `userpassword`

### Oracle Database Free
- **Location**: `oracle/`
- **Command**: `docker compose up -d`
- **Connection Details**:
  - Host: `localhost`
  - Port: `1521`
  - Service Name: `FREEPDB1`
  - JDBC URL: `jdbc:oracle:thin:@//localhost:1521/FREEPDB1`
  - Username: `myuser`
  - Password: `userpassword`
  - Admin Password (SYS/SYSTEM): `adminpassword`

## 🔧 Usage Examples

### Starting a Database
```bash
# Start MySQL
cd mysql && docker compose up -d

# Start PostgreSQL
cd postgresql && docker compose up -d

# Start Oracle
cd oracle && docker compose up -d
```

### Stopping a Database
```bash
docker compose down
```

### Removing Data (Clean Restart)
```bash
docker compose down -v  # This will remove all data volumes
```

### Port Customization
The default ports are set to avoid conflicts:
- MySQL: `3307` (instead of default 3306)
- PostgreSQL: `5433` (instead of default 5432)
- Oracle: `1521` (default)

## 🗃️ Data Persistence

All databases are configured with Docker volumes for data persistence:
- `mysql_data` - MySQL data
- `postgres_data` - PostgreSQL data
- `oracle_data` - Oracle data

Your data will persist between container restarts unless you explicitly remove the volumes.

## 📋 Prerequisites

- Docker installed on your system
- Docker Compose (usually included with Docker Desktop)

### Reset everything:
```bash
docker compose down -v
docker compose up -d
```

## 🤝 Contributing

Feel free to submit issues and enhancement requests!