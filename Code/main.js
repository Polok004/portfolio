window.addEventListener("load", function () {
    var typed = new Typed(".text", {
        strings: ["Student", "Programmer", "Web Developer"],
        typeSpeed: 100,
        backSpeed: 100,
        backDelay: 1000,
        loop: true
    });
    const faders = document.querySelectorAll('.about-img');

    const appearOptions = {
        threshold: 0.2, 
        rootMargin: "0px 0px -100px 0px"
    };
    
    const appearOnScroll = new IntersectionObserver(function(entries, appearOnScroll) {
        entries.forEach(entry => {
            if (!entry.isIntersecting) {
                return;
            } else {
                entry.target.classList.add("appear");
                appearOnScroll.unobserve(entry.target);
            }
        })
    }, appearOptions);
    
    faders.forEach(fader => {
        appearOnScroll.observe(fader);
    });

    const faderss = document.querySelectorAll('.about-topic');

    
    
    const appearOnScroll1 = new IntersectionObserver(function(entries, appearOnScroll1) {
        entries.forEach(entry => {
            if (!entry.isIntersecting) {
                return;
            } else {
                entry.target.classList.add("appear1");
                appearOnScroll1.unobserve(entry.target);
            }
        })
    }, appearOptions);
    
    faderss.forEach(fader => {
        appearOnScroll1.observe(fader);
    });


    const fadersss = document.querySelectorAll('.slide');

    
    
    const appearOnScroll2 = new IntersectionObserver(function(entries, appearOnScroll2) {
        entries.forEach(entry => {
            if (!entry.isIntersecting) {
                return;
            } else {
                entry.target.classList.add("appear2");
                appearOnScroll2.unobserve(entry.target);
            }
        })
    }, appearOptions);
    
    fadersss.forEach(fader => {
        appearOnScroll2.observe(fader);
    });

    
});


 let sections=document.querySelectorAll('section');
 let navLinks=document.querySelectorAll('header nav a');

 window.onscroll=() =>{
    sections.forEach(sec =>{
        let top =window.scrollY;
        let offset=sec.offsetTop-150;
        let heigth=sec.offsetHeight;
        let id=sec.getAttribute('id');

        if(top>=offset && top <offset+height){
            sec.classList.add('show-animate');
          //  sec.classList.add('appear2');
            navLinks.forEach(links =>{
                links.classList.remove('active');
                document.querySelectorAll('header nav a [href*=' +id + ']').classList.add('active');
            })
        }
        else{
            sec.classList.remove('show-animate');
           // sec.classList.remove('appear2');
        }
    })
 } 

 document.addEventListener("DOMContentLoaded", function() {

    
    const navbarLinks = document.querySelectorAll(".navbar a");

    navbarLinks.forEach(function(navbarLink) {
        navbarLink.addEventListener("click", function(event) {
            event.preventDefault(); 
            const targetId = this.getAttribute("href").substring(1); 
            const targetSection = document.getElementById(targetId); 
            targetSection.scrollIntoView({ behavior: "smooth" }); 

            
            const animatedElements = targetSection.querySelectorAll(".animate");
            animatedElements.forEach(function(element) {
                element.classList.add("show-animate"); 
            });
        });
    });

    window.addEventListener("scroll", function() {
        let sections = document.querySelectorAll('section');
        let navLinks = document.querySelectorAll('header nav a');

        sections.forEach(sec => {
            let top = window.scrollY;
            let offset = sec.offsetTop - 150;
            let height = sec.offsetHeight;
            let id = sec.getAttribute('id');

            if (top >= offset && top < offset + height) {
                sec.classList.add('show-animate');
                navLinks.forEach(link => {
                    link.classList.remove('active');
                    if (link.getAttribute('href') === '#' + id) {
                        link.classList.add('active');
                    }
                });
            } else {
                sec.classList.remove('show-animate');
            }
        });
    });
    var header = document.querySelector(".header");
   var logo = document.querySelector(".logo");
   var navbarLink = document.querySelectorAll(".navbar a");
   header.classList.toggle("sticky", window.scrollY > 0);
   logo.classList.toggle("sticky", window.scrollY > 0);
   navbarLink.forEach(function(link) {
       link.classList.toggle("sticky", window.scrollY > 0);
   });

window.addEventListener("scroll", function() {
    header.classList.toggle("sticky", window.scrollY > 0);
    logo.classList.toggle("sticky", window.scrollY > 0);
    navbarLinks.forEach(function(link) {
        link.classList.toggle("sticky", window.scrollY > 0);
    });
});




});

const goTopBtn = document.querySelector('.gotop');

window.addEventListener('scroll', checkHeight);

function checkHeight() {
    if (window.scrollY > 200) {
        goTopBtn.style.display = "flex";
    } else {
        goTopBtn.style.display = "none";
    }
}

goTopBtn.addEventListener('click', () => {
    window.scrollTo({
        top: 0,
        behavior: "smooth"
    });
});


function myFunction() {
    var x = document.getElementById("mynavbar");
    var ul = x.querySelector("ul");
    ul.classList.toggle("show");
    x.classList.toggle("responsive");
}


$(".home").ripples({
    resolution:350,
    perturbance:0.005,
});

function toggleGridView(event) {
    event.preventDefault(); 

   
    if (event.target.id !== "paperLink") {
        return;
    }

   
    var gridViewContainer = document.getElementById("gridviewContainer");
    if (gridViewContainer.style.display === "none") {
        gridViewContainer.style.display = "block";
    } else {
        gridViewContainer.style.display = "none";
    }
}

