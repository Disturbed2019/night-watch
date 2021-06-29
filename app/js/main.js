document.addEventListener("DOMContentLoaded",function(){
    $('.slider__tv').slick({
        slidesToShow: 6,
        slidesToScroll:6,
        prevArrow:'<button type="button" class="slick-prev"><svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">\n' +
            '<path d="M19.5713 5.00007L7.54733 17.0001L19.5713 29.0001L17.1665 33.8001L0.332947 17.0001L17.1665 0.200073L19.5713 5.00007Z" fill="white"/>\n' +
            '</svg></button>',
        nextArrow: '<button type="button" class="slick-next"><svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">\n' +
            '<path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"/>\n' +
            '</svg></button>',
        responsive: [
            {
                breakpoint: 1500,
                settings: {
                    slidesToShow: 5,
                    slidesToScroll: 5
                }

            },
            {
                breakpoint: 1200,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 4
                }
            }
        ]
    });
    $('.slider__movies').slick({
        slidesToShow: 6,
        slidesToScroll:6,
        prevArrow:'<button type="button" class="slick-prev"><svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">\n' +
            '<path d="M19.5713 5.00007L7.54733 17.0001L19.5713 29.0001L17.1665 33.8001L0.332947 17.0001L17.1665 0.200073L19.5713 5.00007Z" fill="white"/>\n' +
            '</svg></button>',
        nextArrow: '<button type="button" class="slick-next"><svg width="20" height="34" viewBox="0 0 20 34" fill="none" xmlns="http://www.w3.org/2000/svg">\n' +
            '<path d="M0.332945 29L12.3569 17L0.332945 5.00005L2.73774 0.20005L19.5713 17L2.73774 33.8L0.332945 29Z" fill="white"/>\n' +
            '</svg></button>',
        responsive: [
            {
                breakpoint: 1500,
                settings: {
                    slidesToShow: 5,
                    slidesToScroll: 5
                }

            },
            {
                breakpoint: 1200,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 4
                }
            }
        ]
    });

    const gradient = {
        1: '(109.31deg, #FD093F 2.4%, #F383F1 100%)',
        2: '(114.5deg, #0FFFDA 2.22%, #3CDB77 68.84%)',
        3: '(109.31deg, #B936FF 2.4%, #57DEDA 100%)',
        4: '(109.31deg, #FD093F 2.4%, #FB1378 2.41%, #FCCB1A 100%)',
        5: '(109.31deg, #FF6472 2.4%, #FDA75D 100%)',
        6: '(110.16deg, #13547A 2.37%, #80D0C7 96.77%)',
        7: '(109.93deg, #FFF77B 2.37%, #FFBF42 50%)',
        8: '(109.31deg, #1FA2FF 2.4%, #1FA2FF 2.41%, #1F535C 97.46%)'
    };

    const popular = document.querySelectorAll('.popular__item');
    popular.forEach(item =>{
        item.style.background = 'linear-gradient(109.31deg, #FD093F 2.4%, #F383F1 100%)';
        console.log(item.style.background)

    })



});
