// script.js

// Scroll reveal animations (basic fade-in effect)
document.addEventListener('DOMContentLoaded', () => {
  const sections = document.querySelectorAll('section');

  const revealSection = (entry, observer) => {
    if (entry.isIntersecting) {
      entry.target.classList.add('visible');
      observer.unobserve(entry.target);
    }
  };

  const options = {
    threshold: 0.15
  };

  const observer = new IntersectionObserver((entries, obs) => {
    entries.forEach(entry => revealSection(entry, obs));
  }, options);

  sections.forEach(section => {
    section.classList.add('hidden');
    observer.observe(section);
  });
});