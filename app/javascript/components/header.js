import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#header-typed-text', {
    strings: ["Growth Strategy", "Product Strategy"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
