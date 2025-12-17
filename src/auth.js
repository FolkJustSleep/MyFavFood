import { loginData } from "../data/model.js";
import Cookies from "https://cdn.jsdelivr.net/npm/js-cookie@3.0.5/dist/js.cookie.mjs";

export const baseurl = "http://localhost:1818";

export const Login = async () => {
  console.log("Login function called");
  const email = document.getElementById("email").value;
  const password = document.getElementById("password").value;
  if (!email || !password) {
    alert("Please enter both email and password.");
    return;
  }

  loginData.email = email;
  loginData.password = password;

  try {
    const response = await fetch(`${baseurl}/api/auth/login`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(loginData),
    });

    if (response.ok) {
      const data = await response.json();
      console.log("Login successful:", data);
      Cookies.set("token", data.data);
      // Redirect to overview page on successful login
      window.location.href = "/overview";
    } else {
      const errorData = await response.json();
      alert("Login failed: " + errorData.message);
    }
  } catch (error) {
    alert("An error occurred: " + error.message);
  }
};

export const Logout = async() => {
  // Clear login data
  loginData.email = "";
  loginData.password = "";
  try {
    const response = await fetch(`${baseurl}/api/auth/logout`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      credentials: 'include',
    });

    if (response.ok) {
      alert("Logged out successfully.");
      window.location.href = "/";
    } else {
      const errorData = await response.json();
      alert("Logout failed: " + errorData.message);
    }
  } catch (error) {
    alert("An error occurred: " + error.message);
  }
  // Redirect to login page

}
