(function () {
  'use strict';

  var ROOT = document.documentElement;
  var HEADER = document.getElementById('site-header');
  var HERO = document.querySelector('.hero');
  var HERO_VISUAL = document.querySelector('.hero-visual');

  // ——— Scroll-driven: update CSS variable and header state ———
  function onScroll() {
    var y = window.scrollY || window.pageYOffset;
    ROOT.style.setProperty('--scrollY', y);
    if (HEADER) HEADER.classList.toggle('is-scrolled', y > 40);
  }

  // ——— Parallax hero visual (wrapper moves; cards keep CSS animation) ———
  function parallaxHero() {
    if (!HERO || !HERO_VISUAL) return;
    var rect = HERO.getBoundingClientRect();
    var centerY = rect.top + rect.height / 2;
    var viewportCenter = window.innerHeight / 2;
    var offset = (centerY - viewportCenter) * 0.06;
    HERO_VISUAL.style.transform = 'translate3d(0, ' + offset + 'px, 0)';
  }

  // ——— Intersection Observer: reveal on scroll ———
  var revealOpts = { root: null, rootMargin: '0px 0px -8% 0px', threshold: 0 };
  var observer = new IntersectionObserver(function (entries) {
    entries.forEach(function (entry) {
      if (!entry.isIntersecting) return;
      entry.target.classList.add('is-in');
      var stagger = entry.target.querySelectorAll('[data-stagger-children]');
      stagger.forEach(function (parent) {
        var children = parent.querySelectorAll('.stat, .tag, [data-reveal-item], .story-tile');
        children.forEach(function (el, i) {
          el.style.setProperty('--stagger-delay', (i * 60) + 'ms');
          el.style.setProperty('--item-delay', (i * 80) + 'ms');
        });
      });
      if (entry.target.classList.contains('story-tile')) {
        var scroll = entry.target.closest('.stories-scroll');
        if (scroll) {
          var tiles = scroll.querySelectorAll('.story-tile');
          var idx = Array.prototype.indexOf.call(tiles, entry.target);
          entry.target.style.setProperty('--item-delay', (idx * 70) + 'ms');
        }
      }
    });
  }, revealOpts);

  function observeReveals() {
    document.querySelectorAll('[data-reveal], [data-section]').forEach(function (el) {
      observer.observe(el);
    });
    document.querySelectorAll('.story-tile [data-reveal-item], .stories-scroll .story-tile').forEach(function (el) {
      observer.observe(el);
    });
  }

  // ——— Hero load: stagger in ———
  function initHero() {
    document.body.classList.add('is-ready');
  }

  // ——— Hero mouse parallax (Framer-style; pointer devices only) ———
  function initHeroParallax() {
    if (!HERO_VISUAL || !window.matchMedia('(hover: hover) and (pointer: fine)').matches) return;
    var hero = HERO;
    hero.addEventListener('mousemove', function (e) {
      var r = hero.getBoundingClientRect();
      var x = (e.clientX - r.left) / r.width - 0.5;
      var y = (e.clientY - r.top) / r.height - 0.5;
      HERO_VISUAL.style.setProperty('--px', x.toFixed(3));
      HERO_VISUAL.style.setProperty('--py', y.toFixed(3));
    });
    hero.addEventListener('mouseleave', function () {
      HERO_VISUAL.style.removeProperty('--px');
      HERO_VISUAL.style.removeProperty('--py');
    });
  }

  // ——— Marquee (horizontal strip) ———
  function initMarquee() {
    var track = document.querySelector('.marquee-track');
    if (!track) return;
    var wrap = track.querySelector('.marquee-inner');
    if (!wrap || !wrap.cloneNode) return;
    var clone = wrap.cloneNode(true);
    clone.setAttribute('aria-hidden', 'true');
    track.appendChild(clone);
  }

  // ——— Init ———
  window.addEventListener('scroll', function () {
    onScroll();
    parallaxHero();
  }, { passive: true });
  window.addEventListener('resize', parallaxHero);
  onScroll();
  parallaxHero();
  observeReveals();
  initMarquee();
  initHeroParallax();

  requestAnimationFrame(function () {
    setTimeout(initHero, 80);
  });
})();
