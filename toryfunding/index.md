---
layout: default
title: "Who funds the Conservative party"
---
  <div class="container">
      <header class="d-flex justify-content-center py-3">
        <ul class="nav nav-pills">
          <li class="nav-item"><a href="#" class="nav-link active" aria-current="page">Home</a></li>
          <li class="nav-item"><a href="about" class="nav-link">About</a></li>
        </ul>
      </header>
    </div>

<div class="px-4 py-5 my-5 text-center">
    <h1 class="display-5 fw-bold">Who funds the Conservative party?</h1>
    <div class="col-lg-6 mx-auto">
      <p class="lead mb-4">
      The Conservative Party has accepted more than £27 million in donations since the 2019 elections, according to the Electoral Commission. Find out how much each industry has donated and what companies are making the donations.
      </p>
      <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
<!-- 
        <button type="button" class="btn btn-primary btn-lg px-4 gap-3">Primary button</button>
        <button type="button" class="btn btn-outline-secondary btn-lg px-4">Secondary</button>
-->
      </div>
    </div>
  </div>
<div class="container" id="">
<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4 py-5">

    {% for section in site.data.sections %}
      {% if section.SicSection.size > 0%}
      <div class="col d-flex align-items-start">
        <i style="font-size:1.75em;" class="flex-shrink-0 me-3 bi-{{site.data.icons[section.slug]}}"></i>
        <div>
          <h3 class="fw-bold mb-0 fs-6"><a href="{{section.SicSection | datapage_url: 'section'}}">{{section.SicSection | truncate: 80}}</a></h3>
          <p>Donated {{section.Value | monetary}}</p>
        </div>
      </div>
      {% endif %}
    {% endfor %}
</div>

