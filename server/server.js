import express from "express";
import pg from "pg";
import dotenv from "dotenv";

dotenv.config({ path: "../.env" });

const { PORT, DATABASE_URL } = process.env;

const client = new pg.Client({
  connectionString: DATABASE_URL,
});

await client.connect();

const app = express();

app.use(express.json());

app.get("/api/shoedata", (req, res) => {
  client.query("SELECT * FROM shoedata;").then((result) => {
    res.send(result.rows[0]);
  });
});

app.get("/api/shoedata/:id", (req, res) => {
  let id = req.params.id;

  client.query("SELECT * FROM shoedata WHERE id = $1;", [id]).then((result) => {
    res.send(result.rows[0]);
  });
});

app.listen(PORT, () => {
  console.log(`Listening on port ${PORT}`);
});