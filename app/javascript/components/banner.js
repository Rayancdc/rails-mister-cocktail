import Typed from 'typed.js';

const loadDynamicBannerText = (strArray) => {
  if (document.getElementById('banner-typed-text')) {
    new Typed('#banner-typed-text', {
      strings: strArray,
      typeSpeed: 150,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
