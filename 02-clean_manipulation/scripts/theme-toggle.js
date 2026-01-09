window.addEventListener('load', function() {
  // Créer le bouton
  const button = document.createElement('button');
  button.innerHTML = '🌓';
  button.id = 'theme-toggle';
  button.setAttribute('aria-label', 'Toggle theme');
  button.style.cssText = `
    position: fixed;
    top: 10px;
    right: 10px;
    z-index: 1000;
    padding: 8px 12px;
    border-radius: 4px;
    border: 1px solid;
    background: transparent;
    cursor: pointer;
    font-size: 1.2em;
  `;
  
  document.body.appendChild(button);
  
  // Fonction de toggle
  button.addEventListener('click', function() {
    const currentTheme = document.documentElement.getAttribute('data-theme');
    const newTheme = currentTheme === 'dark' ? 'light' : 'dark';
    document.documentElement.setAttribute('data-theme', newTheme);
    localStorage.setItem('reveal-theme', newTheme);
  });
  
  // Charger le thème sauvegardé
  const savedTheme = localStorage.getItem('reveal-theme') || 'light';
  document.documentElement.setAttribute('data-theme', savedTheme);
});