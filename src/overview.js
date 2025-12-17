import { Logout } from "./auth.js";

document.getElementsByClassName("signout")[0].addEventListener("click", async (event) => {
    event.preventDefault();
    await Logout();
  });