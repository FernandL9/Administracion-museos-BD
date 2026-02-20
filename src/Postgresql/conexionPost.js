import pg from "pg";
const { Pool } = pg;
const pool = new Pool({
    host: "localhost",
    port: "5432",
    database: "BD FINAL GRUPO 7A",
    user: "postgres",
    password: "base12345",
});
export default pool