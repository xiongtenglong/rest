$(window).load(function () {
    var content = $('.slider-content'),
        containerHeight = $('.slider-container').height(),
        contentHeight = $('.slider-content').height(),
        maxHeight = contentHeight - containerHeight,
        itemHeight = $('.slider-thumb').height();

    

    $('.slider-control').click(function () {
        var direction = $(this).data('direction'),
            topPos = Math.round(content.position().top),
            scrollDist;

        if (direction === 'down') {
            scrollDist = topPos - itemHeight;
            $('.slider-up').fadeIn(200);
            if (scrollDist < -maxHeight) {
                scrollDist = -maxHeight;
                $('.slider-down').fadeOut(200);
            }
        } else {
            if (topPos === 0 || Math.abs(topPos) < itemHeight) {
                scrollDist = 0;
                $('.slider-up').fadeOut(200);
            } else {
                $('.slider-down').fadeIn(200);
                scrollDist = topPos + itemHeight;
            }
        }

        content.animate({
            top: scrollDist
        }, 300, 'easeInOutBack');

    });
});