const setStickyFooter = () => {
  const footer = document.querySelector('.footer');

    if (window.innerHeight > document.body.offsetHeight) {
      footer.classList.add('sticky-footer');
    } else {
      footer.classList.remove('sticky-footer');
    }
}

export { setStickyFooter };
