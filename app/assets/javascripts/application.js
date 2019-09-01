//= require rails-ujs
//= require activestorage
//= require jquery3
//= require jquery_ujs
//= require_tree .


$('.gallery').masonry({
    itemSelector: '.gallery-item',
    columnWidth: '.grid-sizer',
    gutter: 20
});
