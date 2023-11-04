const express = require("express");
const APP_NAME = "auth";

// Initialize app
const app = express();

// Health check
app.get("/api/auth", (_, res) => res.status(200).send("OK!!!"));

app.listen(3000, () => {
    console.log(`${APP_NAME.toUpperCase()} is running`);
});
