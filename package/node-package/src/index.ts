import express from "express";

const app = express();
const PORT = 8000;

// app.get("/", async function (req, res) {
//   res.send("Greeting from 5minslearn");
// });
app.get("/", async function (req, res) {
  res.send("Node JS KU JADI MWEHEHE");
});

app.listen(PORT, async function () {
  console.log(`App runnint on ${PORT}`);
});