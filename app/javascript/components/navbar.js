const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-wagon');
  const banner = document.querySelector('.banner');
  if (!banner) {
    navbar.classList.add('navbar-wagon-white');
  }
  window.addEventListener('scroll', () => {
    if (window.scrollY >= (window.innerHeight)*0.7) {
      navbar.classList.add('navbar-wagon-white');
    } else {
      if (banner) {
        navbar.classList.remove('navbar-wagon-white');
      }
    }
  });
}

export { initUpdateNavbarOnScroll };
