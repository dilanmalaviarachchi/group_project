(function ($) {
    "use strict";

    // Spinner
    var spinner = function () {
        setTimeout(function () {
            if ($('#spinner').length > 0) {
                $('#spinner').removeClass('show');
            }
        }, 1);
    };
    spinner();
    
    
    // Initiate the wowjs
    new WOW().init();


    // Fixed Navbar
    $(window).scroll(function () {
        if ($(window).width() < 992) {
            if ($(this).scrollTop() > 45) {
                $('.fixed-top').addClass('bg-white shadow');
            } else {
                $('.fixed-top').removeClass('bg-white shadow');
            }
        } else {
            if ($(this).scrollTop() > 45) {
                $('.fixed-top').addClass('bg-white shadow').css('top', -45);
            } else {
                $('.fixed-top').removeClass('bg-white shadow').css('top', 0);
            }
        }
    });

            
    // Get the navbar element
    var navbar = document.querySelector('.navbar');

    // Get the text elements inside the navbar
    var navLinks = navbar.querySelectorAll('.nav-link');

    // Function to toggle the "scrolled" class on the navbar and change text color
    function toggleNavbarColor() {
        if (window.scrollY > 0) {
            navbar.classList.add('scrolled');
            navLinks.forEach(function(link) {
                link.style.color = '#000000'; // Change to the desired color
            });
        } else {
            navbar.classList.remove('scrolled');
            navLinks.forEach(function(link) {
                link.style.color = '#ffffff'; // Change to the desired color
            });
        }
    }

