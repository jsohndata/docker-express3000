import express from "express";
import cors from "cors";

const app = express();
app.use(express.json());
app.use(cors());

app.get("/", (req,res) => {
  res.send("🐳 Docker is up!");
})

app.listen(3000, () => {
  console.log("listening on http://localhost:3000");
})
