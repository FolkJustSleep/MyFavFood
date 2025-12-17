import { Login } from "./auth.js";

document.getElementById("loginForm").addEventListener("submit", async (event) => {
    event.preventDefault();
    await Login();
  });
