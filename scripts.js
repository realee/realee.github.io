// scripts.js
document.addEventListener('DOMContentLoaded', function() {
  fetch('projects.json')
    .then(res => res.json())
    .then(projects => {
      const container = document.getElementById('projects-list');
      projects.forEach(proj => {
        const card = document.createElement('div');
        card.className = 'project-card';
        card.innerHTML = `
          <h3><a href="${proj.url}" target="_blank">${proj.name}</a></h3>
          <p>${proj.desc}</p>
        `;
        container.appendChild(card);
      });
    })
    .catch(err => {
      console.error('加载项目失败:', err);
    });
});