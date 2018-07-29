import 'bootstrap';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { loadDynamicBannerText } from '../components/banner';
import { setStickyFooter } from '../components/footer';

let names = [];
let cocktailNames = document.querySelectorAll('.cocktail-card a');
cocktailNames.forEach((item) => { names.push(item.innerText); });

initUpdateNavbarOnScroll();

loadDynamicBannerText(names);

setStickyFooter();
