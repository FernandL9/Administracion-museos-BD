import pg from "pg";
const { Pool } = pg;
const pool = new Pool({
    host: "localhost",
    port: "5432",
    database: "postgres", // Replace with your database name
    user: "postgres", // Replace with your database user
    password: "base12345",  // Replace with your database password
});
export default pool