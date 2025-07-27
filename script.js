// Toggle hamburger menu visibility
function toggleMenu() {
  const nav = document.getElementById("navLinks");
  const isOpen = nav.classList.contains("active");

  nav.classList.toggle("active");

  // Optionally change hamburger icon to "X"
  const hamburger = document.querySelector(".hamburger");
  if (isOpen) {
    hamburger.textContent = "☰";
  } else {
    hamburger.textContent = "✖";
  }
}

// Optional: Animate reveal elements on scroll
function revealOnScroll() {
  const reveals = document.querySelectorAll(".reveal");
  for (const el of reveals) {
    const windowHeight = window.innerHeight;
    const elementTop = el.getBoundingClientRect().top;
    const visibleThreshold = 100;

    if (elementTop < windowHeight - visibleThreshold) {
      el.classList.add("active");
    }
  }
}

window.addEventListener("scroll", revealOnScroll);