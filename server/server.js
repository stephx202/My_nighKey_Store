import express from "express";
import pg from "pg";
import dotenv from "dotenv";

dotenv.config({ path: "../.env" });

const { PORT, DATABASE_URL } = process.env;

const pool = new pg.Pool({
  connectionString: DATABASE_URL,
});

await pool.connect();

const app = express();

app.use(express.json());

// app.get("/api/tasks", (req, res) => {
//   pool.query("SELECT * FROM tasks").then((result) => {
//     res.send(result.rows);
//   });
// });

app.get('/api/shoe', (req, res) => {
  pool.query('SELECT * FROM shoeData')
  .then((result) => { res.status(200).json(result.rows); })
  .catch((err) => { res.status(404).send(err); })
})
app.get('/api/shoe/:id', (req, res) => {
  let id = req.params.id;

  pool.query('SELECT * FROM shoeData WHERE id = $1', [id])
  .then((result) => { res.status(200).json(result.rows); })
  .catch((err) => { res.status(404).send(err); })
})

app.listen(PORT, () => {
  console.log(`Listening on port ${PORT}`);
});
