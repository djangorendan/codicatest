$('.owl-carousel').owlCarousel({
  loop: false,
  margin: 30,
  nav: false,
  dots: false,
  responsive: {
    0:{
      items:2
    },
    1000:{
      items:3
    },
    1200:{
      items:4
    }
  }
})

var width = $(".card-img-top").width();
$(".card-img-top").height(width*1.5);
