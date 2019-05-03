import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#header-typed-text', {
    strings: ["Growth Strategy", "Product Strategy", "Growth Strategy"],
    typeSpeed: 120,
    loop: true
  });
}

export { loadDynamicBannerText };
