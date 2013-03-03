$(document).ready(function() {
  $('#slider').nivoSlider({
    effect: 'sliceDownRight',
    pauseTime: 5000
  });

  $('#nav-wrapper').waypoint('sticky');
});
